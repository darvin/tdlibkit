//
//  InputPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-1dec0e20
//  https://github.com/tdlib/td/tree/1dec0e20
//

import Foundation


/// Contains information about a Telegram Passport element to be saved
public enum InputPassportElement: Codable, Equatable, Hashable {

    /// A Telegram Passport element to be saved containing the user's personal details
    case personalDetails(InputPassportElementPersonalDetails)

    /// A Telegram Passport element to be saved containing the user's passport
    case passport(InputPassportElementPassport)

    /// A Telegram Passport element to be saved containing the user's driver license
    case driverLicense(InputPassportElementDriverLicense)

    /// A Telegram Passport element to be saved containing the user's identity card
    case identityCard(InputPassportElementIdentityCard)

    /// A Telegram Passport element to be saved containing the user's internal passport
    case internalPassport(InputPassportElementInternalPassport)

    /// A Telegram Passport element to be saved containing the user's address
    case address(InputPassportElementAddress)

    /// A Telegram Passport element to be saved containing the user's utility bill
    case utilityBill(InputPassportElementUtilityBill)

    /// A Telegram Passport element to be saved containing the user's bank statement
    case bankStatement(InputPassportElementBankStatement)

    /// A Telegram Passport element to be saved containing the user's rental agreement
    case rentalAgreement(InputPassportElementRentalAgreement)

    /// A Telegram Passport element to be saved containing the user's passport registration
    case passportRegistration(InputPassportElementPassportRegistration)

    /// A Telegram Passport element to be saved containing the user's temporary registration
    case temporaryRegistration(InputPassportElementTemporaryRegistration)

    /// A Telegram Passport element to be saved containing the user's phone number
    case phoneNumber(InputPassportElementPhoneNumber)

    /// A Telegram Passport element to be saved containing the user's email address
    case emailAddress(InputPassportElementEmailAddress)


