//
//  AuthorizationState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-1dec0e20
//  https://github.com/tdlib/td/tree/1dec0e20
//

import Foundation


/// Represents the current authorization state of the TDLib client
public enum AuthorizationState: Codable, Equatable, Hashable {

    /// TDLib needs TdlibParameters for initialization
    case waitTdlibParameters

    /// TDLib needs an encryption key to decrypt the local database
    case waitEncryptionKey(AuthorizationStateWaitEncryptionKey)

    /// TDLib needs the user's phone number to authorize. Call `setAuthenticationPhoneNumber` to provide the phone number, or use `requestQrCodeAuthentication`, or `checkAuthenticationBotToken` for other authentication options
    case waitPhoneNumber

    /// TDLib needs the user's authentication code to authorize
    case waitCode(AuthorizationStateWaitCode)

    /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
    case waitOtherDeviceConfirmation(AuthorizationStateWaitOtherDeviceConfirmation)

    /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
    case waitRegistration(AuthorizationStateWaitRegistration)

    /// The user has been authorized, but needs to enter a password to start using the application
    case waitPassword(AuthorizationStateWaitPassword)

    /// The user has been successfully authorized. TDLib is now ready to answer queries
    case ready

    /// The user is currently logging out
    case loggingOut

    /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
    case closing

    /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to with error code 500. To continue working, one must create a new instance of the TDLib client
    case closed


    private enum Kind: String, Codable {
        case authorizationStateWaitTdlibParameters
        case authorizationStateWaitEncryptionKey
        case authorizationStateWaitPhoneNumber
        case authorizationStateWaitCode
        case authorizationStateWaitOtherDeviceConfirmation
        case authorizationStateWaitRegistration
        case authorizationStateWaitPassword
        case authorizationStateReady
        case authorizationStateLoggingOut
        case authorizationStateClosing
        case authorizationStateClosed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .authorizationStateWaitTdlibParameters:
            self = .waitTdlibParameters
        case .authorizationStateWaitEncryptionKey:
            let value = try AuthorizationStateWaitEncryptionKey(from: decoder)
            self = .waitEncryptionKey(value)
        case .authorizationStateWaitPhoneNumber:
            self = .waitPhoneNumber
        case .authorizationStateWaitCode:
            let value = try AuthorizationStateWaitCode(from: decoder)
            self = .waitCode(value)
        case .authorizationStateWaitOtherDeviceConfirmation:
            let value = try AuthorizationStateWaitOtherDeviceConfirmation(from: decoder)
            self = .waitOtherDeviceConfirmation(value)
        case .authorizationStateWaitRegistration:
            let value = try AuthorizationStateWaitRegistration(from: decoder)
            self = .waitRegistration(value)
        case .authorizationStateWaitPassword:
            let value = try AuthorizationStateWaitPassword(from: decoder)
            self = .waitPassword(value)
        case .authorizationStateReady:
            self = .ready
        case .authorizationStateLoggingOut:
            self = .loggingOut
        case .authorizationStateClosing:
            self = .closing
        case .authorizationStateClosed:
            self = .closed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .waitTdlibParameters:
            try container.encode(Kind.authorizationStateWaitTdlibParameters, forKey: .type)
        case .waitEncryptionKey(let value):
            try container.encode(Kind.authorizationStateWaitEncryptionKey, forKey: .type)
            try value.encode(to: encoder)
        case .waitPhoneNumber:
            try container.encode(Kind.authorizationStateWaitPhoneNumber, forKey: .type)
        case .waitCode(let value):
            try container.encode(Kind.authorizationStateWaitCode, forKey: .type)
            try value.encode(to: encoder)
        case .waitOtherDeviceConfirmation(let value):
            try container.encode(Kind.authorizationStateWaitOtherDeviceConfirmation, forKey: .type)
            try value.encode(to: encoder)
        case .waitRegistration(let value):
            try container.encode(Kind.authorizationStateWaitRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .waitPassword(let value):
            try container.encode(Kind.authorizationStateWaitPassword, forKey: .type)
            try value.encode(to: encoder)
        case .ready:
            try container.encode(Kind.authorizationStateReady, forKey: .type)
        case .loggingOut:
            try container.encode(Kind.authorizationStateLoggingOut, forKey: .type)
        case .closing:
            try container.encode(Kind.authorizationStateClosing, forKey: .type)
        case .closed:
            try container.encode(Kind.authorizationStateClosed, forKey: .type)
        }
    }
}

/// TDLib needs an encryption key to decrypt the local database
public struct AuthorizationStateWaitEncryptionKey: Codable, Equatable, Hashable {

    /// True, if the database is currently encrypted
    public let isEncrypted: Bool


    public init(isEncrypted: Bool) {
        self.isEncrypted = isEncrypted
    }
}

/// TDLib needs the user's authentication code to authorize
public struct AuthorizationStateWaitCode: Codable, Equatable, Hashable {

    /// Information about the authorization code that was sent
    public let codeInfo: AuthenticationCodeInfo


    public init(codeInfo: AuthenticationCodeInfo) {
        self.codeInfo = codeInfo
    }
}

/// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
public struct AuthorizationStateWaitOtherDeviceConfirmation: Codable, Equatable, Hashable {

    /// A tg:// URL for the QR code. The link will be updated frequently
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
public struct AuthorizationStateWaitRegistration: Codable, Equatable, Hashable {

    /// Telegram terms of service
    public let termsOfService: TermsOfService


    public init(termsOfService: TermsOfService) {
        self.termsOfService = termsOfService
    }
}

/// The user has been authorized, but needs to enter a password to start using the application
public struct AuthorizationStateWaitPassword: Codable, Equatable, Hashable {

    /// True, if a recovery email address has been set up
    public let hasRecoveryEmailAddress: Bool

    /// Hint for the password; may be empty
    public let passwordHint: String

    /// Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
    public let recoveryEmailAddressPattern: String


    public init(
        hasRecoveryEmailAddress: Bool,
        passwordHint: String,
        recoveryEmailAddressPattern: String
    ) {
        self.hasRecoveryEmailAddress = hasRecoveryEmailAddress
        self.passwordHint = passwordHint
        self.recoveryEmailAddressPattern = recoveryEmailAddressPattern
    }
}

