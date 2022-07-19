//
//  UserPrivacySetting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Describes available user privacy settings
public enum UserPrivacySetting: Codable, Equatable, Hashable {

    /// A privacy setting for managing whether the user's online status is visible
    case showStatus

    /// A privacy setting for managing whether the user's profile photo is visible
    case showProfilePhoto

    /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
    case showLinkInForwardedMessages

    /// A privacy setting for managing whether the user's phone number is visible
    case showPhoneNumber

    /// A privacy setting for managing whether the user can be invited to chats
    case allowChatInvites

    /// A privacy setting for managing whether the user can be called
    case allowCalls

    /// A privacy setting for managing whether peer-to-peer connections can be used for calls
    case allowPeerToPeerCalls

    /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
    case allowFindingByPhoneNumber


    private enum Kind: String, Codable {
        case userPrivacySettingShowStatus
        case userPrivacySettingShowProfilePhoto
        case userPrivacySettingShowLinkInForwardedMessages
        case userPrivacySettingShowPhoneNumber
        case userPrivacySettingAllowChatInvites
        case userPrivacySettingAllowCalls
        case userPrivacySettingAllowPeerToPeerCalls
        case userPrivacySettingAllowFindingByPhoneNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingShowStatus:
            self = .showStatus
        case .userPrivacySettingShowProfilePhoto:
            self = .showProfilePhoto
        case .userPrivacySettingShowLinkInForwardedMessages:
            self = .showLinkInForwardedMessages
        case .userPrivacySettingShowPhoneNumber:
            self = .showPhoneNumber
        case .userPrivacySettingAllowChatInvites:
            self = .allowChatInvites
        case .userPrivacySettingAllowCalls:
            self = .allowCalls
        case .userPrivacySettingAllowPeerToPeerCalls:
            self = .allowPeerToPeerCalls
        case .userPrivacySettingAllowFindingByPhoneNumber:
            self = .allowFindingByPhoneNumber
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .showStatus:
            try container.encode(Kind.userPrivacySettingShowStatus, forKey: .type)
        case .showProfilePhoto:
            try container.encode(Kind.userPrivacySettingShowProfilePhoto, forKey: .type)
        case .showLinkInForwardedMessages:
            try container.encode(Kind.userPrivacySettingShowLinkInForwardedMessages, forKey: .type)
        case .showPhoneNumber:
            try container.encode(Kind.userPrivacySettingShowPhoneNumber, forKey: .type)
        case .allowChatInvites:
            try container.encode(Kind.userPrivacySettingAllowChatInvites, forKey: .type)
        case .allowCalls:
            try container.encode(Kind.userPrivacySettingAllowCalls, forKey: .type)
        case .allowPeerToPeerCalls:
            try container.encode(Kind.userPrivacySettingAllowPeerToPeerCalls, forKey: .type)
        case .allowFindingByPhoneNumber:
            try container.encode(Kind.userPrivacySettingAllowFindingByPhoneNumber, forKey: .type)
        }
    }
}

