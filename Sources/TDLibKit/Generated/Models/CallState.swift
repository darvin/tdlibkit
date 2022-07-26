//
//  CallState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Describes the current call state
public enum CallState: Codable, Equatable, Hashable {

    /// The call is pending, waiting to be accepted by a user
    case pending(CallStatePending)

    /// The call has been answered and encryption keys are being exchanged
    case exchangingKeys

    /// The call is ready to use
    case ready(CallStateReady)

    /// The call is hanging up after discardCall has been called
    case hangingUp

    /// The call has ended successfully
    case discarded(CallStateDiscarded)

    /// The call has ended with an error
    case error(CallStateError)


    private enum Kind: String, Codable {
        case callStatePending
        case callStateExchangingKeys
        case callStateReady
        case callStateHangingUp
        case callStateDiscarded
        case callStateError
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callStatePending:
            let value = try CallStatePending(from: decoder)
            self = .pending(value)
        case .callStateExchangingKeys:
            self = .exchangingKeys
        case .callStateReady:
            let value = try CallStateReady(from: decoder)
            self = .ready(value)
        case .callStateHangingUp:
            self = .hangingUp
        case .callStateDiscarded:
            let value = try CallStateDiscarded(from: decoder)
            self = .discarded(value)
        case .callStateError:
            let value = try CallStateError(from: decoder)
            self = .error(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pending(let value):
            try container.encode(Kind.callStatePending, forKey: .type)
            try value.encode(to: encoder)
        case .exchangingKeys:
            try container.encode(Kind.callStateExchangingKeys, forKey: .type)
        case .ready(let value):
            try container.encode(Kind.callStateReady, forKey: .type)
            try value.encode(to: encoder)
        case .hangingUp:
            try container.encode(Kind.callStateHangingUp, forKey: .type)
        case .discarded(let value):
            try container.encode(Kind.callStateDiscarded, forKey: .type)
            try value.encode(to: encoder)
        case .error(let value):
            try container.encode(Kind.callStateError, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The call is pending, waiting to be accepted by a user
public struct CallStatePending: Codable, Equatable, Hashable {

    /// True, if the call has already been created by the server
    public let isCreated: Bool

    /// True, if the call has already been received by the other party
    public let isReceived: Bool


    public init(
        isCreated: Bool,
        isReceived: Bool
    ) {
        self.isCreated = isCreated
        self.isReceived = isReceived
    }
}

/// The call is ready to use
public struct CallStateReady: Codable, Equatable, Hashable {

    /// True, if peer-to-peer connection is allowed by users privacy settings
    public let allowP2p: Bool

    /// A JSON-encoded call config
    public let config: String

    /// Encryption key emojis fingerprint
    public let emojis: [String]

    /// Call encryption key
    public let encryptionKey: Data

    /// Call protocols supported by the peer
    public let `protocol`: CallProtocol

    /// List of available call servers
    public let servers: [CallServer]


    public init(
        allowP2p: Bool,
        config: String,
        emojis: [String],
        encryptionKey: Data,
        `protocol`: CallProtocol,
        servers: [CallServer]
    ) {
        self.allowP2p = allowP2p
        self.config = config
        self.emojis = emojis
        self.encryptionKey = encryptionKey
        self.`protocol` = `protocol`
        self.servers = servers
    }
}

/// The call has ended successfully
public struct CallStateDiscarded: Codable, Equatable, Hashable {

    /// True, if the call debug information must be sent to the server
    public let needDebugInformation: Bool

    /// True, if the call log must be sent to the server
    public let needLog: Bool

    /// True, if the call rating must be sent to the server
    public let needRating: Bool

    /// The reason, why the call has ended
    public let reason: CallDiscardReason


    public init(
        needDebugInformation: Bool,
        needLog: Bool,
        needRating: Bool,
        reason: CallDiscardReason
    ) {
        self.needDebugInformation = needDebugInformation
        self.needLog = needLog
        self.needRating = needRating
        self.reason = reason
    }
}

/// The call has ended with an error
public struct CallStateError: Codable, Equatable, Hashable {

    /// Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
    public let error: Error


    public init(error: Error) {
        self.error = error
    }
}

