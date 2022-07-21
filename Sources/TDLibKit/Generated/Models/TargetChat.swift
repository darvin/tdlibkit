//
//  TargetChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-4ac8be81
//  https://github.com/tdlib/td/tree/4ac8be81
//

import Foundation


/// Describes the target chat to be opened
public enum TargetChat: Codable, Equatable, Hashable {

    /// The currently opened chat needs to be kept
    case current

    /// The chat needs to be chosen by the user among chats of the specified types
    case chosen(TargetChatChosen)

    /// The chat needs to be open with the provided internal link
    case internalLink(TargetChatInternalLink)


    private enum Kind: String, Codable {
        case targetChatCurrent
        case targetChatChosen
        case targetChatInternalLink
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .targetChatCurrent:
            self = .current
        case .targetChatChosen:
            let value = try TargetChatChosen(from: decoder)
            self = .chosen(value)
        case .targetChatInternalLink:
            let value = try TargetChatInternalLink(from: decoder)
            self = .internalLink(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .current:
            try container.encode(Kind.targetChatCurrent, forKey: .type)
        case .chosen(let value):
            try container.encode(Kind.targetChatChosen, forKey: .type)
            try value.encode(to: encoder)
        case .internalLink(let value):
            try container.encode(Kind.targetChatInternalLink, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The chat needs to be chosen by the user among chats of the specified types
public struct TargetChatChosen: Codable, Equatable, Hashable {

    /// True, if private chats with other bots are allowed
    public let allowBotChats: Bool

    /// True, if channel chats are allowed
    public let allowChannelChats: Bool

    /// True, if basic group and supergroup chats are allowed
    public let allowGroupChats: Bool

    /// True, if private chats with ordinary users are allowed
    public let allowUserChats: Bool


    public init(
        allowBotChats: Bool,
        allowChannelChats: Bool,
        allowGroupChats: Bool,
        allowUserChats: Bool
    ) {
        self.allowBotChats = allowBotChats
        self.allowChannelChats = allowChannelChats
        self.allowGroupChats = allowGroupChats
        self.allowUserChats = allowUserChats
    }
}

/// The chat needs to be open with the provided internal link
public struct TargetChatInternalLink: Codable, Equatable, Hashable {

    /// An internal link pointing to the chat
    public let link: InternalLinkType


    public init(link: InternalLinkType) {
        self.link = link
    }
}

