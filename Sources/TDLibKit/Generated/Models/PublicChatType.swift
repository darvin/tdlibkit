//
//  PublicChatType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Describes a type of public chats
public enum PublicChatType: Codable, Equatable, Hashable {

    /// The chat is public, because it has username
    case hasUsername

    /// The chat is public, because it is a location-based supergroup
    case isLocationBased


    private enum Kind: String, Codable {
        case publicChatTypeHasUsername
        case publicChatTypeIsLocationBased
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .publicChatTypeHasUsername:
            self = .hasUsername
        case .publicChatTypeIsLocationBased:
            self = .isLocationBased
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .hasUsername:
            try container.encode(Kind.publicChatTypeHasUsername, forKey: .type)
        case .isLocationBased:
            try container.encode(Kind.publicChatTypeIsLocationBased, forKey: .type)
        }
    }
}

