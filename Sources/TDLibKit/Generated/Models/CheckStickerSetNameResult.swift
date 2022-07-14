//
//  CheckStickerSetNameResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Represents result of checking whether a name can be used for a new sticker set
public enum CheckStickerSetNameResult: Codable, Equatable, Hashable {

    /// The name can be set
    case ok

    /// The name is invalid
    case nameInvalid

    /// The name is occupied
    case nameOccupied


    private enum Kind: String, Codable {
        case checkStickerSetNameResultOk
        case checkStickerSetNameResultNameInvalid
        case checkStickerSetNameResultNameOccupied
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .checkStickerSetNameResultOk:
            self = .ok
        case .checkStickerSetNameResultNameInvalid:
            self = .nameInvalid
        case .checkStickerSetNameResultNameOccupied:
            self = .nameOccupied
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .ok:
            try container.encode(Kind.checkStickerSetNameResultOk, forKey: .type)
        case .nameInvalid:
            try container.encode(Kind.checkStickerSetNameResultNameInvalid, forKey: .type)
        case .nameOccupied:
            try container.encode(Kind.checkStickerSetNameResultNameOccupied, forKey: .type)
        }
    }
}

