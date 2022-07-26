//
//  SecretChatState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Describes the current secret chat state
public enum SecretChatState: Codable, Equatable, Hashable {

    /// The secret chat is not yet created; waiting for the other user to get online
    case pending

    /// The secret chat is ready to use
    case ready

    /// The secret chat is closed
    case closed


    private enum Kind: String, Codable {
        case secretChatStatePending
        case secretChatStateReady
        case secretChatStateClosed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .secretChatStatePending:
            self = .pending
        case .secretChatStateReady:
            self = .ready
        case .secretChatStateClosed:
            self = .closed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pending:
            try container.encode(Kind.secretChatStatePending, forKey: .type)
        case .ready:
            try container.encode(Kind.secretChatStateReady, forKey: .type)
        case .closed:
            try container.encode(Kind.secretChatStateClosed, forKey: .type)
        }
    }
}

