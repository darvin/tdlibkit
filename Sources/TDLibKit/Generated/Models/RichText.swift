//
//  RichText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Describes a text object inside an instant-view web page
public indirect enum RichText: Codable, Equatable, Hashable {

    /// A plain text
    case plain(RichTextPlain)

    /// A bold rich text
    case bold(RichTextBold)

    /// An italicized rich text
    case italic(RichTextItalic)

    /// An underlined rich text
    case underline(RichTextUnderline)

    /// A strikethrough rich text
    case strikethrough(RichTextStrikethrough)

    /// A fixed-width rich text
    case fixed(RichTextFixed)

    /// A rich text URL link
    case url(RichTextUrl)

    /// A rich text email link
    case emailAddress(RichTextEmailAddress)

    /// A subscript rich text
    case `subscript`(RichTextSubscript)

    /// A superscript rich text
    case superscript(RichTextSuperscript)

    /// A marked rich text
    case marked(RichTextMarked)

    /// A rich text phone number
    case phoneNumber(RichTextPhoneNumber)

    /// A small image inside the text
    case icon(RichTextIcon)

    /// A reference to a richTexts object on the same web page
    case reference(RichTextReference)

    /// An anchor
    case anchor(RichTextAnchor)

    /// A link to an anchor on the same web page
    case anchorLink(RichTextAnchorLink)

    /// A concatenation of rich texts
    case s(RichTexts)


    private enum Kind: String, Codable {
        case richTextPlain
        case richTextBold
        case richTextItalic
        case richTextUnderline
        case richTextStrikethrough
        case richTextFixed
        case richTextUrl
        case richTextEmailAddress
        case richTextSubscript
        case richTextSuperscript
        case richTextMarked
        case richTextPhoneNumber
        case richTextIcon
        case richTextReference
        case richTextAnchor
        case richTextAnchorLink
        case richTexts
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .richTextPlain:
            let value = try RichTextPlain(from: decoder)
            self = .plain(value)
        case .richTextBold:
            let value = try RichTextBold(from: decoder)
            self = .bold(value)
        case .richTextItalic:
            let value = try RichTextItalic(from: decoder)
            self = .italic(value)
        case .richTextUnderline:
            let value = try RichTextUnderline(from: decoder)
            self = .underline(value)
        case .richTextStrikethrough:
            let value = try RichTextStrikethrough(from: decoder)
            self = .strikethrough(value)
        case .richTextFixed:
            let value = try RichTextFixed(from: decoder)
            self = .fixed(value)
        case .richTextUrl:
            let value = try RichTextUrl(from: decoder)
            self = .url(value)
        case .richTextEmailAddress:
            let value = try RichTextEmailAddress(from: decoder)
            self = .emailAddress(value)
        case .richTextSubscript:
            let value = try RichTextSubscript(from: decoder)
            self = .`subscript`(value)
        case .richTextSuperscript:
            let value = try RichTextSuperscript(from: decoder)
            self = .superscript(value)
        case .richTextMarked:
            let value = try RichTextMarked(from: decoder)
            self = .marked(value)
        case .richTextPhoneNumber:
            let value = try RichTextPhoneNumber(from: decoder)
            self = .phoneNumber(value)
        case .richTextIcon:
            let value = try RichTextIcon(from: decoder)
            self = .icon(value)
        case .richTextReference:
            let value = try RichTextReference(from: decoder)
            self = .reference(value)
        case .richTextAnchor:
            let value = try RichTextAnchor(from: decoder)
            self = .anchor(value)
        case .richTextAnchorLink:
            let value = try RichTextAnchorLink(from: decoder)
            self = .anchorLink(value)
        case .richTexts:
            let value = try RichTexts(from: decoder)
            self = .s(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .plain(let value):
            try container.encode(Kind.richTextPlain, forKey: .type)
            try value.encode(to: encoder)
        case .bold(let value):
            try container.encode(Kind.richTextBold, forKey: .type)
            try value.encode(to: encoder)
        case .italic(let value):
            try container.encode(Kind.richTextItalic, forKey: .type)
            try value.encode(to: encoder)
        case .underline(let value):
            try container.encode(Kind.richTextUnderline, forKey: .type)
            try value.encode(to: encoder)
        case .strikethrough(let value):
            try container.encode(Kind.richTextStrikethrough, forKey: .type)
            try value.encode(to: encoder)
        case .fixed(let value):
            try container.encode(Kind.richTextFixed, forKey: .type)
            try value.encode(to: encoder)
        case .url(let value):
            try container.encode(Kind.richTextUrl, forKey: .type)
            try value.encode(to: encoder)
        case .emailAddress(let value):
            try container.encode(Kind.richTextEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        case .`subscript`(let value):
            try container.encode(Kind.richTextSubscript, forKey: .type)
            try value.encode(to: encoder)
        case .superscript(let value):
            try container.encode(Kind.richTextSuperscript, forKey: .type)
            try value.encode(to: encoder)
        case .marked(let value):
            try container.encode(Kind.richTextMarked, forKey: .type)
            try value.encode(to: encoder)
        case .phoneNumber(let value):
            try container.encode(Kind.richTextPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .icon(let value):
            try container.encode(Kind.richTextIcon, forKey: .type)
            try value.encode(to: encoder)
        case .reference(let value):
            try container.encode(Kind.richTextReference, forKey: .type)
            try value.encode(to: encoder)
        case .anchor(let value):
            try container.encode(Kind.richTextAnchor, forKey: .type)
            try value.encode(to: encoder)
        case .anchorLink(let value):
            try container.encode(Kind.richTextAnchorLink, forKey: .type)
            try value.encode(to: encoder)
        case .s(let value):
            try container.encode(Kind.richTexts, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A plain text
public struct RichTextPlain: Codable, Equatable, Hashable {

    /// Text
    public let text: String


    public init(text: String) {
        self.text = text
    }
}

/// A bold rich text
public struct RichTextBold: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// An italicized rich text
public struct RichTextItalic: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// An underlined rich text
public struct RichTextUnderline: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A strikethrough rich text
public struct RichTextStrikethrough: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A fixed-width rich text
public struct RichTextFixed: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A rich text URL link
public struct RichTextUrl: Codable, Equatable, Hashable {

    /// True, if the URL has cached instant view server-side
    public let isCached: Bool

    /// Text
    public let text: RichText

    /// URL
    public let url: String


    public init(
        isCached: Bool,
        text: RichText,
        url: String
    ) {
        self.isCached = isCached
        self.text = text
        self.url = url
    }
}

/// A rich text email link
public struct RichTextEmailAddress: Codable, Equatable, Hashable {

    /// Email address
    public let emailAddress: String

    /// Text
    public let text: RichText


    public init(
        emailAddress: String,
        text: RichText
    ) {
        self.emailAddress = emailAddress
        self.text = text
    }
}

/// A subscript rich text
public struct RichTextSubscript: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A superscript rich text
public struct RichTextSuperscript: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A marked rich text
public struct RichTextMarked: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A rich text phone number
public struct RichTextPhoneNumber: Codable, Equatable, Hashable {

    /// Phone number
    public let phoneNumber: String

    /// Text
    public let text: RichText


    public init(
        phoneNumber: String,
        text: RichText
    ) {
        self.phoneNumber = phoneNumber
        self.text = text
    }
}

/// A small image inside the text
public struct RichTextIcon: Codable, Equatable, Hashable {

    /// The image represented as a document. The image can be in GIF, JPEG or PNG format
    public let document: Document

    /// Height of a bounding box in which the image must be shown; 0 if unknown
    public let height: Int

    /// Width of a bounding box in which the image must be shown; 0 if unknown
    public let width: Int


    public init(
        document: Document,
        height: Int,
        width: Int
    ) {
        self.document = document
        self.height = height
        self.width = width
    }
}

/// A reference to a richTexts object on the same web page
public struct RichTextReference: Codable, Equatable, Hashable {

    /// The name of a richTextAnchor object, which is the first element of the target richTexts object
    public let anchorName: String

    /// The text
    public let text: RichText

    /// An HTTP URL, opening the reference
    public let url: String


    public init(
        anchorName: String,
        text: RichText,
        url: String
    ) {
        self.anchorName = anchorName
        self.text = text
        self.url = url
    }
}

/// An anchor
public struct RichTextAnchor: Codable, Equatable, Hashable {

    /// Anchor name
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A link to an anchor on the same web page
public struct RichTextAnchorLink: Codable, Equatable, Hashable {

    /// The anchor name. If the name is empty, the link must bring back to top
    public let anchorName: String

    /// The link text
    public let text: RichText

    /// An HTTP URL, opening the anchor
    public let url: String


    public init(
        anchorName: String,
        text: RichText,
        url: String
    ) {
        self.anchorName = anchorName
        self.text = text
        self.url = url
    }
}

/// A concatenation of rich texts
public struct RichTexts: Codable, Equatable, Hashable {

    /// Texts
    public let texts: [RichText]


    public init(texts: [RichText]) {
        self.texts = texts
    }
}

