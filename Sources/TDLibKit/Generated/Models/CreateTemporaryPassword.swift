//
//  CreateTemporaryPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Creates a new temporary password for processing payments
public struct CreateTemporaryPassword: Codable, Equatable, Hashable {

    /// Persistent user password
    public let password: String?

    /// Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
    public let validFor: Int?


    public init(
        password: String?,
        validFor: Int?
    ) {
        self.password = password
        self.validFor = validFor
    }
}

