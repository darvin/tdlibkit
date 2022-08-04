//
//  ChatSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a reason why an external chat is shown in a chat list
public enum ChatSource: Codable, Equatable, Hashable {

    /// The chat is sponsored by the user's MTProxy server
    case mtprotoProxy

    /// The chat contains a public service announcement
    case publicServiceAnnouncement(ChatSourcePublicServiceAnnouncement)


    private enum Kind: String, Codable {
        case chatSourceMtprotoProxy
        case chatSourcePublicServiceAnnouncement
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatSourceMtprotoProxy:
            self = .mtprotoProxy
        case .chatSourcePublicServiceAnnouncement:
            let value = try ChatSourcePublicServiceAnnouncement(from: decoder)
            self = .publicServiceAnnouncement(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .mtprotoProxy:
            try container.encode(Kind.chatSourceMtprotoProxy, forKey: .type)
        case .publicServiceAnnouncement(let value):
            try container.encode(Kind.chatSourcePublicServiceAnnouncement, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The chat contains a public service announcement
public struct ChatSourcePublicServiceAnnouncement: Codable, Equatable, Hashable {

    /// The text of the announcement
    public let text: String

    /// The type of the announcement
    public let type: String


    public init(
        text: String,
        type: String
    ) {
        self.text = text
        self.type = type
    }
}

