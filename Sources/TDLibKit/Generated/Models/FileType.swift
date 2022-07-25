//
//  FileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Represents the type of a file
public enum FileType: Codable, Equatable, Hashable {

    /// The data is not a file
    case none

    /// The file is an animation
    case animation

    /// The file is an audio file
    case audio

    /// The file is a document
    case document

    /// The file is a notification sound
    case notificationSound

    /// The file is a photo
    case photo

    /// The file is a profile photo
    case profilePhoto

    /// The file was sent to a secret chat (the file type is not known to the server)
    case secret

    /// The file is a thumbnail of a file from a secret chat
    case secretThumbnail

    /// The file is a file from Secure storage used for storing Telegram Passport files
    case secure

    /// The file is a sticker
    case sticker

    /// The file is a thumbnail of another file
    case thumbnail

    /// The file type is not yet known
    case unknown

    /// The file is a video
    case video

    /// The file is a video note
    case videoNote

    /// The file is a voice note
    case voiceNote

    /// The file is a wallpaper or a background pattern
    case wallpaper


    private enum Kind: String, Codable {
        case fileTypeNone
        case fileTypeAnimation
        case fileTypeAudio
        case fileTypeDocument
        case fileTypeNotificationSound
        case fileTypePhoto
        case fileTypeProfilePhoto
        case fileTypeSecret
        case fileTypeSecretThumbnail
        case fileTypeSecure
        case fileTypeSticker
        case fileTypeThumbnail
        case fileTypeUnknown
        case fileTypeVideo
        case fileTypeVideoNote
        case fileTypeVoiceNote
        case fileTypeWallpaper
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .fileTypeNone:
            self = .none
        case .fileTypeAnimation:
            self = .animation
        case .fileTypeAudio:
            self = .audio
        case .fileTypeDocument:
            self = .document
        case .fileTypeNotificationSound:
            self = .notificationSound
        case .fileTypePhoto:
            self = .photo
        case .fileTypeProfilePhoto:
            self = .profilePhoto
        case .fileTypeSecret:
            self = .secret
        case .fileTypeSecretThumbnail:
            self = .secretThumbnail
        case .fileTypeSecure:
            self = .secure
        case .fileTypeSticker:
            self = .sticker
        case .fileTypeThumbnail:
            self = .thumbnail
        case .fileTypeUnknown:
            self = .unknown
        case .fileTypeVideo:
            self = .video
        case .fileTypeVideoNote:
            self = .videoNote
        case .fileTypeVoiceNote:
            self = .voiceNote
        case .fileTypeWallpaper:
            self = .wallpaper
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .none:
            try container.encode(Kind.fileTypeNone, forKey: .type)
        case .animation:
            try container.encode(Kind.fileTypeAnimation, forKey: .type)
        case .audio:
            try container.encode(Kind.fileTypeAudio, forKey: .type)
        case .document:
            try container.encode(Kind.fileTypeDocument, forKey: .type)
        case .notificationSound:
            try container.encode(Kind.fileTypeNotificationSound, forKey: .type)
        case .photo:
            try container.encode(Kind.fileTypePhoto, forKey: .type)
        case .profilePhoto:
            try container.encode(Kind.fileTypeProfilePhoto, forKey: .type)
        case .secret:
            try container.encode(Kind.fileTypeSecret, forKey: .type)
        case .secretThumbnail:
            try container.encode(Kind.fileTypeSecretThumbnail, forKey: .type)
        case .secure:
            try container.encode(Kind.fileTypeSecure, forKey: .type)
        case .sticker:
            try container.encode(Kind.fileTypeSticker, forKey: .type)
        case .thumbnail:
            try container.encode(Kind.fileTypeThumbnail, forKey: .type)
        case .unknown:
            try container.encode(Kind.fileTypeUnknown, forKey: .type)
        case .video:
            try container.encode(Kind.fileTypeVideo, forKey: .type)
        case .videoNote:
            try container.encode(Kind.fileTypeVideoNote, forKey: .type)
        case .voiceNote:
            try container.encode(Kind.fileTypeVoiceNote, forKey: .type)
        case .wallpaper:
            try container.encode(Kind.fileTypeWallpaper, forKey: .type)
        }
    }
}

