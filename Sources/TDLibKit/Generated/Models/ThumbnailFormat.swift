//
//  ThumbnailFormat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-d4890143
//  https://github.com/tdlib/td/tree/d4890143
//

import Foundation


/// Describes format of a thumbnail
public enum ThumbnailFormat: Codable, Equatable, Hashable {

    /// The thumbnail is in JPEG format
    case jpeg

    /// The thumbnail is in static GIF format. It will be used only for some bot inline results
    case gif

    /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
    case mpeg4

    /// The thumbnail is in PNG format. It will be used only for background patterns
    case png

    /// The thumbnail is in TGS format. It will be used only for TGS sticker sets
    case tgs

    /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets
    case webm

    /// The thumbnail is in WEBP format. It will be used only for some stickers
    case webp


    private enum Kind: String, Codable {
        case thumbnailFormatJpeg
        case thumbnailFormatGif
        case thumbnailFormatMpeg4
        case thumbnailFormatPng
        case thumbnailFormatTgs
        case thumbnailFormatWebm
        case thumbnailFormatWebp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .thumbnailFormatJpeg:
            self = .jpeg
        case .thumbnailFormatGif:
            self = .gif
        case .thumbnailFormatMpeg4:
            self = .mpeg4
        case .thumbnailFormatPng:
            self = .png
        case .thumbnailFormatTgs:
            self = .tgs
        case .thumbnailFormatWebm:
            self = .webm
        case .thumbnailFormatWebp:
            self = .webp
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .jpeg:
            try container.encode(Kind.thumbnailFormatJpeg, forKey: .type)
        case .gif:
            try container.encode(Kind.thumbnailFormatGif, forKey: .type)
        case .mpeg4:
            try container.encode(Kind.thumbnailFormatMpeg4, forKey: .type)
        case .png:
            try container.encode(Kind.thumbnailFormatPng, forKey: .type)
        case .tgs:
            try container.encode(Kind.thumbnailFormatTgs, forKey: .type)
        case .webm:
            try container.encode(Kind.thumbnailFormatWebm, forKey: .type)
        case .webp:
            try container.encode(Kind.thumbnailFormatWebp, forKey: .type)
        }
    }
}

