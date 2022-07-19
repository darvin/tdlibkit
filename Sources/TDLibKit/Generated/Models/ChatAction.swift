//
//  ChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Describes the different types of activity in a chat
public enum ChatAction: Codable, Equatable, Hashable {

    /// The user is typing a message
    case typing

    /// The user is recording a video
    case recordingVideo

    /// The user is uploading a video
    case uploadingVideo(ChatActionUploadingVideo)

    /// The user is recording a voice note
    case recordingVoiceNote

    /// The user is uploading a voice note
    case uploadingVoiceNote(ChatActionUploadingVoiceNote)

    /// The user is uploading a photo
    case uploadingPhoto(ChatActionUploadingPhoto)

    /// The user is uploading a document
    case uploadingDocument(ChatActionUploadingDocument)

    /// The user is picking a sticker to send
    case choosingSticker

    /// The user is picking a location or venue to send
    case choosingLocation

    /// The user is picking a contact to send
    case choosingContact

    /// The user has started to play a game
    case startPlayingGame

    /// The user is recording a video note
    case recordingVideoNote

    /// The user is uploading a video note
    case uploadingVideoNote(ChatActionUploadingVideoNote)

    /// The user is watching animations sent by the other party by clicking on an animated emoji
    case watchingAnimations(ChatActionWatchingAnimations)

    /// The user has canceled the previous action
    case cancel


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
            self = .typing
        case .chatActionRecordingVideo:
            self = .recordingVideo
        case .chatActionUploadingVideo:
            let value = try ChatActionUploadingVideo(from: decoder)
            self = .uploadingVideo(value)
        case .chatActionRecordingVoiceNote:
            self = .recordingVoiceNote
        case .chatActionUploadingVoiceNote:
            let value = try ChatActionUploadingVoiceNote(from: decoder)
            self = .uploadingVoiceNote(value)
        case .chatActionUploadingPhoto:
            let value = try ChatActionUploadingPhoto(from: decoder)
            self = .uploadingPhoto(value)
        case .chatActionUploadingDocument:
            let value = try ChatActionUploadingDocument(from: decoder)
            self = .uploadingDocument(value)
        case .chatActionChoosingSticker:
            self = .choosingSticker
        case .chatActionChoosingLocation:
            self = .choosingLocation
        case .chatActionChoosingContact:
            self = .choosingContact
        case .chatActionStartPlayingGame:
            self = .startPlayingGame
        case .chatActionRecordingVideoNote:
            self = .recordingVideoNote
        case .chatActionUploadingVideoNote:
            let value = try ChatActionUploadingVideoNote(from: decoder)
            self = .uploadingVideoNote(value)
        case .chatActionWatchingAnimations:
            let value = try ChatActionWatchingAnimations(from: decoder)
            self = .watchingAnimations(value)
        case .chatActionCancel:
            self = .cancel
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .typing:
            try container.encode(Kind.chatActionTyping, forKey: .type)
        case .recordingVideo:
            try container.encode(Kind.chatActionRecordingVideo, forKey: .type)
        case .uploadingVideo(let value):
            try container.encode(Kind.chatActionUploadingVideo, forKey: .type)
            try value.encode(to: encoder)
        case .recordingVoiceNote:
            try container.encode(Kind.chatActionRecordingVoiceNote, forKey: .type)
        case .uploadingVoiceNote(let value):
            try container.encode(Kind.chatActionUploadingVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .uploadingPhoto(let value):
            try container.encode(Kind.chatActionUploadingPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .uploadingDocument(let value):
            try container.encode(Kind.chatActionUploadingDocument, forKey: .type)
            try value.encode(to: encoder)
        case .choosingSticker:
            try container.encode(Kind.chatActionChoosingSticker, forKey: .type)
        case .choosingLocation:
            try container.encode(Kind.chatActionChoosingLocation, forKey: .type)
        case .choosingContact:
            try container.encode(Kind.chatActionChoosingContact, forKey: .type)
        case .startPlayingGame:
            try container.encode(Kind.chatActionStartPlayingGame, forKey: .type)
        case .recordingVideoNote:
            try container.encode(Kind.chatActionRecordingVideoNote, forKey: .type)
        case .uploadingVideoNote(let value):
            try container.encode(Kind.chatActionUploadingVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .watchingAnimations(let value):
            try container.encode(Kind.chatActionWatchingAnimations, forKey: .type)
            try value.encode(to: encoder)
        case .cancel:
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

