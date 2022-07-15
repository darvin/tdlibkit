//
//  UserPrivacySettingRule.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Represents a single rule for managing privacy settings
public enum UserPrivacySettingRule: Codable, Equatable, Hashable {

    /// A rule to allow all users to do something
    case allowAll

    /// A rule to allow all of a user's contacts to do something
    case allowContacts

    /// A rule to allow certain specified users to do something
    case allowUsers(UserPrivacySettingRuleAllowUsers)

    /// A rule to allow all members of certain specified basic groups and supergroups to doing something
    case allowChatMembers(UserPrivacySettingRuleAllowChatMembers)

    /// A rule to restrict all users from doing something
    case restrictAll

    /// A rule to restrict all contacts of a user from doing something
    case restrictContacts

    /// A rule to restrict all specified users from doing something
    case restrictUsers(UserPrivacySettingRuleRestrictUsers)

    /// A rule to restrict all members of specified basic groups and supergroups from doing something
    case restrictChatMembers(UserPrivacySettingRuleRestrictChatMembers)


    private enum Kind: String, Codable {
        case userPrivacySettingRuleAllowAll
        case userPrivacySettingRuleAllowContacts
        case userPrivacySettingRuleAllowUsers
        case userPrivacySettingRuleAllowChatMembers
        case userPrivacySettingRuleRestrictAll
        case userPrivacySettingRuleRestrictContacts
        case userPrivacySettingRuleRestrictUsers
        case userPrivacySettingRuleRestrictChatMembers
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingRuleAllowAll:
            self = .allowAll
        case .userPrivacySettingRuleAllowContacts:
            self = .allowContacts
        case .userPrivacySettingRuleAllowUsers:
            let value = try UserPrivacySettingRuleAllowUsers(from: decoder)
            self = .allowUsers(value)
        case .userPrivacySettingRuleAllowChatMembers:
            let value = try UserPrivacySettingRuleAllowChatMembers(from: decoder)
            self = .allowChatMembers(value)
        case .userPrivacySettingRuleRestrictAll:
            self = .restrictAll
        case .userPrivacySettingRuleRestrictContacts:
            self = .restrictContacts
        case .userPrivacySettingRuleRestrictUsers:
            let value = try UserPrivacySettingRuleRestrictUsers(from: decoder)
            self = .restrictUsers(value)
        case .userPrivacySettingRuleRestrictChatMembers:
            let value = try UserPrivacySettingRuleRestrictChatMembers(from: decoder)
            self = .restrictChatMembers(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .allowAll:
            try container.encode(Kind.userPrivacySettingRuleAllowAll, forKey: .type)
        case .allowContacts:
            try container.encode(Kind.userPrivacySettingRuleAllowContacts, forKey: .type)
        case .allowUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleAllowUsers, forKey: .type)
            try value.encode(to: encoder)
        case .allowChatMembers(let value):
            try container.encode(Kind.userPrivacySettingRuleAllowChatMembers, forKey: .type)
            try value.encode(to: encoder)
        case .restrictAll:
            try container.encode(Kind.userPrivacySettingRuleRestrictAll, forKey: .type)
        case .restrictContacts:
            try container.encode(Kind.userPrivacySettingRuleRestrictContacts, forKey: .type)
        case .restrictUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleRestrictUsers, forKey: .type)
            try value.encode(to: encoder)
        case .restrictChatMembers(let value):
            try container.encode(Kind.userPrivacySettingRuleRestrictChatMembers, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A rule to allow certain specified users to do something
public struct UserPrivacySettingRuleAllowUsers: Codable, Equatable, Hashable {

    /// The user identifiers, total number of users in all rules must not exceed 1000
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

/// A rule to allow all members of certain specified basic groups and supergroups to doing something
public struct UserPrivacySettingRuleAllowChatMembers: Codable, Equatable, Hashable {

    /// The chat identifiers, total number of chats in all rules must not exceed 20
    public let chatIds: [Int64]


    public init(chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

/// A rule to restrict all specified users from doing something
public struct UserPrivacySettingRuleRestrictUsers: Codable, Equatable, Hashable {

    /// The user identifiers, total number of users in all rules must not exceed 1000
    public let userIds: [Int64]


    public init(userIds: [Int64]) {
        self.userIds = userIds
    }
}

/// A rule to restrict all members of specified basic groups and supergroups from doing something
public struct UserPrivacySettingRuleRestrictChatMembers: Codable, Equatable, Hashable {

    /// The chat identifiers, total number of chats in all rules must not exceed 20
    public let chatIds: [Int64]


    public init(chatIds: [Int64]) {
        self.chatIds = chatIds
    }
}

