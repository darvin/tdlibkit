//
//  PremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Describes a feature available to Premium users
public enum PremiumFeature: Codable, Equatable, Hashable {

    /// Increased limits
    case increasedLimits

    /// Increased maximum upload file size
    case increasedUploadFileSize

    /// Improved download speed
    case improvedDownloadSpeed

    /// The ability to convert voice notes to text
    case voiceRecognition

    /// Disabled ads
    case disabledAds

    /// Allowed to use more reactions
    case uniqueReactions

    /// Allowed to use premium stickers with unique effects
    case uniqueStickers

    /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram
    case advancedChatManagement

    /// A badge in the user's profile
    case profileBadge

    /// Profile photo animation on message and chat screens
    case animatedProfilePhoto

    /// Allowed to set a premium appllication icons
    case appIcons


    private enum Kind: String, Codable {
        case premiumFeatureIncreasedLimits
        case premiumFeatureIncreasedUploadFileSize
        case premiumFeatureImprovedDownloadSpeed
        case premiumFeatureVoiceRecognition
        case premiumFeatureDisabledAds
        case premiumFeatureUniqueReactions
        case premiumFeatureUniqueStickers
        case premiumFeatureAdvancedChatManagement
        case premiumFeatureProfileBadge
        case premiumFeatureAnimatedProfilePhoto
        case premiumFeatureAppIcons
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumFeatureIncreasedLimits:
            self = .increasedLimits
        case .premiumFeatureIncreasedUploadFileSize:
            self = .increasedUploadFileSize
        case .premiumFeatureImprovedDownloadSpeed:
            self = .improvedDownloadSpeed
        case .premiumFeatureVoiceRecognition:
            self = .voiceRecognition
        case .premiumFeatureDisabledAds:
            self = .disabledAds
        case .premiumFeatureUniqueReactions:
            self = .uniqueReactions
        case .premiumFeatureUniqueStickers:
            self = .uniqueStickers
        case .premiumFeatureAdvancedChatManagement:
            self = .advancedChatManagement
        case .premiumFeatureProfileBadge:
            self = .profileBadge
        case .premiumFeatureAnimatedProfilePhoto:
            self = .animatedProfilePhoto
        case .premiumFeatureAppIcons:
            self = .appIcons
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .increasedLimits:
            try container.encode(Kind.premiumFeatureIncreasedLimits, forKey: .type)
        case .increasedUploadFileSize:
            try container.encode(Kind.premiumFeatureIncreasedUploadFileSize, forKey: .type)
        case .improvedDownloadSpeed:
            try container.encode(Kind.premiumFeatureImprovedDownloadSpeed, forKey: .type)
        case .voiceRecognition:
            try container.encode(Kind.premiumFeatureVoiceRecognition, forKey: .type)
        case .disabledAds:
            try container.encode(Kind.premiumFeatureDisabledAds, forKey: .type)
        case .uniqueReactions:
            try container.encode(Kind.premiumFeatureUniqueReactions, forKey: .type)
        case .uniqueStickers:
            try container.encode(Kind.premiumFeatureUniqueStickers, forKey: .type)
        case .advancedChatManagement:
            try container.encode(Kind.premiumFeatureAdvancedChatManagement, forKey: .type)
        case .profileBadge:
            try container.encode(Kind.premiumFeatureProfileBadge, forKey: .type)
        case .animatedProfilePhoto:
            try container.encode(Kind.premiumFeatureAnimatedProfilePhoto, forKey: .type)
        case .appIcons:
            try container.encode(Kind.premiumFeatureAppIcons, forKey: .type)
        }
    }
}

