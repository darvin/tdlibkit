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
        }
        return result
    }
    
    private func composeMethod(_ info: ClassInfo) -> String {
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
        if paramsList.count > 1 {
            let params = paramsList.reduce("", { $0.addLine("\($1)".indent()) })
            result = result
                .addLine("public func \(info.name)(")
                .append(params)
            result = result.addLine(") async throws -> \(info.rootName) {")
        } else {
            result = result.addLine("public func \(info.name)(\(paramsList.first ?? "")) async throws -> \(info.rootName) {")
        }
        
        let impl = composeMethodImpl(info)
        result = result
            .append(impl.indent())
            .addLine("}")
            .addBlankLine()
        
        return result
    }
    
    private func composeComment(_ info: ClassInfo) -> String {
        var result = ""
        var returns: String? = nil
        
        let splitStrings = info.description.split(separator: ".")
        for string in splitStrings {
            if string.hasPrefix(" Returns ") { // Spaces are needed
                var temp = string.suffix(string.count - 9)
                temp = temp.prefix(1).uppercased() + temp.dropFirst()
                returns = String(temp)
            }
        }
        
        if let returns = returns {
            // The prefix is to remove the return info from the description
            result = "/// \(info.description.prefix(info.description.count - (returns.count + 9)))\n"
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
    
    private func composeMethodImpl(_ info: ClassInfo) -> String  {
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

        return result.addLine("return try await execute(query: query)")
    }
    
    private func composeExecuteFunc() -> String {
        return ""
            .addLine("private func execute<Q, R>(query: Q) async throws -> R where Q: Codable, R: Codable {")
            .addLine("    let dto = DTO(query, encoder: TdApi.encoder)")
            .addLine("    return try await withCheckedThrowingContinuation { continuation in")
            .addLine("        try! client.send(query: dto) { result in")
            .addLine("            if let error = try? TdApi.decoder.decode(DTO<Error>.self, from: result) {")
            .addLine("                continuation.resume(with: .failure(error.payload))")
            .addLine("            } else {")
            .addLine("                let response = TdApi.decoder.tryDecode(DTO<R>.self, from: result)")
            .addLine("                continuation.resume(with: response.map { $0.payload })")
            .addLine("            }")
            .addLine("        }")
            .addLine("    }")
            .addLine("}")
    }
}
