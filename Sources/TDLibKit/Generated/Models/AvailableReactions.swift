//
//  AvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Represents a list of available reactions
public struct AvailableReactions: Codable, Equatable, Hashable {

    /// List of reactions
    public let reactions: [AvailableReaction]


    public init(reactions: [AvailableReaction]) {
        self.reactions = reactions
    }
}

