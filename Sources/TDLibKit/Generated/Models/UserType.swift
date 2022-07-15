//
//  UserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Represents the type of a user. The following types are possible: regular users, deleted users and bots
public enum UserType: Codable, Equatable, Hashable {

    /// A regular user
    case regular

    /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
    case deleted

    /// A bot (see https://core.telegram.org/bots)
    case bot(UserTypeBot)

    /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
    case unknown


    private enum Kind: String, Codable {
        case userTypeRegular
        case userTypeDeleted
        case userTypeBot
        case userTypeUnknown
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userTypeRegular:
            self = .regular
        case .userTypeDeleted:
            self = .deleted
        case .userTypeBot:
            let value = try UserTypeBot(from: decoder)
            self = .bot(value)
        case .userTypeUnknown:
            self = .unknown
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .regular:
            try container.encode(Kind.userTypeRegular, forKey: .type)
        case .deleted:
            try container.encode(Kind.userTypeDeleted, forKey: .type)
        case .bot(let value):
            try container.encode(Kind.userTypeBot, forKey: .type)
            try value.encode(to: encoder)
        case .unknown:
            try container.encode(Kind.userTypeUnknown, forKey: .type)
        }
    }
}

/// A bot (see https://core.telegram.org/bots)
public struct UserTypeBot: Codable, Equatable, Hashable {

    /// True, if the bot can be added to attachment menu
    public let canBeAddedToAttachmentMenu: Bool

    /// True, if the bot can be invited to basic group and supergroup chats
    public let canJoinGroups: Bool

    /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
    public let canReadAllGroupMessages: Bool

    /// Placeholder for inline queries (displayed on the application input field)
    public let inlineQueryPlaceholder: String

    /// True, if the bot supports inline queries
    public let isInline: Bool

    /// True, if the location of the user is expected to be sent with every inline query to this bot
    public let needLocation: Bool


    public init(
        canBeAddedToAttachmentMenu: Bool,
        canJoinGroups: Bool,
        canReadAllGroupMessages: Bool,
        inlineQueryPlaceholder: String,
        isInline: Bool,
        needLocation: Bool
    ) {
        self.canBeAddedToAttachmentMenu = canBeAddedToAttachmentMenu
        self.canJoinGroups = canJoinGroups
        self.canReadAllGroupMessages = canReadAllGroupMessages
        self.inlineQueryPlaceholder = inlineQueryPlaceholder
        self.isInline = isInline
        self.needLocation = needLocation
    }
}

