//
//  CallProblem.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Describes the exact type of a problem with a call
public enum CallProblem: Codable, Equatable, Hashable {

    /// The user heard their own voice
    case echo

    /// The user heard background noise
    case noise

    /// The other side kept disappearing
    case interruptions

    /// The speech was distorted
    case distortedSpeech

    /// The user couldn't hear the other side
    case silentLocal

    /// The other side couldn't hear the user
    case silentRemote

    /// The call ended unexpectedly
    case dropped

    /// The video was distorted
    case distortedVideo

    /// The video was pixelated
    case pixelatedVideo


    private enum Kind: String, Codable {
        case callProblemEcho
        case callProblemNoise
        case callProblemInterruptions
        case callProblemDistortedSpeech
        case callProblemSilentLocal
        case callProblemSilentRemote
        case callProblemDropped
        case callProblemDistortedVideo
        case callProblemPixelatedVideo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callProblemEcho:
            self = .echo
        case .callProblemNoise:
            self = .noise
        case .callProblemInterruptions:
            self = .interruptions
        case .callProblemDistortedSpeech:
            self = .distortedSpeech
        case .callProblemSilentLocal:
            self = .silentLocal
        case .callProblemSilentRemote:
            self = .silentRemote
        case .callProblemDropped:
            self = .dropped
        case .callProblemDistortedVideo:
            self = .distortedVideo
        case .callProblemPixelatedVideo:
            self = .pixelatedVideo
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .echo:
            try container.encode(Kind.callProblemEcho, forKey: .type)
        case .noise:
            try container.encode(Kind.callProblemNoise, forKey: .type)
        case .interruptions:
            try container.encode(Kind.callProblemInterruptions, forKey: .type)
        case .distortedSpeech:
            try container.encode(Kind.callProblemDistortedSpeech, forKey: .type)
        case .silentLocal:
            try container.encode(Kind.callProblemSilentLocal, forKey: .type)
        case .silentRemote:
            try container.encode(Kind.callProblemSilentRemote, forKey: .type)
        case .dropped:
            try container.encode(Kind.callProblemDropped, forKey: .type)
        case .distortedVideo:
            try container.encode(Kind.callProblemDistortedVideo, forKey: .type)
        case .pixelatedVideo:
            try container.encode(Kind.callProblemPixelatedVideo, forKey: .type)
        }
    }
}

