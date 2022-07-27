//
//  SuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Describes an action suggested to the current user
public enum SuggestedAction: Codable, Equatable, Hashable {

    /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
    case enableArchiveAndMuteNewChats

    /// Suggests the user to check whether they still remember their 2-step verification password
    case checkPassword

    /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
    case checkPhoneNumber

    /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
    case viewChecksHint

    /// Suggests the user to convert specified supergroup to a broadcast group
    case convertToBroadcastGroup(SuggestedActionConvertToBroadcastGroup)

    /// Suggests the user to set a 2-step verification password to be able to log in again
    case setPassword(SuggestedActionSetPassword)


    private enum Kind: String, Codable {
        case suggestedActionEnableArchiveAndMuteNewChats
        case suggestedActionCheckPassword
        case suggestedActionCheckPhoneNumber
        case suggestedActionViewChecksHint
        case suggestedActionConvertToBroadcastGroup
        case suggestedActionSetPassword
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            self = .enableArchiveAndMuteNewChats
        case .suggestedActionCheckPassword:
            self = .checkPassword
        case .suggestedActionCheckPhoneNumber:
            self = .checkPhoneNumber
        case .suggestedActionViewChecksHint:
            self = .viewChecksHint
        case .suggestedActionConvertToBroadcastGroup:
            let value = try SuggestedActionConvertToBroadcastGroup(from: decoder)
            self = .convertToBroadcastGroup(value)
        case .suggestedActionSetPassword:
            let value = try SuggestedActionSetPassword(from: decoder)
            self = .setPassword(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .enableArchiveAndMuteNewChats:
            try container.encode(Kind.suggestedActionEnableArchiveAndMuteNewChats, forKey: .type)
        case .checkPassword:
            try container.encode(Kind.suggestedActionCheckPassword, forKey: .type)
        case .checkPhoneNumber:
            try container.encode(Kind.suggestedActionCheckPhoneNumber, forKey: .type)
        case .viewChecksHint:
            try container.encode(Kind.suggestedActionViewChecksHint, forKey: .type)
        case .convertToBroadcastGroup(let value):
            try container.encode(Kind.suggestedActionConvertToBroadcastGroup, forKey: .type)
            try value.encode(to: encoder)
        case .setPassword(let value):
            try container.encode(Kind.suggestedActionSetPassword, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Suggests the user to convert specified supergroup to a broadcast group
public struct SuggestedActionConvertToBroadcastGroup: Codable, Equatable, Hashable {

    /// Supergroup identifier
    public let supergroupId: Int64


    public init(supergroupId: Int64) {
        self.supergroupId = supergroupId
    }
}

/// Suggests the user to set a 2-step verification password to be able to log in again
public struct SuggestedActionSetPassword: Codable, Equatable, Hashable {

    /// The number of days to pass between consecutive authorizations if the user declines to set password
    public let authorizationDelay: Int


    public init(authorizationDelay: Int) {
        self.authorizationDelay = authorizationDelay
    }
}

