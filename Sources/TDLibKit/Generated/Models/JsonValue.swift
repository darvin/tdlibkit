//
//  JsonValue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-d4890143
//  https://github.com/tdlib/td/tree/d4890143
//

import Foundation


/// Represents a JSON value
public enum JsonValue: Codable, Equatable, Hashable {

    /// Represents a null JSON value
    case null

    /// Represents a boolean JSON value
    case boolean(JsonValueBoolean)

    /// Represents a numeric JSON value
    case number(JsonValueNumber)

    /// Represents a string JSON value
    case string(JsonValueString)

    /// Represents a JSON array
    case array(JsonValueArray)

    /// Represents a JSON object
    case object(JsonValueObject)


    private enum Kind: String, Codable {
        case jsonValueNull
        case jsonValueBoolean
        case jsonValueNumber
        case jsonValueString
        case jsonValueArray
        case jsonValueObject
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .jsonValueNull:
            self = .null
        case .jsonValueBoolean:
            let value = try JsonValueBoolean(from: decoder)
            self = .boolean(value)
        case .jsonValueNumber:
            let value = try JsonValueNumber(from: decoder)
            self = .number(value)
        case .jsonValueString:
            let value = try JsonValueString(from: decoder)
            self = .string(value)
        case .jsonValueArray:
            let value = try JsonValueArray(from: decoder)
            self = .array(value)
        case .jsonValueObject:
            let value = try JsonValueObject(from: decoder)
            self = .object(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .null:
            try container.encode(Kind.jsonValueNull, forKey: .type)
        case .boolean(let value):
            try container.encode(Kind.jsonValueBoolean, forKey: .type)
            try value.encode(to: encoder)
        case .number(let value):
            try container.encode(Kind.jsonValueNumber, forKey: .type)
            try value.encode(to: encoder)
        case .string(let value):
            try container.encode(Kind.jsonValueString, forKey: .type)
            try value.encode(to: encoder)
        case .array(let value):
            try container.encode(Kind.jsonValueArray, forKey: .type)
            try value.encode(to: encoder)
        case .object(let value):
            try container.encode(Kind.jsonValueObject, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Represents a boolean JSON value
public struct JsonValueBoolean: Codable, Equatable, Hashable {

    /// The value
    public let value: Bool


    public init(value: Bool) {
        self.value = value
    }
}

/// Represents a numeric JSON value
public struct JsonValueNumber: Codable, Equatable, Hashable {

    /// The value
    public let value: Double


    public init(value: Double) {
        self.value = value
    }
}

/// Represents a string JSON value
public struct JsonValueString: Codable, Equatable, Hashable {

    /// The value
    public let value: String


    public init(value: String) {
        self.value = value
    }
}

/// Represents a JSON array
public struct JsonValueArray: Codable, Equatable, Hashable {

    /// The list of array elements
    public let values: [JsonValue]


    public init(values: [JsonValue]) {
        self.values = values
    }
}

/// Represents a JSON object
public struct JsonValueObject: Codable, Equatable, Hashable {

    /// The list of object members
    public let members: [JsonObjectMember]


    public init(members: [JsonObjectMember]) {
        self.members = members
    }
}

