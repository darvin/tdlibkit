//
//  GetUserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns full information about a user by their identifier
public struct GetUserFullInfo: Codable, Equatable, Hashable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

