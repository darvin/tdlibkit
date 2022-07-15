//
//  SavedCredentials.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Contains information about saved card credentials
public struct SavedCredentials: Codable, Equatable, Hashable {

    /// Unique identifier of the saved credentials
    public let id: String

    /// Title of the saved credentials
    public let title: String


    public init(
        id: String,
        title: String
    ) {
        self.id = id
        self.title = title
    }
}

