//
//  GroupCallVideoQuality.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Describes the quality of a group call video
public enum GroupCallVideoQuality: Codable, Equatable, Hashable {

    /// The worst available video quality
    case thumbnail

    /// The medium video quality
    case medium

    /// The best available video quality
    case full


    private enum Kind: String, Codable {
        case groupCallVideoQualityThumbnail
        case groupCallVideoQualityMedium
        case groupCallVideoQualityFull
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .groupCallVideoQualityThumbnail:
            self = .thumbnail
        case .groupCallVideoQualityMedium:
            self = .medium
        case .groupCallVideoQualityFull:
            self = .full
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .thumbnail:
            try container.encode(Kind.groupCallVideoQualityThumbnail, forKey: .type)
        case .medium:
            try container.encode(Kind.groupCallVideoQualityMedium, forKey: .type)
        case .full:
            try container.encode(Kind.groupCallVideoQualityFull, forKey: .type)
        }
    }
}

