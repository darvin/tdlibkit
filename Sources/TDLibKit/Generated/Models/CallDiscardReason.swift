//
//  CallDiscardReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Describes the reason why a call was discarded
public enum CallDiscardReason: Codable, Equatable, Hashable {

    /// The call wasn't discarded, or the reason is unknown
    case empty

    /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party
    case missed

    /// The call was ended before the conversation started. It was declined by the other party
    case declined

    /// The call was ended during the conversation because the users were disconnected
    case disconnected

    /// The call was ended because one of the parties hung up
    case hungUp


    private enum Kind: String, Codable {
        case callDiscardReasonEmpty
        case callDiscardReasonMissed
        case callDiscardReasonDeclined
        case callDiscardReasonDisconnected
        case callDiscardReasonHungUp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callDiscardReasonEmpty:
            self = .empty
        case .callDiscardReasonMissed:
            self = .missed
        case .callDiscardReasonDeclined:
            self = .declined
        case .callDiscardReasonDisconnected:
            self = .disconnected
        case .callDiscardReasonHungUp:
            self = .hungUp
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .empty:
            try container.encode(Kind.callDiscardReasonEmpty, forKey: .type)
        case .missed:
            try container.encode(Kind.callDiscardReasonMissed, forKey: .type)
        case .declined:
            try container.encode(Kind.callDiscardReasonDeclined, forKey: .type)
        case .disconnected:
            try container.encode(Kind.callDiscardReasonDisconnected, forKey: .type)
        case .hungUp:
            try container.encode(Kind.callDiscardReasonHungUp, forKey: .type)
        }
    }
}

