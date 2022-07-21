//
//  NotificationSettingsScope.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-4ac8be81
//  https://github.com/tdlib/td/tree/4ac8be81
//

import Foundation


/// Describes the types of chats to which notification settings are relevant
public enum NotificationSettingsScope: Codable, Equatable, Hashable {

    /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
    case privateChats

    /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value
    case groupChats

    /// Notification settings applied to all channel chats when the corresponding chat setting has a default value
    case channelChats


    private enum Kind: String, Codable {
        case notificationSettingsScopePrivateChats
        case notificationSettingsScopeGroupChats
        case notificationSettingsScopeChannelChats
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .notificationSettingsScopePrivateChats:
            self = .privateChats
        case .notificationSettingsScopeGroupChats:
            self = .groupChats
        case .notificationSettingsScopeChannelChats:
            self = .channelChats
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .privateChats:
            try container.encode(Kind.notificationSettingsScopePrivateChats, forKey: .type)
        case .groupChats:
            try container.encode(Kind.notificationSettingsScopeGroupChats, forKey: .type)
        case .channelChats:
            try container.encode(Kind.notificationSettingsScopeChannelChats, forKey: .type)
        }
    }
}

