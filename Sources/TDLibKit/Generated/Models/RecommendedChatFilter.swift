//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Describes a recommended chat filter
public struct RecommendedChatFilter: Codable, Equatable, Hashable {

    public let description: String

    /// The chat filter
    public let filter: ChatFilter


    public init(
        description: String,
        filter: ChatFilter
    ) {
        self.description = description
        self.filter = filter
    }
}

