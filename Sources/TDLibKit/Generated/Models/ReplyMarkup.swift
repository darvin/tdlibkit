//
//  ReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
public enum ReplyMarkup: Codable, Equatable, Hashable {

    /// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent
    case removeKeyboard(ReplyMarkupRemoveKeyboard)

    /// Instructs application to force a reply to this message
    case forceReply(ReplyMarkupForceReply)

    /// Contains a custom keyboard layout to quickly reply to bots
    case showKeyboard(ReplyMarkupShowKeyboard)

    /// Contains an inline keyboard layout
    case inlineKeyboard(ReplyMarkupInlineKeyboard)


    private enum Kind: String, Codable {
        case replyMarkupRemoveKeyboard
        case replyMarkupForceReply
        case replyMarkupShowKeyboard
        case replyMarkupInlineKeyboard
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .replyMarkupRemoveKeyboard:
            let value = try ReplyMarkupRemoveKeyboard(from: decoder)
            self = .removeKeyboard(value)
        case .replyMarkupForceReply:
            let value = try ReplyMarkupForceReply(from: decoder)
            self = .forceReply(value)
        case .replyMarkupShowKeyboard:
            let value = try ReplyMarkupShowKeyboard(from: decoder)
            self = .showKeyboard(value)
        case .replyMarkupInlineKeyboard:
            let value = try ReplyMarkupInlineKeyboard(from: decoder)
            self = .inlineKeyboard(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .removeKeyboard(let value):
            try container.encode(Kind.replyMarkupRemoveKeyboard, forKey: .type)
            try value.encode(to: encoder)
        case .forceReply(let value):
            try container.encode(Kind.replyMarkupForceReply, forKey: .type)
            try value.encode(to: encoder)
        case .showKeyboard(let value):
            try container.encode(Kind.replyMarkupShowKeyboard, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboard(let value):
            try container.encode(Kind.replyMarkupInlineKeyboard, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent
public struct ReplyMarkupRemoveKeyboard: Codable, Equatable, Hashable {

    /// True, if the keyboard is removed only for the mentioned users or the target user of a reply
    public let isPersonal: Bool


    public init(isPersonal: Bool) {
        self.isPersonal = isPersonal
    }
}

/// Instructs application to force a reply to this message
public struct ReplyMarkupForceReply: Codable, Equatable, Hashable {

    /// If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters
    public let inputFieldPlaceholder: String

    /// True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
    public let isPersonal: Bool


    public init(
        inputFieldPlaceholder: String,
        isPersonal: Bool
    ) {
        self.inputFieldPlaceholder = inputFieldPlaceholder
        self.isPersonal = isPersonal
    }
}

/// Contains a custom keyboard layout to quickly reply to bots
public struct ReplyMarkupShowKeyboard: Codable, Equatable, Hashable {

    /// If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters
    public let inputFieldPlaceholder: String

    /// True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
    public let isPersonal: Bool

    /// True, if the application needs to hide the keyboard after use
    public let oneTime: Bool

    /// True, if the application needs to resize the keyboard vertically
    public let resizeKeyboard: Bool

    /// A list of rows of bot keyboard buttons
    public let rows: [[KeyboardButton]]


    public init(
        inputFieldPlaceholder: String,
        isPersonal: Bool,
        oneTime: Bool,
        resizeKeyboard: Bool,
        rows: [[KeyboardButton]]
    ) {
        self.inputFieldPlaceholder = inputFieldPlaceholder
        self.isPersonal = isPersonal
        self.oneTime = oneTime
        self.resizeKeyboard = resizeKeyboard
        self.rows = rows
    }
}

/// Contains an inline keyboard layout
public struct ReplyMarkupInlineKeyboard: Codable, Equatable, Hashable {

    /// A list of rows of inline keyboard buttons
    public let rows: [[InlineKeyboardButton]]


    public init(rows: [[InlineKeyboardButton]]) {
        self.rows = rows
    }
}

