//
//  PushMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-1dec0e20
//  https://github.com/tdlib/td/tree/1dec0e20
//

import Foundation


/// Contains content of a push message notification
public enum PushMessageContent: Codable, Equatable, Hashable {

    /// A general message with hidden content
    case contentHidden(PushMessageContentHidden)

    /// An animation message (GIF-style).
    case contentAnimation(PushMessageContentAnimation)

    /// An audio message
    case contentAudio(PushMessageContentAudio)

    /// A message with a user contact
    case contentContact(PushMessageContentContact)

    /// A contact has registered with Telegram
    case contentContactRegistered

    /// A document message (a general file)
    case contentDocument(PushMessageContentDocument)

    /// A message with a game
    case contentGame(PushMessageContentGame)

    /// A new high score was achieved in a game
    case contentGameScore(PushMessageContentGameScore)

    /// A message with an invoice from a bot
    case contentInvoice(PushMessageContentInvoice)

    /// A message with a location
    case contentLocation(PushMessageContentLocation)

    /// A photo message
    case contentPhoto(PushMessageContentPhoto)

    /// A message with a poll
    case contentPoll(PushMessageContentPoll)

    /// A screenshot of a message in the chat has been taken
    case contentScreenshotTaken

    /// A message with a sticker
    case contentSticker(PushMessageContentSticker)

    /// A text message
    case contentText(PushMessageContentText)

    /// A video message
    case contentVideo(PushMessageContentVideo)

    /// A video note message
    case contentVideoNote(PushMessageContentVideoNote)

    /// A voice note message
    case contentVoiceNote(PushMessageContentVoiceNote)

    /// A newly created basic group
    case contentBasicGroupChatCreate

    /// New chat members were invited to a group
    case contentChatAddMembers(PushMessageContentChatAddMembers)

    /// A chat photo was edited
    case contentChatChangePhoto

    /// A chat title was edited
    case contentChatChangeTitle(PushMessageContentChatChangeTitle)

    /// A chat theme was edited
    case contentChatSetTheme(PushMessageContentChatSetTheme)

    /// A chat member was deleted
    case contentChatDeleteMember(PushMessageContentChatDeleteMember)

    /// A new member joined the chat via an invite link
    case contentChatJoinByLink

    /// A new member was accepted to the chat by an administrator
    case contentChatJoinByRequest

    /// A new recurrent payment was made by the current user
    case contentRecurringPayment(PushMessageContentRecurringPayment)

    /// A forwarded messages
    case contentMessageForwards(PushMessageContentMessageForwards)

    /// A media album
    case contentMediaAlbum(PushMessageContentMediaAlbum)


