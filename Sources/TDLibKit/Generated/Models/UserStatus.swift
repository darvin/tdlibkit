//
//  UserStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Describes the last time the user was online
public enum UserStatus: Codable, Equatable, Hashable {

    /// The user status was never changed
    case empty

    /// The user is online
    case online(UserStatusOnline)

    /// The user is offline
    case offline(UserStatusOffline)

    /// The user was online recently
    case recently

    /// The user is offline, but was online last week
    case lastWeek

    /// The user is offline, but was online last month
    case lastMonth


    private enum Kind: String, Codable {
        case userStatusEmpty
        case userStatusOnline
        case userStatusOffline
        case userStatusRecently
        case userStatusLastWeek
        case userStatusLastMonth
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userStatusEmpty:
            self = .empty
        case .userStatusOnline:
            let value = try UserStatusOnline(from: decoder)
            self = .online(value)
        case .userStatusOffline:
            let value = try UserStatusOffline(from: decoder)
            self = .offline(value)
        case .userStatusRecently:
            self = .recently
        case .userStatusLastWeek:
            self = .lastWeek
        case .userStatusLastMonth:
            self = .lastMonth
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .empty:
            try container.encode(Kind.userStatusEmpty, forKey: .type)
        case .online(let value):
            try container.encode(Kind.userStatusOnline, forKey: .type)
            try value.encode(to: encoder)
        case .offline(let value):
            try container.encode(Kind.userStatusOffline, forKey: .type)
            try value.encode(to: encoder)
        case .recently:
            try container.encode(Kind.userStatusRecently, forKey: .type)
        case .lastWeek:
            try container.encode(Kind.userStatusLastWeek, forKey: .type)
        case .lastMonth:
            try container.encode(Kind.userStatusLastMonth, forKey: .type)
        }
    }
}

/// The user is online
public struct UserStatusOnline: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user's online status will expire
    public let expires: Int


    public init(expires: Int) {
        self.expires = expires
    }
}

/// The user is offline
public struct UserStatusOffline: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user was last online
    public let wasOnline: Int


    public init(wasOnline: Int) {
        self.wasOnline = wasOnline
    }
}

