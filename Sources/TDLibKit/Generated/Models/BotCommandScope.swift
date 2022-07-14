//
//  BotCommandScope.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Represents the scope to which bot commands are relevant
public enum BotCommandScope: Codable, Equatable, Hashable {

    /// A scope covering all users
    case `default`

    /// A scope covering all private chats
    case allPrivateChats

    /// A scope covering all group and supergroup chats
    case allGroupChats

    /// A scope covering all group and supergroup chat administrators
    case allChatAdministrators

    /// A scope covering all members of a chat
    case chat(BotCommandScopeChat)

    /// A scope covering all administrators of a chat
    case chatAdministrators(BotCommandScopeChatAdministrators)

    /// A scope covering a member of a chat
    case chatMember(BotCommandScopeChatMember)


    private enum Kind: String, Codable {
        case botCommandScopeDefault
        case botCommandScopeAllPrivateChats
        case botCommandScopeAllGroupChats
        case botCommandScopeAllChatAdministrators
        case botCommandScopeChat
        case botCommandScopeChatAdministrators
        case botCommandScopeChatMember
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .botCommandScopeDefault:
            self = .`default`
        case .botCommandScopeAllPrivateChats:
            self = .allPrivateChats
        case .botCommandScopeAllGroupChats:
            self = .allGroupChats
        case .botCommandScopeAllChatAdministrators:
            self = .allChatAdministrators
        case .botCommandScopeChat:
            let value = try BotCommandScopeChat(from: decoder)
            self = .chat(value)
        case .botCommandScopeChatAdministrators:
            let value = try BotCommandScopeChatAdministrators(from: decoder)
            self = .chatAdministrators(value)
        case .botCommandScopeChatMember:
            let value = try BotCommandScopeChatMember(from: decoder)
            self = .chatMember(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .`default`:
            try container.encode(Kind.botCommandScopeDefault, forKey: .type)
        case .allPrivateChats:
            try container.encode(Kind.botCommandScopeAllPrivateChats, forKey: .type)
        case .allGroupChats:
            try container.encode(Kind.botCommandScopeAllGroupChats, forKey: .type)
        case .allChatAdministrators:
            try container.encode(Kind.botCommandScopeAllChatAdministrators, forKey: .type)
        case .chat(let value):
            try container.encode(Kind.botCommandScopeChat, forKey: .type)
            try value.encode(to: encoder)
        case .chatAdministrators(let value):
            try container.encode(Kind.botCommandScopeChatAdministrators, forKey: .type)
            try value.encode(to: encoder)
        case .chatMember(let value):
            try container.encode(Kind.botCommandScopeChatMember, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A scope covering all members of a chat
public struct BotCommandScopeChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// A scope covering all administrators of a chat
public struct BotCommandScopeChatAdministrators: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// A scope covering a member of a chat
public struct BotCommandScopeChatMember: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier
    public let userId: Int64


    public init(
        chatId: Int64,
        userId: Int64
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

