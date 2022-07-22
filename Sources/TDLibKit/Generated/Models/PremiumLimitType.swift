//
//  PremiumLimitType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-37647648
//  https://github.com/tdlib/td/tree/37647648
//

import Foundation


/// Describes type of a limit, increased for Premium users
public enum PremiumLimitType: Codable, Equatable, Hashable {

    /// The maximum number of joined supergroups and channels
    case supergroupCount

    /// The maximum number of pinned chats in the main chat list
    case pinnedChatCount

    /// The maximum number of created public chats
    case createdPublicChatCount

    /// The maximum number of saved animations
    case savedAnimationCount

    /// The maximum number of favorite stickers
    case favoriteStickerCount

    /// The maximum number of chat filters
    case chatFilterCount

    /// The maximum number of pinned and always included, or always excluded chats in a chat filter
    case chatFilterChosenChatCount

    /// The maximum number of pinned chats in the archive chat list
    case pinnedArchivedChatCount

    /// The maximum length of sent media caption
    case captionLength

    /// The maximum length of the user's bio
    case bioLength


    private enum Kind: String, Codable {
        case premiumLimitTypeSupergroupCount
        case premiumLimitTypePinnedChatCount
        case premiumLimitTypeCreatedPublicChatCount
        case premiumLimitTypeSavedAnimationCount
        case premiumLimitTypeFavoriteStickerCount
        case premiumLimitTypeChatFilterCount
        case premiumLimitTypeChatFilterChosenChatCount
        case premiumLimitTypePinnedArchivedChatCount
        case premiumLimitTypeCaptionLength
        case premiumLimitTypeBioLength
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumLimitTypeSupergroupCount:
            self = .supergroupCount
        case .premiumLimitTypePinnedChatCount:
            self = .pinnedChatCount
        case .premiumLimitTypeCreatedPublicChatCount:
            self = .createdPublicChatCount
        case .premiumLimitTypeSavedAnimationCount:
            self = .savedAnimationCount
        case .premiumLimitTypeFavoriteStickerCount:
            self = .favoriteStickerCount
        case .premiumLimitTypeChatFilterCount:
            self = .chatFilterCount
        case .premiumLimitTypeChatFilterChosenChatCount:
            self = .chatFilterChosenChatCount
        case .premiumLimitTypePinnedArchivedChatCount:
            self = .pinnedArchivedChatCount
        case .premiumLimitTypeCaptionLength:
            self = .captionLength
        case .premiumLimitTypeBioLength:
            self = .bioLength
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .supergroupCount:
            try container.encode(Kind.premiumLimitTypeSupergroupCount, forKey: .type)
        case .pinnedChatCount:
            try container.encode(Kind.premiumLimitTypePinnedChatCount, forKey: .type)
        case .createdPublicChatCount:
            try container.encode(Kind.premiumLimitTypeCreatedPublicChatCount, forKey: .type)
        case .savedAnimationCount:
            try container.encode(Kind.premiumLimitTypeSavedAnimationCount, forKey: .type)
        case .favoriteStickerCount:
            try container.encode(Kind.premiumLimitTypeFavoriteStickerCount, forKey: .type)
        case .chatFilterCount:
            try container.encode(Kind.premiumLimitTypeChatFilterCount, forKey: .type)
        case .chatFilterChosenChatCount:
            try container.encode(Kind.premiumLimitTypeChatFilterChosenChatCount, forKey: .type)
        case .pinnedArchivedChatCount:
            try container.encode(Kind.premiumLimitTypePinnedArchivedChatCount, forKey: .type)
        case .captionLength:
            try container.encode(Kind.premiumLimitTypeCaptionLength, forKey: .type)
        case .bioLength:
            try container.encode(Kind.premiumLimitTypeBioLength, forKey: .type)
        }
    }
}

