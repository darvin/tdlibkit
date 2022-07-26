//
//  InlineQueryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Represents a single result of an inline query
public enum InlineQueryResult: Codable, Equatable, Hashable {

    /// Represents a link to an article or web page
    case article(InlineQueryResultArticle)

    /// Represents a user contact
    case contact(InlineQueryResultContact)

    /// Represents a point on the map
    case location(InlineQueryResultLocation)

    /// Represents information about a venue
    case venue(InlineQueryResultVenue)

    /// Represents information about a game
    case game(InlineQueryResultGame)

    /// Represents an animation file
    case animation(InlineQueryResultAnimation)

    /// Represents an audio file
    case audio(InlineQueryResultAudio)

    /// Represents a document
    case document(InlineQueryResultDocument)

    /// Represents a photo
    case photo(InlineQueryResultPhoto)

    /// Represents a sticker
    case sticker(InlineQueryResultSticker)

    /// Represents a video
    case video(InlineQueryResultVideo)

    /// Represents a voice note
    case voiceNote(InlineQueryResultVoiceNote)


    private enum Kind: String, Codable {
        case inlineQueryResultArticle
        case inlineQueryResultContact
        case inlineQueryResultLocation
        case inlineQueryResultVenue
        case inlineQueryResultGame
        case inlineQueryResultAnimation
        case inlineQueryResultAudio
        case inlineQueryResultDocument
        case inlineQueryResultPhoto
        case inlineQueryResultSticker
        case inlineQueryResultVideo
        case inlineQueryResultVoiceNote
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inlineQueryResultArticle:
            let value = try InlineQueryResultArticle(from: decoder)
            self = .article(value)
        case .inlineQueryResultContact:
            let value = try InlineQueryResultContact(from: decoder)
            self = .contact(value)
        case .inlineQueryResultLocation:
            let value = try InlineQueryResultLocation(from: decoder)
            self = .location(value)
        case .inlineQueryResultVenue:
            let value = try InlineQueryResultVenue(from: decoder)
            self = .venue(value)
        case .inlineQueryResultGame:
            let value = try InlineQueryResultGame(from: decoder)
            self = .game(value)
        case .inlineQueryResultAnimation:
            let value = try InlineQueryResultAnimation(from: decoder)
            self = .animation(value)
        case .inlineQueryResultAudio:
            let value = try InlineQueryResultAudio(from: decoder)
            self = .audio(value)
        case .inlineQueryResultDocument:
            let value = try InlineQueryResultDocument(from: decoder)
            self = .document(value)
        case .inlineQueryResultPhoto:
            let value = try InlineQueryResultPhoto(from: decoder)
            self = .photo(value)
        case .inlineQueryResultSticker:
            let value = try InlineQueryResultSticker(from: decoder)
            self = .sticker(value)
        case .inlineQueryResultVideo:
            let value = try InlineQueryResultVideo(from: decoder)
            self = .video(value)
        case .inlineQueryResultVoiceNote:
            let value = try InlineQueryResultVoiceNote(from: decoder)
            self = .voiceNote(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .article(let value):
            try container.encode(Kind.inlineQueryResultArticle, forKey: .type)
            try value.encode(to: encoder)
        case .contact(let value):
            try container.encode(Kind.inlineQueryResultContact, forKey: .type)
            try value.encode(to: encoder)
        case .location(let value):
            try container.encode(Kind.inlineQueryResultLocation, forKey: .type)
            try value.encode(to: encoder)
        case .venue(let value):
            try container.encode(Kind.inlineQueryResultVenue, forKey: .type)
            try value.encode(to: encoder)
        case .game(let value):
            try container.encode(Kind.inlineQueryResultGame, forKey: .type)
            try value.encode(to: encoder)
        case .animation(let value):
            try container.encode(Kind.inlineQueryResultAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .audio(let value):
            try container.encode(Kind.inlineQueryResultAudio, forKey: .type)
            try value.encode(to: encoder)
        case .document(let value):
            try container.encode(Kind.inlineQueryResultDocument, forKey: .type)
            try value.encode(to: encoder)
        case .photo(let value):
            try container.encode(Kind.inlineQueryResultPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .sticker(let value):
            try container.encode(Kind.inlineQueryResultSticker, forKey: .type)
            try value.encode(to: encoder)
        case .video(let value):
            try container.encode(Kind.inlineQueryResultVideo, forKey: .type)
            try value.encode(to: encoder)
        case .voiceNote(let value):
            try container.encode(Kind.inlineQueryResultVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Represents a link to an article or web page
public struct InlineQueryResultArticle: Codable, Equatable, Hashable {

    public let description: String

    /// True, if the URL must be not shown
    public let hideUrl: Bool

    /// Unique identifier of the query result
    public let id: String

    /// Result thumbnail in JPEG format; may be null
    public let thumbnail: Thumbnail?

    /// Title of the result
    public let title: String

    /// URL of the result, if it exists
    public let url: String


    public init(
        description: String,
        hideUrl: Bool,
        id: String,
        thumbnail: Thumbnail?,
        title: String,
        url: String
    ) {
        self.description = description
        self.hideUrl = hideUrl
        self.id = id
        self.thumbnail = thumbnail
        self.title = title
        self.url = url
    }
}

/// Represents a user contact
public struct InlineQueryResultContact: Codable, Equatable, Hashable {

    /// A user contact
    public let contact: Contact

    /// Unique identifier of the query result
    public let id: String

    /// Result thumbnail in JPEG format; may be null
    public let thumbnail: Thumbnail?


    public init(
        contact: Contact,
        id: String,
        thumbnail: Thumbnail?
    ) {
        self.contact = contact
        self.id = id
        self.thumbnail = thumbnail
    }
}

/// Represents a point on the map
public struct InlineQueryResultLocation: Codable, Equatable, Hashable {

    /// Unique identifier of the query result
    public let id: String

    /// Location result
    public let location: Location

    /// Result thumbnail in JPEG format; may be null
    public let thumbnail: Thumbnail?

    /// Title of the result
    public let title: String


    public init(
        id: String,
        location: Location,
        thumbnail: Thumbnail?,
        title: String
    ) {
        self.id = id
        self.location = location
        self.thumbnail = thumbnail
        self.title = title
    }
}

/// Represents information about a venue
public struct InlineQueryResultVenue: Codable, Equatable, Hashable {

    /// Unique identifier of the query result
    public let id: String

    /// Result thumbnail in JPEG format; may be null
    public let thumbnail: Thumbnail?

    /// Venue result
    public let venue: Venue


    public init(
        id: String,
        thumbnail: Thumbnail?,
        venue: Venue
    ) {
        self.id = id
        self.thumbnail = thumbnail
        self.venue = venue
    }
}

/// Represents information about a game
public struct InlineQueryResultGame: Codable, Equatable, Hashable {

    /// Game result
    public let game: Game

    /// Unique identifier of the query result
    public let id: String


    public init(
        game: Game,
        id: String
    ) {
        self.game = game
        self.id = id
    }
}

/// Represents an animation file
public struct InlineQueryResultAnimation: Codable, Equatable, Hashable {

    /// Animation file
    public let animation: Animation

    /// Unique identifier of the query result
    public let id: String

    /// Animation title
    public let title: String


    public init(
        animation: Animation,
        id: String,
        title: String
    ) {
        self.animation = animation
        self.id = id
        self.title = title
    }
}

/// Represents an audio file
public struct InlineQueryResultAudio: Codable, Equatable, Hashable {

    /// Audio file
    public let audio: Audio

    /// Unique identifier of the query result
    public let id: String


    public init(
        audio: Audio,
        id: String
    ) {
        self.audio = audio
        self.id = id
    }
}

/// Represents a document
public struct InlineQueryResultDocument: Codable, Equatable, Hashable {

    public let description: String

    /// Document
    public let document: Document

    /// Unique identifier of the query result
    public let id: String

    /// Document title
    public let title: String


    public init(
        description: String,
        document: Document,
        id: String,
        title: String
    ) {
        self.description = description
        self.document = document
        self.id = id
        self.title = title
    }
}

/// Represents a photo
public struct InlineQueryResultPhoto: Codable, Equatable, Hashable {

    public let description: String

    /// Unique identifier of the query result
    public let id: String

    /// Photo
    public let photo: Photo

    /// Title of the result, if known
    public let title: String


    public init(
        description: String,
        id: String,
        photo: Photo,
        title: String
    ) {
        self.description = description
        self.id = id
        self.photo = photo
        self.title = title
    }
}

/// Represents a sticker
public struct InlineQueryResultSticker: Codable, Equatable, Hashable {

    /// Unique identifier of the query result
    public let id: String

    /// Sticker
    public let sticker: Sticker


    public init(
        id: String,
        sticker: Sticker
    ) {
        self.id = id
        self.sticker = sticker
    }
}

/// Represents a video
public struct InlineQueryResultVideo: Codable, Equatable, Hashable {

    public let description: String

    /// Unique identifier of the query result
    public let id: String

    /// Title of the video
    public let title: String

    /// Video
    public let video: Video


    public init(
        description: String,
        id: String,
        title: String,
        video: Video
    ) {
        self.description = description
        self.id = id
        self.title = title
        self.video = video
    }
}

/// Represents a voice note
public struct InlineQueryResultVoiceNote: Codable, Equatable, Hashable {

    /// Unique identifier of the query result
    public let id: String

    /// Title of the voice note
    public let title: String

    /// Voice note
    public let voiceNote: VoiceNote


    public init(
        id: String,
        title: String,
        voiceNote: VoiceNote
    ) {
        self.id = id
        self.title = title
        self.voiceNote = voiceNote
    }
}

