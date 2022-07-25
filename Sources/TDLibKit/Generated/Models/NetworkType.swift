//
//  NetworkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-a63642c8
//  https://github.com/tdlib/td/tree/a63642c8
//

import Foundation


/// Represents the type of a network
public enum NetworkType: Codable, Equatable, Hashable {

    /// The network is not available
    case none

    /// A mobile network
    case mobile

    /// A mobile roaming network
    case mobileRoaming

    /// A Wi-Fi network
    case wiFi

    /// A different network type (e.g., Ethernet network)
    case other


    private enum Kind: String, Codable {
        case networkTypeNone
        case networkTypeMobile
        case networkTypeMobileRoaming
        case networkTypeWiFi
        case networkTypeOther
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .networkTypeNone:
            self = .none
        case .networkTypeMobile:
            self = .mobile
        case .networkTypeMobileRoaming:
            self = .mobileRoaming
        case .networkTypeWiFi:
            self = .wiFi
        case .networkTypeOther:
            self = .other
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .none:
            try container.encode(Kind.networkTypeNone, forKey: .type)
        case .mobile:
            try container.encode(Kind.networkTypeMobile, forKey: .type)
        case .mobileRoaming:
            try container.encode(Kind.networkTypeMobileRoaming, forKey: .type)
        case .wiFi:
            try container.encode(Kind.networkTypeWiFi, forKey: .type)
        case .other:
            try container.encode(Kind.networkTypeOther, forKey: .type)
        }
    }
}