    private enum Kind: String, Codable {
        case pushMessageContentHidden
        case pushMessageContentAnimation
        case pushMessageContentAudio
        case pushMessageContentContact
        case pushMessageContentContactRegistered
        case pushMessageContentDocument
        case pushMessageContentGame
        case pushMessageContentGameScore
        case pushMessageContentInvoice
        case pushMessageContentLocation
        case pushMessageContentPhoto
        case pushMessageContentPoll
        case pushMessageContentScreenshotTaken
        case pushMessageContentSticker
        case pushMessageContentText
        case pushMessageContentVideo
        case pushMessageContentVideoNote
        case pushMessageContentVoiceNote
        case pushMessageContentBasicGroupChatCreate
        case pushMessageContentChatAddMembers
        case pushMessageContentChatChangePhoto
        case pushMessageContentChatChangeTitle
        case pushMessageContentChatSetTheme
        case pushMessageContentChatDeleteMember
        case pushMessageContentChatJoinByLink
        case pushMessageContentChatJoinByRequest
        case pushMessageContentRecurringPayment
        case pushMessageContentMessageForwards
        case pushMessageContentMediaAlbum
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pushMessageContentHidden:
            let value = try PushMessageContentHidden(from: decoder)
            self = .contentHidden(value)
        case .pushMessageContentAnimation:
            let value = try PushMessageContentAnimation(from: decoder)
            self = .contentAnimation(value)
        case .pushMessageContentAudio:
            let value = try PushMessageContentAudio(from: decoder)
            self = .contentAudio(value)
        case .pushMessageContentContact:
            let value = try PushMessageContentContact(from: decoder)
            self = .contentContact(value)
        case .pushMessageContentContactRegistered:
            self = .contentContactRegistered
        case .pushMessageContentDocument:
            let value = try PushMessageContentDocument(from: decoder)
            self = .contentDocument(value)
        case .pushMessageContentGame:
            let value = try PushMessageContentGame(from: decoder)
            self = .contentGame(value)
        case .pushMessageContentGameScore:
            let value = try PushMessageContentGameScore(from: decoder)
            self = .contentGameScore(value)
        case .pushMessageContentInvoice:
            let value = try PushMessageContentInvoice(from: decoder)
            self = .contentInvoice(value)
        case .pushMessageContentLocation:
            let value = try PushMessageContentLocation(from: decoder)
            self = .contentLocation(value)
        case .pushMessageContentPhoto:
            let value = try PushMessageContentPhoto(from: decoder)
            self = .contentPhoto(value)
        case .pushMessageContentPoll:
            let value = try PushMessageContentPoll(from: decoder)
            self = .contentPoll(value)
        case .pushMessageContentScreenshotTaken:
            self = .contentScreenshotTaken
        case .pushMessageContentSticker:
            let value = try PushMessageContentSticker(from: decoder)
            self = .contentSticker(value)
        case .pushMessageContentText:
            let value = try PushMessageContentText(from: decoder)
            self = .contentText(value)
        case .pushMessageContentVideo:
            let value = try PushMessageContentVideo(from: decoder)
            self = .contentVideo(value)
        case .pushMessageContentVideoNote:
            let value = try PushMessageContentVideoNote(from: decoder)
            self = .contentVideoNote(value)
        case .pushMessageContentVoiceNote:
            let value = try PushMessageContentVoiceNote(from: decoder)
            self = .contentVoiceNote(value)
        case .pushMessageContentBasicGroupChatCreate:
            self = .contentBasicGroupChatCreate
        case .pushMessageContentChatAddMembers:
            let value = try PushMessageContentChatAddMembers(from: decoder)
            self = .contentChatAddMembers(value)
        case .pushMessageContentChatChangePhoto:
            self = .contentChatChangePhoto
        case .pushMessageContentChatChangeTitle:
            let value = try PushMessageContentChatChangeTitle(from: decoder)
            self = .contentChatChangeTitle(value)
        case .pushMessageContentChatSetTheme:
            let value = try PushMessageContentChatSetTheme(from: decoder)
            self = .contentChatSetTheme(value)
        case .pushMessageContentChatDeleteMember:
            let value = try PushMessageContentChatDeleteMember(from: decoder)
            self = .contentChatDeleteMember(value)
        case .pushMessageContentChatJoinByLink:
            self = .contentChatJoinByLink
        case .pushMessageContentChatJoinByRequest:
            self = .contentChatJoinByRequest
        case .pushMessageContentRecurringPayment:
            let value = try PushMessageContentRecurringPayment(from: decoder)
            self = .contentRecurringPayment(value)
        case .pushMessageContentMessageForwards:
            let value = try PushMessageContentMessageForwards(from: decoder)
            self = .contentMessageForwards(value)
        case .pushMessageContentMediaAlbum:
            let value = try PushMessageContentMediaAlbum(from: decoder)
            self = .contentMediaAlbum(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .contentHidden(let value):
            try container.encode(Kind.pushMessageContentHidden, forKey: .type)
            try value.encode(to: encoder)
        case .contentAnimation(let value):
            try container.encode(Kind.pushMessageContentAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .contentAudio(let value):
            try container.encode(Kind.pushMessageContentAudio, forKey: .type)
            try value.encode(to: encoder)
        case .contentContact(let value):
            try container.encode(Kind.pushMessageContentContact, forKey: .type)
            try value.encode(to: encoder)
        case .contentContactRegistered:
            try container.encode(Kind.pushMessageContentContactRegistered, forKey: .type)
        case .contentDocument(let value):
            try container.encode(Kind.pushMessageContentDocument, forKey: .type)
            try value.encode(to: encoder)
        case .contentGame(let value):
            try container.encode(Kind.pushMessageContentGame, forKey: .type)
            try value.encode(to: encoder)
        case .contentGameScore(let value):
            try container.encode(Kind.pushMessageContentGameScore, forKey: .type)
            try value.encode(to: encoder)
        case .contentInvoice(let value):
            try container.encode(Kind.pushMessageContentInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .contentLocation(let value):
            try container.encode(Kind.pushMessageContentLocation, forKey: .type)
            try value.encode(to: encoder)
        case .contentPhoto(let value):
            try container.encode(Kind.pushMessageContentPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .contentPoll(let value):
            try container.encode(Kind.pushMessageContentPoll, forKey: .type)
            try value.encode(to: encoder)
        case .contentScreenshotTaken:
            try container.encode(Kind.pushMessageContentScreenshotTaken, forKey: .type)
        case .contentSticker(let value):
            try container.encode(Kind.pushMessageContentSticker, forKey: .type)
            try value.encode(to: encoder)
        case .contentText(let value):
            try container.encode(Kind.pushMessageContentText, forKey: .type)
            try value.encode(to: encoder)
        case .contentVideo(let value):
            try container.encode(Kind.pushMessageContentVideo, forKey: .type)
            try value.encode(to: encoder)
        case .contentVideoNote(let value):
            try container.encode(Kind.pushMessageContentVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .contentVoiceNote(let value):
            try container.encode(Kind.pushMessageContentVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .contentBasicGroupChatCreate:
            try container.encode(Kind.pushMessageContentBasicGroupChatCreate, forKey: .type)
        case .contentChatAddMembers(let value):
            try container.encode(Kind.pushMessageContentChatAddMembers, forKey: .type)
            try value.encode(to: encoder)
        case .contentChatChangePhoto:
            try container.encode(Kind.pushMessageContentChatChangePhoto, forKey: .type)
        case .contentChatChangeTitle(let value):
            try container.encode(Kind.pushMessageContentChatChangeTitle, forKey: .type)
            try value.encode(to: encoder)
        case .contentChatSetTheme(let value):
            try container.encode(Kind.pushMessageContentChatSetTheme, forKey: .type)
            try value.encode(to: encoder)
        case .contentChatDeleteMember(let value):
            try container.encode(Kind.pushMessageContentChatDeleteMember, forKey: .type)
            try value.encode(to: encoder)
        case .contentChatJoinByLink:
            try container.encode(Kind.pushMessageContentChatJoinByLink, forKey: .type)
        case .contentChatJoinByRequest:
            try container.encode(Kind.pushMessageContentChatJoinByRequest, forKey: .type)
        case .contentRecurringPayment(let value):
            try container.encode(Kind.pushMessageContentRecurringPayment, forKey: .type)
            try value.encode(to: encoder)
        case .contentMessageForwards(let value):
            try container.encode(Kind.pushMessageContentMessageForwards, forKey: .type)
            try value.encode(to: encoder)
        case .contentMediaAlbum(let value):
            try container.encode(Kind.pushMessageContentMediaAlbum, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A general message with hidden content
public struct PushMessageContentHidden: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(isPinned: Bool) {
        self.isPinned = isPinned
    }
}

/// An animation message (GIF-style).
public struct PushMessageContentAnimation: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let animation: Animation?

    /// Animation caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        animation: Animation?,
        caption: String,
        isPinned: Bool
    ) {
        self.animation = animation
        self.caption = caption
        self.isPinned = isPinned
    }
}

/// An audio message
public struct PushMessageContentAudio: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let audio: Audio?

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        audio: Audio?,
        isPinned: Bool
    ) {
        self.audio = audio
        self.isPinned = isPinned
    }
}

/// A message with a user contact
public struct PushMessageContentContact: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Contact's name
    public let name: String


    public init(
        isPinned: Bool,
        name: String
    ) {
        self.isPinned = isPinned
        self.name = name
    }
}

/// A document message (a general file)
public struct PushMessageContentDocument: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let document: Document?

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        document: Document?,
        isPinned: Bool
    ) {
        self.document = document
        self.isPinned = isPinned
    }
}

/// A message with a game
public struct PushMessageContentGame: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Game title, empty for pinned game message
    public let title: String


