//
//  ChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-d4890143
//  https://github.com/tdlib/td/tree/d4890143
//

import Foundation


/// Describes the different types of activity in a chat
public enum ChatAction: Codable, Equatable, Hashable {

    /// The user is typing a message
    case actionTyping

    /// The user is recording a video
    case actionRecordingVideo

    /// The user is uploading a video
    case actionUploadingVideo(ChatActionUploadingVideo)

    /// The user is recording a voice note
    case actionRecordingVoiceNote

    /// The user is uploading a voice note
    case actionUploadingVoiceNote(ChatActionUploadingVoiceNote)

    /// The user is uploading a photo
    case actionUploadingPhoto(ChatActionUploadingPhoto)

    /// The user is uploading a document
    case actionUploadingDocument(ChatActionUploadingDocument)

    /// The user is picking a sticker to send
    case actionChoosingSticker

    /// The user is picking a location or venue to send
    case actionChoosingLocation

    /// The user is picking a contact to send
    case actionChoosingContact

    /// The user has started to play a game
    case actionStartPlayingGame

    /// The user is recording a video note
    case actionRecordingVideoNote

    /// The user is uploading a video note
    case actionUploadingVideoNote(ChatActionUploadingVideoNote)

    /// The user is watching animations sent by the other party by clicking on an animated emoji
    case actionWatchingAnimations(ChatActionWatchingAnimations)

    /// The user has canceled the previous action
    case actionCancel


    private enum Kind: String, Codable {
        case chatActionTyping
        case chatActionRecordingVideo
        case chatActionUploadingVideo
        case chatActionRecordingVoiceNote
        case chatActionUploadingVoiceNote
        case chatActionUploadingPhoto
        case chatActionUploadingDocument
        case chatActionChoosingSticker
        case chatActionChoosingLocation
        case chatActionChoosingContact
        case chatActionStartPlayingGame
        case chatActionRecordingVideoNote
        case chatActionUploadingVideoNote
        case chatActionWatchingAnimations
        case chatActionCancel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatActionTyping:
            self = .actionTyping
        case .chatActionRecordingVideo:
            self = .actionRecordingVideo
        case .chatActionUploadingVideo:
            let value = try ChatActionUploadingVideo(from: decoder)
            self = .actionUploadingVideo(value)
        case .chatActionRecordingVoiceNote:
            self = .actionRecordingVoiceNote
        case .chatActionUploadingVoiceNote:
            let value = try ChatActionUploadingVoiceNote(from: decoder)
            self = .actionUploadingVoiceNote(value)
        case .chatActionUploadingPhoto:
            let value = try ChatActionUploadingPhoto(from: decoder)
            self = .actionUploadingPhoto(value)
        case .chatActionUploadingDocument:
            let value = try ChatActionUploadingDocument(from: decoder)
            self = .actionUploadingDocument(value)
        case .chatActionChoosingSticker:
            self = .actionChoosingSticker
        case .chatActionChoosingLocation:
            self = .actionChoosingLocation
        case .chatActionChoosingContact:
            self = .actionChoosingContact
        case .chatActionStartPlayingGame:
            self = .actionStartPlayingGame
        case .chatActionRecordingVideoNote:
            self = .actionRecordingVideoNote
        case .chatActionUploadingVideoNote:
            let value = try ChatActionUploadingVideoNote(from: decoder)
            self = .actionUploadingVideoNote(value)
        case .chatActionWatchingAnimations:
            let value = try ChatActionWatchingAnimations(from: decoder)
            self = .actionWatchingAnimations(value)
        case .chatActionCancel:
            self = .actionCancel
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .actionTyping:
            try container.encode(Kind.chatActionTyping, forKey: .type)
        case .actionRecordingVideo:
            try container.encode(Kind.chatActionRecordingVideo, forKey: .type)
        case .actionUploadingVideo(let value):
            try container.encode(Kind.chatActionUploadingVideo, forKey: .type)
            try value.encode(to: encoder)
        case .actionRecordingVoiceNote:
            try container.encode(Kind.chatActionRecordingVoiceNote, forKey: .type)
        case .actionUploadingVoiceNote(let value):
            try container.encode(Kind.chatActionUploadingVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .actionUploadingPhoto(let value):
            try container.encode(Kind.chatActionUploadingPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .actionUploadingDocument(let value):
            try container.encode(Kind.chatActionUploadingDocument, forKey: .type)
            try value.encode(to: encoder)
        case .actionChoosingSticker:
            try container.encode(Kind.chatActionChoosingSticker, forKey: .type)
        case .actionChoosingLocation:
            try container.encode(Kind.chatActionChoosingLocation, forKey: .type)
        case .actionChoosingContact:
            try container.encode(Kind.chatActionChoosingContact, forKey: .type)
        case .actionStartPlayingGame:
            try container.encode(Kind.chatActionStartPlayingGame, forKey: .type)
        case .actionRecordingVideoNote:
            try container.encode(Kind.chatActionRecordingVideoNote, forKey: .type)
        case .actionUploadingVideoNote(let value):
            try container.encode(Kind.chatActionUploadingVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .actionWatchingAnimations(let value):
            try container.encode(Kind.chatActionWatchingAnimations, forKey: .type)
            try value.encode(to: encoder)
        case .actionCancel:
            try container.encode(Kind.chatActionCancel, forKey: .type)
        }
    }
}

/// The user is uploading a video
public struct ChatActionUploadingVideo: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a voice note
public struct ChatActionUploadingVoiceNote: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a photo
public struct ChatActionUploadingPhoto: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a document
public struct ChatActionUploadingDocument: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a video note
public struct ChatActionUploadingVideoNote: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is watching animations sent by the other party by clicking on an animated emoji
public struct ChatActionWatchingAnimations: Codable, Equatable, Hashable {

    /// The animated emoji
    public let emoji: String


    public init(emoji: String) {
        self.emoji = emoji
    }
}

