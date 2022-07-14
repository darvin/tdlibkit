//
//  PassportElementType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Contains the type of a Telegram Passport element
public enum PassportElementType: Codable, Equatable, Hashable {

    /// A Telegram Passport element containing the user's personal details
    case personalDetails

    /// A Telegram Passport element containing the user's passport
    case passport

    /// A Telegram Passport element containing the user's driver license
    case driverLicense

    /// A Telegram Passport element containing the user's identity card
    case identityCard

    /// A Telegram Passport element containing the user's internal passport
    case internalPassport

    /// A Telegram Passport element containing the user's address
    case address

    /// A Telegram Passport element containing the user's utility bill
    case utilityBill

    /// A Telegram Passport element containing the user's bank statement
    case bankStatement

    /// A Telegram Passport element containing the user's rental agreement
    case rentalAgreement

    /// A Telegram Passport element containing the registration page of the user's passport
    case passportRegistration

    /// A Telegram Passport element containing the user's temporary registration
    case temporaryRegistration

    /// A Telegram Passport element containing the user's phone number
    case phoneNumber

    /// A Telegram Passport element containing the user's email address
    case emailAddress


    private enum Kind: String, Codable {
        case passportElementTypePersonalDetails
        case passportElementTypePassport
        case passportElementTypeDriverLicense
        case passportElementTypeIdentityCard
        case passportElementTypeInternalPassport
        case passportElementTypeAddress
        case passportElementTypeUtilityBill
        case passportElementTypeBankStatement
        case passportElementTypeRentalAgreement
        case passportElementTypePassportRegistration
        case passportElementTypeTemporaryRegistration
        case passportElementTypePhoneNumber
        case passportElementTypeEmailAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .passportElementTypePersonalDetails:
            self = .personalDetails
        case .passportElementTypePassport:
            self = .passport
        case .passportElementTypeDriverLicense:
            self = .driverLicense
        case .passportElementTypeIdentityCard:
            self = .identityCard
        case .passportElementTypeInternalPassport:
            self = .internalPassport
        case .passportElementTypeAddress:
            self = .address
        case .passportElementTypeUtilityBill:
            self = .utilityBill
        case .passportElementTypeBankStatement:
            self = .bankStatement
        case .passportElementTypeRentalAgreement:
            self = .rentalAgreement
        case .passportElementTypePassportRegistration:
            self = .passportRegistration
        case .passportElementTypeTemporaryRegistration:
            self = .temporaryRegistration
        case .passportElementTypePhoneNumber:
            self = .phoneNumber
        case .passportElementTypeEmailAddress:
            self = .emailAddress
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .personalDetails:
            try container.encode(Kind.passportElementTypePersonalDetails, forKey: .type)
        case .passport:
            try container.encode(Kind.passportElementTypePassport, forKey: .type)
        case .driverLicense:
            try container.encode(Kind.passportElementTypeDriverLicense, forKey: .type)
        case .identityCard:
            try container.encode(Kind.passportElementTypeIdentityCard, forKey: .type)
        case .internalPassport:
            try container.encode(Kind.passportElementTypeInternalPassport, forKey: .type)
        case .address:
            try container.encode(Kind.passportElementTypeAddress, forKey: .type)
        case .utilityBill:
            try container.encode(Kind.passportElementTypeUtilityBill, forKey: .type)
        case .bankStatement:
            try container.encode(Kind.passportElementTypeBankStatement, forKey: .type)
        case .rentalAgreement:
            try container.encode(Kind.passportElementTypeRentalAgreement, forKey: .type)
        case .passportRegistration:
            try container.encode(Kind.passportElementTypePassportRegistration, forKey: .type)
        case .temporaryRegistration:
            try container.encode(Kind.passportElementTypeTemporaryRegistration, forKey: .type)
        case .phoneNumber:
            try container.encode(Kind.passportElementTypePhoneNumber, forKey: .type)
        case .emailAddress:
            try container.encode(Kind.passportElementTypeEmailAddress, forKey: .type)
        }
    }
}

