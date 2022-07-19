//
//  CheckChatUsernameResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Represents result of checking whether a username can be set for a chat
public enum CheckChatUsernameResult: Codable, Equatable, Hashable {

    /// The username can be set
    case ok

    /// The username is invalid
    case usernameInvalid

    /// The username is occupied
    case usernameOccupied

    /// The user has too many chats with username, one of them must be made private first
    case publicChatsTooMuch

    /// The user can't be a member of a public supergroup
    case publicGroupsUnavailable


    private enum Kind: String, Codable {
        case checkChatUsernameResultOk
        case checkChatUsernameResultUsernameInvalid
        case checkChatUsernameResultUsernameOccupied
        case checkChatUsernameResultPublicChatsTooMuch
        case checkChatUsernameResultPublicGroupsUnavailable
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .checkChatUsernameResultOk:
            self = .ok
        case .checkChatUsernameResultUsernameInvalid:
            self = .usernameInvalid
        case .checkChatUsernameResultUsernameOccupied:
            self = .usernameOccupied
        case .checkChatUsernameResultPublicChatsTooMuch:
            self = .publicChatsTooMuch
        case .checkChatUsernameResultPublicGroupsUnavailable:
            self = .publicGroupsUnavailable
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .ok:
            try container.encode(Kind.checkChatUsernameResultOk, forKey: .type)
        case .usernameInvalid:
            try container.encode(Kind.checkChatUsernameResultUsernameInvalid, forKey: .type)
        case .usernameOccupied:
            try container.encode(Kind.checkChatUsernameResultUsernameOccupied, forKey: .type)
        case .publicChatsTooMuch:
            try container.encode(Kind.checkChatUsernameResultPublicChatsTooMuch, forKey: .type)
        case .publicGroupsUnavailable:
            try container.encode(Kind.checkChatUsernameResultPublicGroupsUnavailable, forKey: .type)
        }
    }
}

