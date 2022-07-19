//
//  ChatMembersFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Specifies the kind of chat members to return in searchChatMembers
public enum ChatMembersFilter: Codable, Equatable, Hashable {

    /// Returns contacts of the user
    case contacts

    /// Returns the owner and administrators
    case administrators

    /// Returns all chat members, including restricted chat members
    case members

    /// Returns users which can be mentioned in the chat
    case mention(ChatMembersFilterMention)

    /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
    case restricted

    /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
    case banned

    /// Returns bot members of the chat
    case bots


    private enum Kind: String, Codable {
        case chatMembersFilterContacts
        case chatMembersFilterAdministrators
        case chatMembersFilterMembers
        case chatMembersFilterMention
        case chatMembersFilterRestricted
        case chatMembersFilterBanned
        case chatMembersFilterBots
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatMembersFilterContacts:
            self = .contacts
        case .chatMembersFilterAdministrators:
            self = .administrators
        case .chatMembersFilterMembers:
            self = .members
        case .chatMembersFilterMention:
            let value = try ChatMembersFilterMention(from: decoder)
            self = .mention(value)
        case .chatMembersFilterRestricted:
            self = .restricted
        case .chatMembersFilterBanned:
            self = .banned
        case .chatMembersFilterBots:
            self = .bots
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .contacts:
            try container.encode(Kind.chatMembersFilterContacts, forKey: .type)
        case .administrators:
            try container.encode(Kind.chatMembersFilterAdministrators, forKey: .type)
        case .members:
            try container.encode(Kind.chatMembersFilterMembers, forKey: .type)
        case .mention(let value):
            try container.encode(Kind.chatMembersFilterMention, forKey: .type)
            try value.encode(to: encoder)
        case .restricted:
            try container.encode(Kind.chatMembersFilterRestricted, forKey: .type)
        case .banned:
            try container.encode(Kind.chatMembersFilterBanned, forKey: .type)
        case .bots:
            try container.encode(Kind.chatMembersFilterBots, forKey: .type)
        }
    }
}

/// Returns users which can be mentioned in the chat
public struct ChatMembersFilterMention: Codable, Equatable, Hashable {

    /// If non-zero, the identifier of the current message thread
    public let messageThreadId: Int64


    public init(messageThreadId: Int64) {
        self.messageThreadId = messageThreadId
    }
}

