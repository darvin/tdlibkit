//
//  CheckPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Checks the phone number verification code for Telegram Passport
public struct CheckPhoneNumberVerificationCode: Codable, Equatable, Hashable {

    /// Verification code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