    public init(
        isPinned: Bool,
        title: String
    ) {
        self.isPinned = isPinned
        self.title = title
    }
}

/// A new high score was achieved in a game
public struct PushMessageContentGameScore: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// New score, 0 for pinned message
    public let score: Int

    /// Game title, empty for pinned message
    public let title: String


    public init(
        isPinned: Bool,
        score: Int,
        title: String
    ) {
        self.isPinned = isPinned
        self.score = score
        self.title = title
    }
}

/// A message with an invoice from a bot
public struct PushMessageContentInvoice: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Product price
    public let price: String


    public init(
        isPinned: Bool,
        price: String
    ) {
        self.isPinned = isPinned
        self.price = price
    }
}

/// A message with a location
public struct PushMessageContentLocation: Codable, Equatable, Hashable {

    /// True, if the location is live
    public let isLive: Bool

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        isLive: Bool,
        isPinned: Bool
    ) {
        self.isLive = isLive
        self.isPinned = isPinned
    }
}

/// A photo message
public struct PushMessageContentPhoto: Codable, Equatable, Hashable {

    /// Photo caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the photo is secret
    public let isSecret: Bool

    /// Message content; may be null
    public let photo: Photo?


    public init(
        caption: String,
        isPinned: Bool,
        isSecret: Bool,
        photo: Photo?
    ) {
        self.caption = caption
        self.isPinned = isPinned
        self.isSecret = isSecret
        self.photo = photo
    }
}

