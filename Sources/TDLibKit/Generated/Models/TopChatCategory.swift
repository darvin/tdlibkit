//
//  TopChatCategory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Represents the categories of chats for which a list of frequently used chats can be retrieved
public enum TopChatCategory: Codable, Equatable, Hashable {

    /// A category containing frequently used private chats with non-bot users
    case users

    /// A category containing frequently used private chats with bot users
    case bots

    /// A category containing frequently used basic groups and supergroups
    case groups

    /// A category containing frequently used channels
    case channels

    /// A category containing frequently used chats with inline bots sorted by their usage in inline mode
    case inlineBots

    /// A category containing frequently used chats used for calls
    case calls

    /// A category containing frequently used chats used to forward messages
    case forwardChats


    private enum Kind: String, Codable {
        case topChatCategoryUsers
        case topChatCategoryBots
        case topChatCategoryGroups
        case topChatCategoryChannels
        case topChatCategoryInlineBots
        case topChatCategoryCalls
        case topChatCategoryForwardChats
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .topChatCategoryUsers:
            self = .users
        case .topChatCategoryBots:
            self = .bots
        case .topChatCategoryGroups:
            self = .groups
        case .topChatCategoryChannels:
            self = .channels
        case .topChatCategoryInlineBots:
            self = .inlineBots
        case .topChatCategoryCalls:
            self = .calls
        case .topChatCategoryForwardChats:
            self = .forwardChats
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .users:
            try container.encode(Kind.topChatCategoryUsers, forKey: .type)
        case .bots:
            try container.encode(Kind.topChatCategoryBots, forKey: .type)
        case .groups:
            try container.encode(Kind.topChatCategoryGroups, forKey: .type)
        case .channels:
            try container.encode(Kind.topChatCategoryChannels, forKey: .type)
        case .inlineBots:
            try container.encode(Kind.topChatCategoryInlineBots, forKey: .type)
        case .calls:
            try container.encode(Kind.topChatCategoryCalls, forKey: .type)
        case .forwardChats:
            try container.encode(Kind.topChatCategoryForwardChats, forKey: .type)
        }
    }
}

