//
//  ChatReportReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-4ac8be81
//  https://github.com/tdlib/td/tree/4ac8be81
//

import Foundation


/// Describes the reason why a chat is reported
public enum ChatReportReason: Codable, Equatable, Hashable {

    /// The chat contains spam messages
    case spam

    /// The chat promotes violence
    case violence

    /// The chat contains pornographic messages
    case pornography

    /// The chat has child abuse related content
    case childAbuse

    /// The chat contains copyrighted content
    case copyright

    /// The location-based chat is unrelated to its stated location
    case unrelatedLocation

    /// The chat represents a fake account
    case fake

    /// The chat has illegal drugs related content
    case illegalDrugs

    /// The chat contains messages with personal details
    case personalDetails

    /// A custom reason provided by the user
    case custom


    private enum Kind: String, Codable {
        case chatReportReasonSpam
        case chatReportReasonViolence
        case chatReportReasonPornography
        case chatReportReasonChildAbuse
        case chatReportReasonCopyright
        case chatReportReasonUnrelatedLocation
        case chatReportReasonFake
        case chatReportReasonIllegalDrugs
        case chatReportReasonPersonalDetails
        case chatReportReasonCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatReportReasonSpam:
            self = .spam
        case .chatReportReasonViolence:
            self = .violence
        case .chatReportReasonPornography:
            self = .pornography
        case .chatReportReasonChildAbuse:
            self = .childAbuse
        case .chatReportReasonCopyright:
            self = .copyright
        case .chatReportReasonUnrelatedLocation:
            self = .unrelatedLocation
        case .chatReportReasonFake:
            self = .fake
        case .chatReportReasonIllegalDrugs:
            self = .illegalDrugs
        case .chatReportReasonPersonalDetails:
            self = .personalDetails
        case .chatReportReasonCustom:
            self = .custom
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .spam:
            try container.encode(Kind.chatReportReasonSpam, forKey: .type)
        case .violence:
            try container.encode(Kind.chatReportReasonViolence, forKey: .type)
        case .pornography:
            try container.encode(Kind.chatReportReasonPornography, forKey: .type)
        case .childAbuse:
            try container.encode(Kind.chatReportReasonChildAbuse, forKey: .type)
        case .copyright:
            try container.encode(Kind.chatReportReasonCopyright, forKey: .type)
        case .unrelatedLocation:
            try container.encode(Kind.chatReportReasonUnrelatedLocation, forKey: .type)
        case .fake:
            try container.encode(Kind.chatReportReasonFake, forKey: .type)
        case .illegalDrugs:
            try container.encode(Kind.chatReportReasonIllegalDrugs, forKey: .type)
        case .personalDetails:
            try container.encode(Kind.chatReportReasonPersonalDetails, forKey: .type)
        case .custom:
            try container.encode(Kind.chatReportReasonCustom, forKey: .type)
        }
    }
}

