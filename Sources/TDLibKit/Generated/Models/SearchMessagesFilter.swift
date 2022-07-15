//
//  SearchMessagesFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Represents a filter for message search results
public enum SearchMessagesFilter: Codable, Equatable, Hashable {

    /// Returns all found messages, no filter is applied
    case empty

    /// Returns only animation messages
    case animation

    /// Returns only audio messages
    case audio

    /// Returns only document messages
    case document

    /// Returns only photo messages
    case photo

    /// Returns only video messages
    case video

    /// Returns only voice note messages
    case voiceNote

    /// Returns only photo and video messages
    case photoAndVideo

    /// Returns only messages containing URLs
    case url

    /// Returns only messages containing chat photos
    case chatPhoto

    /// Returns only video note messages
    case videoNote

    /// Returns only voice and video note messages
    case voiceAndVideoNote

    /// Returns only messages with mentions of the current user, or messages that are replies to their messages
    case mention

    /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
    case unreadMention

    /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
    case unreadReaction

    /// Returns only failed to send messages. This filter can be used only if the message database is used
    case failedToSend

    /// Returns only pinned messages
    case pinned


    private enum Kind: String, Codable {
        case searchMessagesFilterEmpty
        case searchMessagesFilterAnimation
        case searchMessagesFilterAudio
        case searchMessagesFilterDocument
        case searchMessagesFilterPhoto
        case searchMessagesFilterVideo
        case searchMessagesFilterVoiceNote
        case searchMessagesFilterPhotoAndVideo
        case searchMessagesFilterUrl
        case searchMessagesFilterChatPhoto
        case searchMessagesFilterVideoNote
        case searchMessagesFilterVoiceAndVideoNote
        case searchMessagesFilterMention
        case searchMessagesFilterUnreadMention
        case searchMessagesFilterUnreadReaction
        case searchMessagesFilterFailedToSend
        case searchMessagesFilterPinned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .searchMessagesFilterEmpty:
            self = .empty
        case .searchMessagesFilterAnimation:
            self = .animation
        case .searchMessagesFilterAudio:
            self = .audio
        case .searchMessagesFilterDocument:
            self = .document
        case .searchMessagesFilterPhoto:
            self = .photo
        case .searchMessagesFilterVideo:
            self = .video
        case .searchMessagesFilterVoiceNote:
            self = .voiceNote
        case .searchMessagesFilterPhotoAndVideo:
            self = .photoAndVideo
        case .searchMessagesFilterUrl:
            self = .url
        case .searchMessagesFilterChatPhoto:
            self = .chatPhoto
        case .searchMessagesFilterVideoNote:
            self = .videoNote
        case .searchMessagesFilterVoiceAndVideoNote:
            self = .voiceAndVideoNote
        case .searchMessagesFilterMention:
            self = .mention
        case .searchMessagesFilterUnreadMention:
            self = .unreadMention
        case .searchMessagesFilterUnreadReaction:
            self = .unreadReaction
        case .searchMessagesFilterFailedToSend:
            self = .failedToSend
        case .searchMessagesFilterPinned:
            self = .pinned
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .empty:
            try container.encode(Kind.searchMessagesFilterEmpty, forKey: .type)
        case .animation:
            try container.encode(Kind.searchMessagesFilterAnimation, forKey: .type)
        case .audio:
            try container.encode(Kind.searchMessagesFilterAudio, forKey: .type)
        case .document:
            try container.encode(Kind.searchMessagesFilterDocument, forKey: .type)
        case .photo:
            try container.encode(Kind.searchMessagesFilterPhoto, forKey: .type)
        case .video:
            try container.encode(Kind.searchMessagesFilterVideo, forKey: .type)
        case .voiceNote:
            try container.encode(Kind.searchMessagesFilterVoiceNote, forKey: .type)
        case .photoAndVideo:
            try container.encode(Kind.searchMessagesFilterPhotoAndVideo, forKey: .type)
        case .url:
            try container.encode(Kind.searchMessagesFilterUrl, forKey: .type)
        case .chatPhoto:
            try container.encode(Kind.searchMessagesFilterChatPhoto, forKey: .type)
        case .videoNote:
            try container.encode(Kind.searchMessagesFilterVideoNote, forKey: .type)
        case .voiceAndVideoNote:
            try container.encode(Kind.searchMessagesFilterVoiceAndVideoNote, forKey: .type)
        case .mention:
            try container.encode(Kind.searchMessagesFilterMention, forKey: .type)
        case .unreadMention:
            try container.encode(Kind.searchMessagesFilterUnreadMention, forKey: .type)
        case .unreadReaction:
            try container.encode(Kind.searchMessagesFilterUnreadReaction, forKey: .type)
        case .failedToSend:
            try container.encode(Kind.searchMessagesFilterFailedToSend, forKey: .type)
        case .pinned:
            try container.encode(Kind.searchMessagesFilterPinned, forKey: .type)
        }
    }
}

