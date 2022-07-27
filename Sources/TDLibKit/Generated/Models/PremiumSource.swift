//
//  PremiumSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Describes a source from which the Premium features screen is opened
public enum PremiumSource: Codable, Equatable, Hashable {

    /// A limit was exceeded
    case limitExceeded(PremiumSourceLimitExceeded)

    /// A user tried to use a Premium feature
    case feature(PremiumSourceFeature)

    /// A user opened an internal link of the type internalLinkTypePremiumFeatures
    case link(PremiumSourceLink)

    /// A user opened the Premium features screen from settings
    case settings


    private enum Kind: String, Codable {
        case premiumSourceLimitExceeded
        case premiumSourceFeature
        case premiumSourceLink
        case premiumSourceSettings
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumSourceLimitExceeded:
            let value = try PremiumSourceLimitExceeded(from: decoder)
            self = .limitExceeded(value)
        case .premiumSourceFeature:
            let value = try PremiumSourceFeature(from: decoder)
            self = .feature(value)
        case .premiumSourceLink:
            let value = try PremiumSourceLink(from: decoder)
            self = .link(value)
        case .premiumSourceSettings:
            self = .settings
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .limitExceeded(let value):
            try container.encode(Kind.premiumSourceLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        case .feature(let value):
            try container.encode(Kind.premiumSourceFeature, forKey: .type)
            try value.encode(to: encoder)
        case .link(let value):
            try container.encode(Kind.premiumSourceLink, forKey: .type)
            try value.encode(to: encoder)
        case .settings:
            try container.encode(Kind.premiumSourceSettings, forKey: .type)
        }
    }
}

/// A limit was exceeded
public struct PremiumSourceLimitExceeded: Codable, Equatable, Hashable {

    /// Type of the exceeded limit
    public let limitType: PremiumLimitType


    public init(limitType: PremiumLimitType) {
        self.limitType = limitType
    }
}

/// A user tried to use a Premium feature
public struct PremiumSourceFeature: Codable, Equatable, Hashable {

    /// The used feature
    public let feature: PremiumFeature


    public init(feature: PremiumFeature) {
        self.feature = feature
    }
}

/// A user opened an internal link of the type internalLinkTypePremiumFeatures
public struct PremiumSourceLink: Codable, Equatable, Hashable {

    /// The referrer from the link
    public let referrer: String


    public init(referrer: String) {
        self.referrer = referrer
    }
}

