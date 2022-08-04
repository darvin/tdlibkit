//
//  PassportElementErrorSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains the description of an error in a Telegram Passport element
public enum PassportElementErrorSource: Codable, Equatable, Hashable {

    /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
    case unspecified

    /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
    case dataField(PassportElementErrorSourceDataField)

    /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes
    case frontSide

    /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes
    case reverseSide

    /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes
    case selfie

    /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes
    case translationFile(PassportElementErrorSourceTranslationFile)

    /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes
    case translationFiles

    /// The file contains an error. The error will be considered resolved when the file changes
    case file(PassportElementErrorSourceFile)

    /// The list of attached files contains an error. The error will be considered resolved when the list of files changes
    case files


    private enum Kind: String, Codable {
        case passportElementErrorSourceUnspecified
        case passportElementErrorSourceDataField
        case passportElementErrorSourceFrontSide
        case passportElementErrorSourceReverseSide
        case passportElementErrorSourceSelfie
        case passportElementErrorSourceTranslationFile
        case passportElementErrorSourceTranslationFiles
        case passportElementErrorSourceFile
        case passportElementErrorSourceFiles
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .passportElementErrorSourceUnspecified:
            self = .unspecified
        case .passportElementErrorSourceDataField:
            let value = try PassportElementErrorSourceDataField(from: decoder)
            self = .dataField(value)
        case .passportElementErrorSourceFrontSide:
            self = .frontSide
        case .passportElementErrorSourceReverseSide:
            self = .reverseSide
        case .passportElementErrorSourceSelfie:
            self = .selfie
        case .passportElementErrorSourceTranslationFile:
            let value = try PassportElementErrorSourceTranslationFile(from: decoder)
            self = .translationFile(value)
        case .passportElementErrorSourceTranslationFiles:
            self = .translationFiles
        case .passportElementErrorSourceFile:
            let value = try PassportElementErrorSourceFile(from: decoder)
            self = .file(value)
        case .passportElementErrorSourceFiles:
            self = .files
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .unspecified:
            try container.encode(Kind.passportElementErrorSourceUnspecified, forKey: .type)
        case .dataField(let value):
            try container.encode(Kind.passportElementErrorSourceDataField, forKey: .type)
            try value.encode(to: encoder)
        case .frontSide:
            try container.encode(Kind.passportElementErrorSourceFrontSide, forKey: .type)
        case .reverseSide:
            try container.encode(Kind.passportElementErrorSourceReverseSide, forKey: .type)
        case .selfie:
            try container.encode(Kind.passportElementErrorSourceSelfie, forKey: .type)
        case .translationFile(let value):
            try container.encode(Kind.passportElementErrorSourceTranslationFile, forKey: .type)
            try value.encode(to: encoder)
        case .translationFiles:
            try container.encode(Kind.passportElementErrorSourceTranslationFiles, forKey: .type)
        case .file(let value):
            try container.encode(Kind.passportElementErrorSourceFile, forKey: .type)
            try value.encode(to: encoder)
        case .files:
            try container.encode(Kind.passportElementErrorSourceFiles, forKey: .type)
        }
    }
}

/// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
public struct PassportElementErrorSourceDataField: Codable, Equatable, Hashable {

    /// Field name
    public let fieldName: String


    public init(fieldName: String) {
        self.fieldName = fieldName
    }
}

/// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes
public struct PassportElementErrorSourceTranslationFile: Codable, Equatable, Hashable {

    /// Index of a file with the error
    public let fileIndex: Int


    public init(fileIndex: Int) {
        self.fileIndex = fileIndex
    }
}

/// The file contains an error. The error will be considered resolved when the file changes
public struct PassportElementErrorSourceFile: Codable, Equatable, Hashable {

    /// Index of a file with the error
    public let fileIndex: Int


    public init(fileIndex: Int) {
        self.fileIndex = fileIndex
    }
}

