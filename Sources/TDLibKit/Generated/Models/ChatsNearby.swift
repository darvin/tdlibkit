//
//  ChatsNearby.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Represents a list of chats located nearby
public struct ChatsNearby: Codable, Equatable, Hashable {

    /// List of location-based supergroups nearby
    public let supergroupsNearby: [ChatNearby]

    /// List of users nearby
    public let usersNearby: [ChatNearby]


    public init(
        supergroupsNearby: [ChatNearby],
        usersNearby: [ChatNearby]
    ) {
        self.supergroupsNearby = supergroupsNearby
        self.usersNearby = usersNearby
    }
}