    private enum Kind: String, Codable {
        case inputPassportElementPersonalDetails
        case inputPassportElementPassport
        case inputPassportElementDriverLicense
        case inputPassportElementIdentityCard
        case inputPassportElementInternalPassport
        case inputPassportElementAddress
        case inputPassportElementUtilityBill
        case inputPassportElementBankStatement
        case inputPassportElementRentalAgreement
        case inputPassportElementPassportRegistration
        case inputPassportElementTemporaryRegistration
        case inputPassportElementPhoneNumber
        case inputPassportElementEmailAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputPassportElementPersonalDetails:
            let value = try InputPassportElementPersonalDetails(from: decoder)
            self = .personalDetails(value)
        case .inputPassportElementPassport:
            let value = try InputPassportElementPassport(from: decoder)
            self = .passport(value)
        case .inputPassportElementDriverLicense:
            let value = try InputPassportElementDriverLicense(from: decoder)
            self = .driverLicense(value)
        case .inputPassportElementIdentityCard:
            let value = try InputPassportElementIdentityCard(from: decoder)
            self = .identityCard(value)
        case .inputPassportElementInternalPassport:
            let value = try InputPassportElementInternalPassport(from: decoder)
            self = .internalPassport(value)
        case .inputPassportElementAddress:
            let value = try InputPassportElementAddress(from: decoder)
            self = .address(value)
        case .inputPassportElementUtilityBill:
            let value = try InputPassportElementUtilityBill(from: decoder)
            self = .utilityBill(value)
        case .inputPassportElementBankStatement:
            let value = try InputPassportElementBankStatement(from: decoder)
            self = .bankStatement(value)
        case .inputPassportElementRentalAgreement:
            let value = try InputPassportElementRentalAgreement(from: decoder)
            self = .rentalAgreement(value)
        case .inputPassportElementPassportRegistration:
            let value = try InputPassportElementPassportRegistration(from: decoder)
            self = .passportRegistration(value)
        case .inputPassportElementTemporaryRegistration:
            let value = try InputPassportElementTemporaryRegistration(from: decoder)
            self = .temporaryRegistration(value)
        case .inputPassportElementPhoneNumber:
            let value = try InputPassportElementPhoneNumber(from: decoder)
            self = .phoneNumber(value)
        case .inputPassportElementEmailAddress:
            let value = try InputPassportElementEmailAddress(from: decoder)
            self = .emailAddress(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .personalDetails(let value):
            try container.encode(Kind.inputPassportElementPersonalDetails, forKey: .type)
            try value.encode(to: encoder)
        case .passport(let value):
            try container.encode(Kind.inputPassportElementPassport, forKey: .type)
            try value.encode(to: encoder)
        case .driverLicense(let value):
            try container.encode(Kind.inputPassportElementDriverLicense, forKey: .type)
            try value.encode(to: encoder)
        case .identityCard(let value):
            try container.encode(Kind.inputPassportElementIdentityCard, forKey: .type)
            try value.encode(to: encoder)
        case .internalPassport(let value):
            try container.encode(Kind.inputPassportElementInternalPassport, forKey: .type)
            try value.encode(to: encoder)
        case .address(let value):
            try container.encode(Kind.inputPassportElementAddress, forKey: .type)
            try value.encode(to: encoder)
        case .utilityBill(let value):
            try container.encode(Kind.inputPassportElementUtilityBill, forKey: .type)
            try value.encode(to: encoder)
        case .bankStatement(let value):
            try container.encode(Kind.inputPassportElementBankStatement, forKey: .type)
            try value.encode(to: encoder)
        case .rentalAgreement(let value):
            try container.encode(Kind.inputPassportElementRentalAgreement, forKey: .type)
            try value.encode(to: encoder)
        case .passportRegistration(let value):
            try container.encode(Kind.inputPassportElementPassportRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .temporaryRegistration(let value):
            try container.encode(Kind.inputPassportElementTemporaryRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .phoneNumber(let value):
            try container.encode(Kind.inputPassportElementPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .emailAddress(let value):
            try container.encode(Kind.inputPassportElementEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Telegram Passport element to be saved containing the user's personal details
public struct InputPassportElementPersonalDetails: Codable, Equatable, Hashable {

    /// Personal details of the user
    public let personalDetails: PersonalDetails


    public init(personalDetails: PersonalDetails) {
        self.personalDetails = personalDetails
    }
}

/// A Telegram Passport element to be saved containing the user's passport
public struct InputPassportElementPassport: Codable, Equatable, Hashable {

    /// The passport to be saved
    public let passport: InputIdentityDocument


    public init(passport: InputIdentityDocument) {
        self.passport = passport
    }
}

/// A Telegram Passport element to be saved containing the user's driver license
public struct InputPassportElementDriverLicense: Codable, Equatable, Hashable {

    /// The driver license to be saved
    public let driverLicense: InputIdentityDocument


    public init(driverLicense: InputIdentityDocument) {
        self.driverLicense = driverLicense
    }
}

/// A Telegram Passport element to be saved containing the user's identity card
public struct InputPassportElementIdentityCard: Codable, Equatable, Hashable {

    /// The identity card to be saved
    public let identityCard: InputIdentityDocument


    public init(identityCard: InputIdentityDocument) {
        self.identityCard = identityCard
    }
}

/// A Telegram Passport element to be saved containing the user's internal passport
public struct InputPassportElementInternalPassport: Codable, Equatable, Hashable {

    /// The internal passport to be saved
    public let internalPassport: InputIdentityDocument


    public init(internalPassport: InputIdentityDocument) {
        self.internalPassport = internalPassport
    }
}

/// A Telegram Passport element to be saved containing the user's address
public struct InputPassportElementAddress: Codable, Equatable, Hashable {

    /// The address to be saved
    public let address: Address


    public init(address: Address) {
        self.address = address
    }
}

/// A Telegram Passport element to be saved containing the user's utility bill
public struct InputPassportElementUtilityBill: Codable, Equatable, Hashable {

    /// The utility bill to be saved
    public let utilityBill: InputPersonalDocument


    public init(utilityBill: InputPersonalDocument) {
        self.utilityBill = utilityBill
    }
}

/// A Telegram Passport element to be saved containing the user's bank statement
public struct InputPassportElementBankStatement: Codable, Equatable, Hashable {

    /// The bank statement to be saved
    public let bankStatement: InputPersonalDocument


    public init(bankStatement: InputPersonalDocument) {
        self.bankStatement = bankStatement
    }
}

/// A Telegram Passport element to be saved containing the user's rental agreement
public struct InputPassportElementRentalAgreement: Codable, Equatable, Hashable {

    /// The rental agreement to be saved
    public let rentalAgreement: InputPersonalDocument


    public init(rentalAgreement: InputPersonalDocument) {
        self.rentalAgreement = rentalAgreement
    }
}

/// A Telegram Passport element to be saved containing the user's passport registration
public struct InputPassportElementPassportRegistration: Codable, Equatable, Hashable {

    /// The passport registration page to be saved
    public let passportRegistration: InputPersonalDocument


    public init(passportRegistration: InputPersonalDocument) {
        self.passportRegistration = passportRegistration
    }
}

/// A Telegram Passport element to be saved containing the user's temporary registration
public struct InputPassportElementTemporaryRegistration: Codable, Equatable, Hashable {

    /// The temporary registration document to be saved
    public let temporaryRegistration: InputPersonalDocument


    public init(temporaryRegistration: InputPersonalDocument) {
        self.temporaryRegistration = temporaryRegistration
    }
}

/// A Telegram Passport element to be saved containing the user's phone number
public struct InputPassportElementPhoneNumber: Codable, Equatable, Hashable {

    /// The phone number to be saved
    public let phoneNumber: String


    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
}

/// A Telegram Passport element to be saved containing the user's email address
public struct InputPassportElementEmailAddress: Codable, Equatable, Hashable {

    /// The email address to be saved
    public let emailAddress: String


    public init(emailAddress: String) {
        self.emailAddress = emailAddress
    }
}

