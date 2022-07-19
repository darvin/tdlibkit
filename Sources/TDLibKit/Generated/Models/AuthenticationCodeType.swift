//
//  AuthenticationCodeType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Provides information about the method by which an authentication code is delivered to the user
public enum AuthenticationCodeType: Codable, Equatable, Hashable {

    /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
    case telegramMessage(AuthenticationCodeTypeTelegramMessage)

    /// An authentication code is delivered via an SMS message to the specified phone number
    case sms(AuthenticationCodeTypeSms)

    /// An authentication code is delivered via a phone call to the specified phone number
    case call(AuthenticationCodeTypeCall)

    /// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically
    case flashCall(AuthenticationCodeTypeFlashCall)

    /// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user
    case missedCall(AuthenticationCodeTypeMissedCall)


    private enum Kind: String, Codable {
        case authenticationCodeTypeTelegramMessage
        case authenticationCodeTypeSms
        case authenticationCodeTypeCall
        case authenticationCodeTypeFlashCall
        case authenticationCodeTypeMissedCall
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .authenticationCodeTypeTelegramMessage:
            let value = try AuthenticationCodeTypeTelegramMessage(from: decoder)
            self = .telegramMessage(value)
        case .authenticationCodeTypeSms:
            let value = try AuthenticationCodeTypeSms(from: decoder)
            self = .sms(value)
        case .authenticationCodeTypeCall:
            let value = try AuthenticationCodeTypeCall(from: decoder)
            self = .call(value)
        case .authenticationCodeTypeFlashCall:
            let value = try AuthenticationCodeTypeFlashCall(from: decoder)
            self = .flashCall(value)
        case .authenticationCodeTypeMissedCall:
            let value = try AuthenticationCodeTypeMissedCall(from: decoder)
            self = .missedCall(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .telegramMessage(let value):
            try container.encode(Kind.authenticationCodeTypeTelegramMessage, forKey: .type)
            try value.encode(to: encoder)
        case .sms(let value):
            try container.encode(Kind.authenticationCodeTypeSms, forKey: .type)
            try value.encode(to: encoder)
        case .call(let value):
            try container.encode(Kind.authenticationCodeTypeCall, forKey: .type)
            try value.encode(to: encoder)
        case .flashCall(let value):
            try container.encode(Kind.authenticationCodeTypeFlashCall, forKey: .type)
            try value.encode(to: encoder)
        case .missedCall(let value):
            try container.encode(Kind.authenticationCodeTypeMissedCall, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
public struct AuthenticationCodeTypeTelegramMessage: Codable, Equatable, Hashable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered via an SMS message to the specified phone number
public struct AuthenticationCodeTypeSms: Codable, Equatable, Hashable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered via a phone call to the specified phone number
public struct AuthenticationCodeTypeCall: Codable, Equatable, Hashable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically
public struct AuthenticationCodeTypeFlashCall: Codable, Equatable, Hashable {

    /// Pattern of the phone number from which the call will be made
    public let pattern: String


    public init(pattern: String) {
        self.pattern = pattern
    }
}

/// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user
public struct AuthenticationCodeTypeMissedCall: Codable, Equatable, Hashable {

    /// Number of digits in the code, excluding the prefix
    public let length: Int

    /// Prefix of the phone number from which the call will be made
    public let phoneNumberPrefix: String


    public init(
        length: Int,
        phoneNumberPrefix: String
    ) {
        self.length = length
        self.phoneNumberPrefix = phoneNumberPrefix
    }
}

