//
//  CallServerType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Describes the type of a call server
public enum CallServerType: Codable, Equatable, Hashable {

    /// A Telegram call reflector
    case telegramReflector(CallServerTypeTelegramReflector)

    /// A WebRTC server
    case webrtc(CallServerTypeWebrtc)


    private enum Kind: String, Codable {
        case callServerTypeTelegramReflector
        case callServerTypeWebrtc
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callServerTypeTelegramReflector:
            let value = try CallServerTypeTelegramReflector(from: decoder)
            self = .telegramReflector(value)
        case .callServerTypeWebrtc:
            let value = try CallServerTypeWebrtc(from: decoder)
            self = .webrtc(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .telegramReflector(let value):
            try container.encode(Kind.callServerTypeTelegramReflector, forKey: .type)
            try value.encode(to: encoder)
        case .webrtc(let value):
            try container.encode(Kind.callServerTypeWebrtc, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Telegram call reflector
public struct CallServerTypeTelegramReflector: Codable, Equatable, Hashable {

    /// True, if the server uses TCP instead of UDP
    public let isTcp: Bool

    /// A peer tag to be used with the reflector
    public let peerTag: Data


    public init(
        isTcp: Bool,
        peerTag: Data
    ) {
        self.isTcp = isTcp
        self.peerTag = peerTag
    }
}

/// A WebRTC server
public struct CallServerTypeWebrtc: Codable, Equatable, Hashable {

    /// Authentication password
    public let password: String

    /// True, if the server supports STUN
    public let supportsStun: Bool

    /// True, if the server supports TURN
    public let supportsTurn: Bool

    /// Username to be used for authentication
    public let username: String


    public init(
        password: String,
        supportsStun: Bool,
        supportsTurn: Bool,
        username: String
    ) {
        self.password = password
        self.supportsStun = supportsStun
        self.supportsTurn = supportsTurn
        self.username = username
    }
}

