//
//  InlineKeyboardButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Describes the type of an inline keyboard button
public enum InlineKeyboardButtonType: Codable, Equatable, Hashable {

    /// A button that opens a specified URL
    case url(InlineKeyboardButtonTypeUrl)

    /// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo
    case loginUrl(InlineKeyboardButtonTypeLoginUrl)

    /// A button that opens a Web App by calling openWebApp
    case webApp(InlineKeyboardButtonTypeWebApp)

    /// A button that sends a callback query to a bot
    case callback(InlineKeyboardButtonTypeCallback)

    /// A button that asks for password of the current user and then sends a callback query to a bot
    case callbackWithPassword(InlineKeyboardButtonTypeCallbackWithPassword)

    /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
    case callbackGame

    /// A button that forces an inline query to the bot to be inserted in the input field
    case switchInline(InlineKeyboardButtonTypeSwitchInline)

    /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
    case buy

    /// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities
    case user(InlineKeyboardButtonTypeUser)


    private enum Kind: String, Codable {
        case inlineKeyboardButtonTypeUrl
        case inlineKeyboardButtonTypeLoginUrl
        case inlineKeyboardButtonTypeWebApp
        case inlineKeyboardButtonTypeCallback
        case inlineKeyboardButtonTypeCallbackWithPassword
        case inlineKeyboardButtonTypeCallbackGame
        case inlineKeyboardButtonTypeSwitchInline
        case inlineKeyboardButtonTypeBuy
        case inlineKeyboardButtonTypeUser
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inlineKeyboardButtonTypeUrl:
            let value = try InlineKeyboardButtonTypeUrl(from: decoder)
            self = .url(value)
        case .inlineKeyboardButtonTypeLoginUrl:
            let value = try InlineKeyboardButtonTypeLoginUrl(from: decoder)
            self = .loginUrl(value)
        case .inlineKeyboardButtonTypeWebApp:
            let value = try InlineKeyboardButtonTypeWebApp(from: decoder)
            self = .webApp(value)
        case .inlineKeyboardButtonTypeCallback:
            let value = try InlineKeyboardButtonTypeCallback(from: decoder)
            self = .callback(value)
        case .inlineKeyboardButtonTypeCallbackWithPassword:
            let value = try InlineKeyboardButtonTypeCallbackWithPassword(from: decoder)
            self = .callbackWithPassword(value)
        case .inlineKeyboardButtonTypeCallbackGame:
            self = .callbackGame
        case .inlineKeyboardButtonTypeSwitchInline:
            let value = try InlineKeyboardButtonTypeSwitchInline(from: decoder)
            self = .switchInline(value)
        case .inlineKeyboardButtonTypeBuy:
            self = .buy
        case .inlineKeyboardButtonTypeUser:
            let value = try InlineKeyboardButtonTypeUser(from: decoder)
            self = .user(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .url(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeUrl, forKey: .type)
            try value.encode(to: encoder)
        case .loginUrl(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeLoginUrl, forKey: .type)
            try value.encode(to: encoder)
        case .webApp(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        case .callback(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeCallback, forKey: .type)
            try value.encode(to: encoder)
        case .callbackWithPassword(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeCallbackWithPassword, forKey: .type)
            try value.encode(to: encoder)
        case .callbackGame:
            try container.encode(Kind.inlineKeyboardButtonTypeCallbackGame, forKey: .type)
        case .switchInline(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeSwitchInline, forKey: .type)
            try value.encode(to: encoder)
        case .buy:
            try container.encode(Kind.inlineKeyboardButtonTypeBuy, forKey: .type)
        case .user(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeUser, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A button that opens a specified URL
public struct InlineKeyboardButtonTypeUrl: Codable, Equatable, Hashable {

    /// HTTP or tg:// URL to open
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo
public struct InlineKeyboardButtonTypeLoginUrl: Codable, Equatable, Hashable {

    /// If non-empty, new text of the button in forwarded messages
    public let forwardText: String

    /// Unique button identifier
    public let id: Int64

    /// An HTTP URL to pass to getLoginUrlInfo
    public let url: String


    public init(
        forwardText: String,
        id: Int64,
        url: String
    ) {
        self.forwardText = forwardText
        self.id = id
        self.url = url
    }
}

/// A button that opens a Web App by calling openWebApp
public struct InlineKeyboardButtonTypeWebApp: Codable, Equatable, Hashable {

    /// An HTTP URL to pass to openWebApp
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// A button that sends a callback query to a bot
public struct InlineKeyboardButtonTypeCallback: Codable, Equatable, Hashable {

    /// Data to be sent to the bot via a callback query
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

/// A button that asks for password of the current user and then sends a callback query to a bot
public struct InlineKeyboardButtonTypeCallbackWithPassword: Codable, Equatable, Hashable {

    /// Data to be sent to the bot via a callback query
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

/// A button that forces an inline query to the bot to be inserted in the input field
public struct InlineKeyboardButtonTypeSwitchInline: Codable, Equatable, Hashable {

    /// True, if the inline query must be sent from the current chat
    public let inCurrentChat: Bool

    /// Inline query to be sent to the bot
    public let query: String


    public init(
        inCurrentChat: Bool,
        query: String
    ) {
        self.inCurrentChat = inCurrentChat
        self.query = query
    }
}

/// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities
public struct InlineKeyboardButtonTypeUser: Codable, Equatable, Hashable {

    /// User identifier
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

