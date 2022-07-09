//
//  TMeUrlType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-d4890143
//  https://github.com/tdlib/td/tree/d4890143
//

import Foundation


/// Describes the type of a URL linking to an internal Telegram entity
public enum TMeUrlType: Codable, Equatable, Hashable {

    /// A URL linking to a user
    case user(TMeUrlTypeUser)

    /// A URL linking to a public supergroup or channel
    case supergroup(TMeUrlTypeSupergroup)

    /// A chat invite link
    case chatInvite(TMeUrlTypeChatInvite)

    /// A URL linking to a sticker set
    case stickerSet(TMeUrlTypeStickerSet)


    private enum Kind: String, Codable {
        case tMeUrlTypeUser
        case tMeUrlTypeSupergroup
        case tMeUrlTypeChatInvite
        case tMeUrlTypeStickerSet
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tMeUrlTypeUser:
            let value = try TMeUrlTypeUser(from: decoder)
            self = .user(value)
        case .tMeUrlTypeSupergroup:
            let value = try TMeUrlTypeSupergroup(from: decoder)
            self = .supergroup(value)
        case .tMeUrlTypeChatInvite:
            let value = try TMeUrlTypeChatInvite(from: decoder)
            self = .chatInvite(value)
        case .tMeUrlTypeStickerSet:
            let value = try TMeUrlTypeStickerSet(from: decoder)
            self = .stickerSet(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .user(let value):
            try container.encode(Kind.tMeUrlTypeUser, forKey: .type)
            try value.encode(to: encoder)
        case .supergroup(let value):
            try container.encode(Kind.tMeUrlTypeSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .chatInvite(let value):
            try container.encode(Kind.tMeUrlTypeChatInvite, forKey: .type)
            try value.encode(to: encoder)
        case .stickerSet(let value):
            try container.encode(Kind.tMeUrlTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A URL linking to a user
public struct TMeUrlTypeUser: Codable, Equatable, Hashable {

    /// Identifier of the user
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// A URL linking to a public supergroup or channel
public struct TMeUrlTypeSupergroup: Codable, Equatable, Hashable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64


    public init(supergroupId: Int64) {
        self.supergroupId = supergroupId
    }
}

/// A chat invite link
public struct TMeUrlTypeChatInvite: Codable, Equatable, Hashable {

    /// Information about the chat invite link
    public let info: ChatInviteLinkInfo


    public init(info: ChatInviteLinkInfo) {
        self.info = info
    }
}

/// A URL linking to a sticker set
public struct TMeUrlTypeStickerSet: Codable, Equatable, Hashable {

    /// Identifier of the sticker set
    public let stickerSetId: TdInt64


    public init(stickerSetId: TdInt64) {
        self.stickerSetId = stickerSetId
    }
}

