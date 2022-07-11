//
//  StickerType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-1dec0e20
//  https://github.com/tdlib/td/tree/1dec0e20
//

import Foundation


/// Describes type of a sticker
public enum StickerType: Codable, Equatable, Hashable {

    /// The sticker is an image in WEBP format
    case `static`

    /// The sticker is an animation in TGS format
    case animated

    /// The sticker is a video in WEBM format
    case video

    /// The sticker is a mask in WEBP format to be placed on photos or videos
    case mask(StickerTypeMask)


    private enum Kind: String, Codable {
        case stickerTypeStatic
        case stickerTypeAnimated
        case stickerTypeVideo
        case stickerTypeMask
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .stickerTypeStatic:
            self = .`static`
        case .stickerTypeAnimated:
            self = .animated
        case .stickerTypeVideo:
            self = .video
        case .stickerTypeMask:
            let value = try StickerTypeMask(from: decoder)
            self = .mask(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .`static`:
            try container.encode(Kind.stickerTypeStatic, forKey: .type)
        case .animated:
            try container.encode(Kind.stickerTypeAnimated, forKey: .type)
        case .video:
            try container.encode(Kind.stickerTypeVideo, forKey: .type)
        case .mask(let value):
            try container.encode(Kind.stickerTypeMask, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The sticker is a mask in WEBP format to be placed on photos or videos
public struct StickerTypeMask: Codable, Equatable, Hashable {

    /// Position where the mask is placed; may be null
    public let maskPosition: MaskPosition?


    public init(maskPosition: MaskPosition?) {
        self.maskPosition = maskPosition
    }
}

