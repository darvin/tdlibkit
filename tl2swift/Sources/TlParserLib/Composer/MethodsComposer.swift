//
//  File.swift
//  
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation


final class MethodsComposer: Composer {
    
    // MARK: - Private properties
    
    private let classInfoes: [ClassInfo]
    
    // MARK: - Init
    
    init(classInfoes: [ClassInfo]) {
        self.classInfoes = classInfoes
    }
    
    
    // MARK: - Override
    
    override func composeUtilitySourceCode() throws -> String {
        let methods = composeMethods(classInfoes: classInfoes)
        let executeFunc = composeExecuteFunc()
        
        return ""
            .addLine("public final class TdApi {")
            .addLine("public let client: TdClient".indent())
            .addBlankLine()
            .addLine("public static var encoder: JSONEncoder {".indent())
            .addLine("    let encoder = JSONEncoder()".indent())
            .addLine("    encoder.keyEncodingStrategy = .convertToSnakeCase".indent())
            .addLine("    return encoder".indent())
            .addLine("}".indent())
            .addBlankLine()
            .addLine("public static var decoder: JSONDecoder {".indent())
            .addLine("    let decoder = JSONDecoder()".indent())
            .addLine("    decoder.keyDecodingStrategy = .convertFromSnakeCase".indent())
            .addLine("    return decoder".indent())
            .addLine("}".indent())
            .addBlankLine()
            .addLine("public init(client: TdClient) {".indent())
            .addLine("self.client = client".indent(tabCount: 2))
            .addLine("}".indent())
            .addBlankLine()
            .addBlankLine()
            .append(methods.indent())
            .addBlankLine()
            .append(executeFunc.indent())
            .addLine("}")
    }
    
    
    // MARK: - Private methods
    
    private func composeMethods(classInfoes: [ClassInfo]) -> String {
        var result = ""
        for info in classInfoes where info.isFunction {
            result = result.append(composeMethod(info))
            if info.description.contains("Can be called synchronously") {
                result = result.append(composeMethod(info, async: false))
            }
        }
        return result
    }
    
    private func composeMethod(_ info: ClassInfo, async: Bool = true) -> String {
        var paramsList = [String]()
        for param in info.properties {
            let type = TypesHelper.getType(param.type, optional: param.optional)
            let paramName = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
            paramsList.append("\(paramName): \(type),")
        }
        if !paramsList.isEmpty {
            paramsList[paramsList.count - 1] = String(paramsList[paramsList.count - 1].dropLast())
        }
        
        var result = composeComment(info)
        if info.rootName == "Ok" {
            result = result
                .addLine("@discardableResult")
        }
        if paramsList.count > 1 {
            let params = paramsList.reduce("", { $0.addLine("\($1)".indent()) })
            result = result
                .addLine("public func \(info.name)(")
                .append(params)
            result = result.addLine(")\(async ? " async" : "") throws -> \(info.rootName) {")
        } else {
            result = result.addLine("public func \(info.name)(\(paramsList.first ?? ""))\(async ? " async" : "") throws -> \(info.rootName) {")
        }
        
        let impl = composeMethodImpl(info, async: async)
        result = result
            .append(impl.indent())
            .addLine("}")
            .addBlankLine()
        
        return result
    }
    
    private func composeComment(_ info: ClassInfo) -> String {
        var result = ""
        var returns: String? = nil
        var amountToStrip = 0
        var suffixLength = 0
        
        var splitStrings = info.description.split(separator: ".")
        for (index, string) in splitStrings.enumerated() {
            if string.hasPrefix(" Returns ") { // Spaces are needed
                suffixLength = 9
            } else if string.hasPrefix("Returns ") {
                suffixLength = 8
            } else {
                continue
            }
            
            var temp = string.suffix(string.count - suffixLength)
            temp = temp.prefix(1).uppercased() + temp.dropFirst()
            returns = String(temp)
            amountToStrip = temp.count
            
            if splitStrings.count - 1 > index {
                splitStrings.removeFirst(index + 1)
                for string in splitStrings {
                    returns = (returns ?? "") + "." + string
                    amountToStrip += string.count + 1
                }
                break
            }
        }
        
        if returns != nil {
            // The prefix is to remove the return info from the description
            let prefixAmount = info.description.count - (amountToStrip + suffixLength)
            if prefixAmount <= 0 {
                result = "/// No description.\n"
            } else {
                result = "/// \(info.description.prefix(prefixAmount))\n"
            }
        } else {
            result = "/// \(info.description)\n"
        }
        
        for param in info.properties {
            let paramName = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
            result = result.addLine("/// - Parameter \(paramName): \(param.description ?? "")")
        }
        if let returns = returns {
            result = result.addLine("/// - Returns: \(returns)")
        }
        
        return result
    }
    
    private func composeMethodImpl(_ info: ClassInfo, async: Bool = true) -> String  {
        let structName = info.name.capitalizedFirstLetter
        var result = ""
        if info.properties.isEmpty {
            result = result.addLine("let query = \(structName)()")
        } else {
            result = result.addLine("let query = \(structName)(")
            for param in info.properties {
                let paramName = param.name.underscoreToCamelCase()
                let paramValue = TypesHelper.maskSwiftKeyword(param.name.underscoreToCamelCase())
                result = result.addLine("\(paramName): \(paramValue),".indent())
            }
            result = String(result.dropLast().dropLast())
            result = result.addBlankLine().addLine(")")
        }
        return result.addLine("return try\(async ? " await" : "") execute(query: query)")
    }
    
    private func composeExecuteFunc() -> String {
        return ""
            .addLine("private func execute<Query: Codable, Return: Codable>(query: Query) async throws -> Return {")
            .addLine("    let dto = DTO(query, encoder: TdApi.encoder)")
            .addLine("    return try await withCheckedThrowingContinuation { continuation in")
            .addLine("        do {")
            .addLine("            try client.send(query: dto) { result in")
            .addLine("                if let error = try? TdApi.decoder.decode(DTO<Error>.self, from: result) {")
            .addLine("                    continuation.resume(with: .failure(error.payload))")
            .addLine("                } else {")
            .addLine("                    let response = TdApi.decoder.tryDecode(DTO<Return>.self, from: result)")
            .addLine("                    continuation.resume(with: response.map { $0.payload })")
            .addLine("                }")
            .addLine("            }")
            .addLine("        } catch {")
            .addLine("            continuation.resume(with: .failure(error))")
            .addLine("        }")
            .addLine("    }")
            .addLine("}")
            .addBlankLine()
            .addLine("private func execute<Query: Codable, Return: Codable>(query: Query) throws -> Return {")
            .addLine("    let dto = DTO(query, encoder: TdApi.encoder)")
            .addLine("    let result = try JSONSerialization.data(withJSONObject: try self.client.execute(query: dto), options: .prettyPrinted)")
            .addLine("    if let error = try? TdApi.decoder.decode(DTO<Error>.self, from: result) {")
            .addLine("        throw error.payload")
            .addLine("    } else {")
            .addLine("        let response = try TdApi.decoder.decode(DTO<Return>.self, from: result)")
            .addLine("        return response.payload")
            .addLine("    }")
            .addLine("}")
    }
}
