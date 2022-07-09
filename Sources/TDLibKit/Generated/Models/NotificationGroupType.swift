//
//  NotificationGroupType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-d4890143
//  https://github.com/tdlib/td/tree/d4890143
//

import Foundation


/// Describes the type of notifications in a notification group
public enum NotificationGroupType: Codable, Equatable, Hashable {

    /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
    case messages

    /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
    case mentions

    /// A group containing a notification of type notificationTypeNewSecretChat
    case secretChat

    /// A group containing notifications of type notificationTypeNewCall
    case calls


    private enum Kind: String, Codable {
        case notificationGroupTypeMessages
        case notificationGroupTypeMentions
        case notificationGroupTypeSecretChat
        case notificationGroupTypeCalls
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .notificationGroupTypeMessages:
            self = .messages
        case .notificationGroupTypeMentions:
            self = .mentions
        case .notificationGroupTypeSecretChat:
            self = .secretChat
        case .notificationGroupTypeCalls:
            self = .calls
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messages:
            try container.encode(Kind.notificationGroupTypeMessages, forKey: .type)
        case .mentions:
            try container.encode(Kind.notificationGroupTypeMentions, forKey: .type)
        case .secretChat:
            try container.encode(Kind.notificationGroupTypeSecretChat, forKey: .type)
        case .calls:
            try container.encode(Kind.notificationGroupTypeCalls, forKey: .type)
        }
    }
}

