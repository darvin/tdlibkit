//
//  SetUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Changes the username of the current user
public struct SetUsername: Codable, Equatable, Hashable {

    /// The new value of the username. Use an empty string to remove the username
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

