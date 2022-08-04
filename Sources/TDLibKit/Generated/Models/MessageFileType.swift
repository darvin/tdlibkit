//
//  MessageFileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a file with messages exported from another app
public enum MessageFileType: Codable, Equatable, Hashable {

    /// The messages was exported from a private chat
    case `private`(MessageFileTypePrivate)

    /// The messages was exported from a group chat
    case group(MessageFileTypeGroup)

    /// The messages was exported from a chat of unknown type
    case unknown


    private enum Kind: String, Codable {
        case messageFileTypePrivate
        case messageFileTypeGroup
        case messageFileTypeUnknown
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageFileTypePrivate:
            let value = try MessageFileTypePrivate(from: decoder)
            self = .`private`(value)
        case .messageFileTypeGroup:
            let value = try MessageFileTypeGroup(from: decoder)
            self = .group(value)
        case .messageFileTypeUnknown:
            self = .unknown
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .`private`(let value):
            try container.encode(Kind.messageFileTypePrivate, forKey: .type)
            try value.encode(to: encoder)
        case .group(let value):
            try container.encode(Kind.messageFileTypeGroup, forKey: .type)
            try value.encode(to: encoder)
        case .unknown:
            try container.encode(Kind.messageFileTypeUnknown, forKey: .type)
        }
    }
}

/// The messages was exported from a private chat
public struct MessageFileTypePrivate: Codable, Equatable, Hashable {

    /// Name of the other party; may be empty if unrecognized
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// The messages was exported from a group chat
public struct MessageFileTypeGroup: Codable, Equatable, Hashable {

    /// Title of the group chat; may be empty if unrecognized
    public let title: String


    public init(title: String) {
        self.title = title
    }
}

