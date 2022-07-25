//
//  KeyboardButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Describes a keyboard button type
public enum KeyboardButtonType: Codable, Equatable, Hashable {

    /// A simple button, with text that must be sent when the button is pressed
    case text

    /// A button that sends the user's phone number when pressed; available only in private chats
    case requestPhoneNumber

    /// A button that sends the user's location when pressed; available only in private chats
    case requestLocation

    /// A button that allows the user to create and send a poll when pressed; available only in private chats
    case requestPoll(KeyboardButtonTypeRequestPoll)

    /// A button that opens a Web App by calling getWebAppUrl
    case webApp(KeyboardButtonTypeWebApp)


    private enum Kind: String, Codable {
        case keyboardButtonTypeText
        case keyboardButtonTypeRequestPhoneNumber
        case keyboardButtonTypeRequestLocation
        case keyboardButtonTypeRequestPoll
        case keyboardButtonTypeWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .keyboardButtonTypeText:
            self = .text
        case .keyboardButtonTypeRequestPhoneNumber:
            self = .requestPhoneNumber
        case .keyboardButtonTypeRequestLocation:
            self = .requestLocation
        case .keyboardButtonTypeRequestPoll:
            let value = try KeyboardButtonTypeRequestPoll(from: decoder)
            self = .requestPoll(value)
        case .keyboardButtonTypeWebApp:
            let value = try KeyboardButtonTypeWebApp(from: decoder)
            self = .webApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .text:
            try container.encode(Kind.keyboardButtonTypeText, forKey: .type)
        case .requestPhoneNumber:
            try container.encode(Kind.keyboardButtonTypeRequestPhoneNumber, forKey: .type)
        case .requestLocation:
            try container.encode(Kind.keyboardButtonTypeRequestLocation, forKey: .type)
        case .requestPoll(let value):
            try container.encode(Kind.keyboardButtonTypeRequestPoll, forKey: .type)
            try value.encode(to: encoder)
        case .webApp(let value):
            try container.encode(Kind.keyboardButtonTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A button that allows the user to create and send a poll when pressed; available only in private chats
public struct KeyboardButtonTypeRequestPoll: Codable, Equatable, Hashable {

    /// If true, only polls in quiz mode must be allowed to create
    public let forceQuiz: Bool

    /// If true, only regular polls must be allowed to create
    public let forceRegular: Bool


    public init(
        forceQuiz: Bool,
        forceRegular: Bool
    ) {
        self.forceQuiz = forceQuiz
        self.forceRegular = forceRegular
    }
}

/// A button that opens a Web App by calling getWebAppUrl
public struct KeyboardButtonTypeWebApp: Codable, Equatable, Hashable {

    /// An HTTP URL to pass to getWebAppUrl
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

