//
//  SessionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Represents the type of a session
public enum SessionType: Codable, Equatable, Hashable {

    /// The session is running on an Android device
    case android

    /// The session is running on a generic Apple device
    case apple

    /// The session is running on the Brave browser
    case brave

    /// The session is running on the Chrome browser
    case chrome

    /// The session is running on the Edge browser
    case edge

    /// The session is running on the Firefox browser
    case firefox

    /// The session is running on an iPad device
    case ipad

    /// The session is running on an iPhone device
    case iphone

    /// The session is running on a Linux device
    case linux

    /// The session is running on a Mac device
    case mac

    /// The session is running on the Opera browser
    case opera

    /// The session is running on the Safari browser
    case safari

    /// The session is running on an Ubuntu device
    case ubuntu

    /// The session is running on an unknown type of device
    case unknown

    /// The session is running on the Vivaldi browser
    case vivaldi

    /// The session is running on a Windows device
    case windows

    /// The session is running on an Xbox console
    case xbox


    private enum Kind: String, Codable {
        case sessionTypeAndroid
        case sessionTypeApple
        case sessionTypeBrave
        case sessionTypeChrome
        case sessionTypeEdge
        case sessionTypeFirefox
        case sessionTypeIpad
        case sessionTypeIphone
        case sessionTypeLinux
        case sessionTypeMac
        case sessionTypeOpera
        case sessionTypeSafari
        case sessionTypeUbuntu
        case sessionTypeUnknown
        case sessionTypeVivaldi
        case sessionTypeWindows
        case sessionTypeXbox
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .sessionTypeAndroid:
            self = .android
        case .sessionTypeApple:
            self = .apple
        case .sessionTypeBrave:
            self = .brave
        case .sessionTypeChrome:
            self = .chrome
        case .sessionTypeEdge:
            self = .edge
        case .sessionTypeFirefox:
            self = .firefox
        case .sessionTypeIpad:
            self = .ipad
        case .sessionTypeIphone:
            self = .iphone
        case .sessionTypeLinux:
            self = .linux
        case .sessionTypeMac:
            self = .mac
        case .sessionTypeOpera:
            self = .opera
        case .sessionTypeSafari:
            self = .safari
        case .sessionTypeUbuntu:
            self = .ubuntu
        case .sessionTypeUnknown:
            self = .unknown
        case .sessionTypeVivaldi:
            self = .vivaldi
        case .sessionTypeWindows:
            self = .windows
        case .sessionTypeXbox:
            self = .xbox
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .android:
            try container.encode(Kind.sessionTypeAndroid, forKey: .type)
        case .apple:
            try container.encode(Kind.sessionTypeApple, forKey: .type)
        case .brave:
            try container.encode(Kind.sessionTypeBrave, forKey: .type)
        case .chrome:
            try container.encode(Kind.sessionTypeChrome, forKey: .type)
        case .edge:
            try container.encode(Kind.sessionTypeEdge, forKey: .type)
        case .firefox:
            try container.encode(Kind.sessionTypeFirefox, forKey: .type)
        case .ipad:
            try container.encode(Kind.sessionTypeIpad, forKey: .type)
        case .iphone:
            try container.encode(Kind.sessionTypeIphone, forKey: .type)
        case .linux:
            try container.encode(Kind.sessionTypeLinux, forKey: .type)
        case .mac:
            try container.encode(Kind.sessionTypeMac, forKey: .type)
        case .opera:
            try container.encode(Kind.sessionTypeOpera, forKey: .type)
        case .safari:
            try container.encode(Kind.sessionTypeSafari, forKey: .type)
        case .ubuntu:
            try container.encode(Kind.sessionTypeUbuntu, forKey: .type)
        case .unknown:
            try container.encode(Kind.sessionTypeUnknown, forKey: .type)
        case .vivaldi:
            try container.encode(Kind.sessionTypeVivaldi, forKey: .type)
        case .windows:
            try container.encode(Kind.sessionTypeWindows, forKey: .type)
        case .xbox:
            try container.encode(Kind.sessionTypeXbox, forKey: .type)
        }
    }
}

