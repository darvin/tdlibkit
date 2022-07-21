//
//  TextEntityType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-4ac8be81
//  https://github.com/tdlib/td/tree/4ac8be81
//

import Foundation


/// Represents a part of the text which must be formatted differently
public enum TextEntityType: Codable, Equatable, Hashable {

    /// A mention of a user by their username
    case mention

    /// A hashtag text, beginning with "#"
    case hashtag

    /// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD")
    case cashtag

    /// A bot command, beginning with "/"
    case botCommand

    /// An HTTP URL
    case url

    /// An email address
    case emailAddress

    /// A phone number
    case phoneNumber

    /// A bank card number. The getBankCardInfo method can be used to get information about the bank card
    case bankCardNumber

    /// A bold text
    case bold

    /// An italic text
    case italic

    /// An underlined text
    case underline

    /// A strikethrough text
    case strikethrough

    /// A spoiler text. Not supported in secret chats
    case spoiler

    /// Text that must be formatted as if inside a code HTML tag
    case code

    /// Text that must be formatted as if inside a pre HTML tag
    case pre

    /// Text that must be formatted as if inside pre, and code HTML tags
    case preCode(TextEntityTypePreCode)

    /// A text description shown instead of a raw URL
    case textUrl(TextEntityTypeTextUrl)

    /// A text shows instead of a raw mention of the user (e.g., when the user has no username)
    case mentionName(TextEntityTypeMentionName)

    /// A media timestamp
    case mediaTimestamp(TextEntityTypeMediaTimestamp)


    private enum Kind: String, Codable {
        case textEntityTypeMention
        case textEntityTypeHashtag
        case textEntityTypeCashtag
        case textEntityTypeBotCommand
        case textEntityTypeUrl
        case textEntityTypeEmailAddress
        case textEntityTypePhoneNumber
        case textEntityTypeBankCardNumber
        case textEntityTypeBold
        case textEntityTypeItalic
        case textEntityTypeUnderline
        case textEntityTypeStrikethrough
        case textEntityTypeSpoiler
        case textEntityTypeCode
        case textEntityTypePre
        case textEntityTypePreCode
        case textEntityTypeTextUrl
        case textEntityTypeMentionName
        case textEntityTypeMediaTimestamp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .textEntityTypeMention:
            self = .mention
        case .textEntityTypeHashtag:
            self = .hashtag
        case .textEntityTypeCashtag:
            self = .cashtag
        case .textEntityTypeBotCommand:
            self = .botCommand
        case .textEntityTypeUrl:
            self = .url
        case .textEntityTypeEmailAddress:
            self = .emailAddress
        case .textEntityTypePhoneNumber:
            self = .phoneNumber
        case .textEntityTypeBankCardNumber:
            self = .bankCardNumber
        case .textEntityTypeBold:
            self = .bold
        case .textEntityTypeItalic:
            self = .italic
        case .textEntityTypeUnderline:
            self = .underline
        case .textEntityTypeStrikethrough:
            self = .strikethrough
        case .textEntityTypeSpoiler:
            self = .spoiler
        case .textEntityTypeCode:
            self = .code
        case .textEntityTypePre:
            self = .pre
        case .textEntityTypePreCode:
            let value = try TextEntityTypePreCode(from: decoder)
            self = .preCode(value)
        case .textEntityTypeTextUrl:
            let value = try TextEntityTypeTextUrl(from: decoder)
            self = .textUrl(value)
        case .textEntityTypeMentionName:
            let value = try TextEntityTypeMentionName(from: decoder)
            self = .mentionName(value)
        case .textEntityTypeMediaTimestamp:
            let value = try TextEntityTypeMediaTimestamp(from: decoder)
            self = .mediaTimestamp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .mention:
            try container.encode(Kind.textEntityTypeMention, forKey: .type)
        case .hashtag:
            try container.encode(Kind.textEntityTypeHashtag, forKey: .type)
        case .cashtag:
            try container.encode(Kind.textEntityTypeCashtag, forKey: .type)
        case .botCommand:
            try container.encode(Kind.textEntityTypeBotCommand, forKey: .type)
        case .url:
            try container.encode(Kind.textEntityTypeUrl, forKey: .type)
        case .emailAddress:
            try container.encode(Kind.textEntityTypeEmailAddress, forKey: .type)
        case .phoneNumber:
            try container.encode(Kind.textEntityTypePhoneNumber, forKey: .type)
        case .bankCardNumber:
            try container.encode(Kind.textEntityTypeBankCardNumber, forKey: .type)
        case .bold:
            try container.encode(Kind.textEntityTypeBold, forKey: .type)
        case .italic:
            try container.encode(Kind.textEntityTypeItalic, forKey: .type)
        case .underline:
            try container.encode(Kind.textEntityTypeUnderline, forKey: .type)
        case .strikethrough:
            try container.encode(Kind.textEntityTypeStrikethrough, forKey: .type)
        case .spoiler:
            try container.encode(Kind.textEntityTypeSpoiler, forKey: .type)
        case .code:
            try container.encode(Kind.textEntityTypeCode, forKey: .type)
        case .pre:
            try container.encode(Kind.textEntityTypePre, forKey: .type)
        case .preCode(let value):
            try container.encode(Kind.textEntityTypePreCode, forKey: .type)
            try value.encode(to: encoder)
        case .textUrl(let value):
            try container.encode(Kind.textEntityTypeTextUrl, forKey: .type)
            try value.encode(to: encoder)
        case .mentionName(let value):
            try container.encode(Kind.textEntityTypeMentionName, forKey: .type)
            try value.encode(to: encoder)
        case .mediaTimestamp(let value):
            try container.encode(Kind.textEntityTypeMediaTimestamp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Text that must be formatted as if inside pre, and code HTML tags
public struct TextEntityTypePreCode: Codable, Equatable, Hashable {

    /// Programming language of the code; as defined by the sender
    public let language: String


    public init(language: String) {
        self.language = language
    }
}

/// A text description shown instead of a raw URL
public struct TextEntityTypeTextUrl: Codable, Equatable, Hashable {

    /// HTTP or tg:// URL to be opened when the link is clicked
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// A text shows instead of a raw mention of the user (e.g., when the user has no username)
public struct TextEntityTypeMentionName: Codable, Equatable, Hashable {

    /// Identifier of the mentioned user
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

/// A media timestamp
public struct TextEntityTypeMediaTimestamp: Codable, Equatable, Hashable {

    /// Timestamp from which a video/audio/video note/voice note playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message
    public let mediaTimestamp: Int


    public init(mediaTimestamp: Int) {
        self.mediaTimestamp = mediaTimestamp
    }
}