/// A message with a poll
public struct PushMessageContentPoll: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the poll is regular and not in quiz mode
    public let isRegular: Bool

    /// Poll question
    public let question: String


    public init(
        isPinned: Bool,
        isRegular: Bool,
        question: String
    ) {
        self.isPinned = isPinned
        self.isRegular = isRegular
        self.question = question
    }
}

/// A message with a sticker
public struct PushMessageContentSticker: Codable, Equatable, Hashable {

    /// Emoji corresponding to the sticker; may be empty
    public let emoji: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let sticker: Sticker?


    public init(
        emoji: String,
        isPinned: Bool,
        sticker: Sticker?
    ) {
        self.emoji = emoji
        self.isPinned = isPinned
        self.sticker = sticker
    }
}

/// A text message
public struct PushMessageContentText: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message text
    public let text: String


    public init(
        isPinned: Bool,
        text: String
    ) {
        self.isPinned = isPinned
        self.text = text
    }
}

/// A video message
public struct PushMessageContentVideo: Codable, Equatable, Hashable {

    /// Video caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the video is secret
    public let isSecret: Bool

    /// Message content; may be null
    public let video: Video?


    public init(
        caption: String,
        isPinned: Bool,
        isSecret: Bool,
        video: Video?
    ) {
        self.caption = caption
        self.isPinned = isPinned
        self.isSecret = isSecret
        self.video = video
    }
}

/// A video note message
public struct PushMessageContentVideoNote: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let videoNote: VideoNote?


    public init(
        isPinned: Bool,
        videoNote: VideoNote?
    ) {
        self.isPinned = isPinned
        self.videoNote = videoNote
    }
}

/// A voice note message
public struct PushMessageContentVoiceNote: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let voiceNote: VoiceNote?


    public init(
        isPinned: Bool,
        voiceNote: VoiceNote?
    ) {
        self.isPinned = isPinned
        self.voiceNote = voiceNote
    }
}

/// New chat members were invited to a group
public struct PushMessageContentChatAddMembers: Codable, Equatable, Hashable {

    /// True, if the current user was added to the group
    public let isCurrentUser: Bool

    /// True, if the user has returned to the group themselves
    public let isReturned: Bool

    /// Name of the added member
    public let memberName: String


    public init(
        isCurrentUser: Bool,
        isReturned: Bool,
        memberName: String
    ) {
        self.isCurrentUser = isCurrentUser
        self.isReturned = isReturned
        self.memberName = memberName
    }
}

/// A chat title was edited
public struct PushMessageContentChatChangeTitle: Codable, Equatable, Hashable {

    /// New chat title
    public let title: String


    public init(title: String) {
        self.title = title
    }
}

/// A chat theme was edited
public struct PushMessageContentChatSetTheme: Codable, Equatable, Hashable {

    /// If non-empty, name of a new theme, set for the chat. Otherwise chat theme was reset to the default one
    public let themeName: String


    public init(themeName: String) {
        self.themeName = themeName
    }
}

/// A chat member was deleted
public struct PushMessageContentChatDeleteMember: Codable, Equatable, Hashable {

    /// True, if the current user was deleted from the group
    public let isCurrentUser: Bool

    /// True, if the user has left the group themselves
    public let isLeft: Bool

    /// Name of the deleted member
    public let memberName: String


    public init(
        isCurrentUser: Bool,
        isLeft: Bool,
        memberName: String
    ) {
        self.isCurrentUser = isCurrentUser
        self.isLeft = isLeft
        self.memberName = memberName
    }
}

/// A new recurrent payment was made by the current user
public struct PushMessageContentRecurringPayment: Codable, Equatable, Hashable {

    /// The paid amount
    public let amount: String


    public init(amount: String) {
        self.amount = amount
    }
}

/// A forwarded messages
public struct PushMessageContentMessageForwards: Codable, Equatable, Hashable {

    /// Number of forwarded messages
    public let totalCount: Int


    public init(totalCount: Int) {
        self.totalCount = totalCount
    }
}

/// A media album
public struct PushMessageContentMediaAlbum: Codable, Equatable, Hashable {

    /// True, if the album has at least one audio file
    public let hasAudios: Bool

    /// True, if the album has at least one document
    public let hasDocuments: Bool

    /// True, if the album has at least one photo
    public let hasPhotos: Bool

    /// True, if the album has at least one video
    public let hasVideos: Bool

    /// Number of messages in the album
    public let totalCount: Int


    public init(
        hasAudios: Bool,
        hasDocuments: Bool,
        hasPhotos: Bool,
        hasVideos: Bool,
        totalCount: Int
    ) {
        self.hasAudios = hasAudios
        self.hasDocuments = hasDocuments
        self.hasPhotos = hasPhotos
        self.hasVideos = hasVideos
        self.totalCount = totalCount
    }
}

