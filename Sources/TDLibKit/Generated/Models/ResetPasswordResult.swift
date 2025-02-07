//
//  ResetPasswordResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents result of 2-step verification password reset
public enum ResetPasswordResult: Codable, Equatable, Hashable {

    /// The password was reset
    case ok

    /// The password reset request is pending
    case pending(ResetPasswordResultPending)

    /// The password reset request was declined
    case declined(ResetPasswordResultDeclined)


    private enum Kind: String, Codable {
        case resetPasswordResultOk
        case resetPasswordResultPending
        case resetPasswordResultDeclined
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .resetPasswordResultOk:
            self = .ok
        case .resetPasswordResultPending:
            let value = try ResetPasswordResultPending(from: decoder)
            self = .pending(value)
        case .resetPasswordResultDeclined:
            let value = try ResetPasswordResultDeclined(from: decoder)
            self = .declined(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .ok:
            try container.encode(Kind.resetPasswordResultOk, forKey: .type)
        case .pending(let value):
            try container.encode(Kind.resetPasswordResultPending, forKey: .type)
            try value.encode(to: encoder)
        case .declined(let value):
            try container.encode(Kind.resetPasswordResultDeclined, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The password reset request is pending
public struct ResetPasswordResultPending: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword
    public let pendingResetDate: Int


    public init(pendingResetDate: Int) {
        self.pendingResetDate = pendingResetDate
    }
}

/// The password reset request was declined
public struct ResetPasswordResultDeclined: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the password reset can be retried
    public let retryDate: Int


    public init(retryDate: Int) {
        self.retryDate = retryDate
    }
}

