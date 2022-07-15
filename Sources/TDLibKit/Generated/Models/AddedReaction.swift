//
//  AddedReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Represents a reaction applied to a message
public struct AddedReaction: Codable, Equatable, Hashable {

    /// Text representation of the reaction
    public let reaction: String

    /// Identifier of the chat member, applied the reaction
    public let senderId: MessageSender


    public init(
        reaction: String,
        senderId: MessageSender
    ) {
        self.reaction = reaction
        self.senderId = senderId
    }
}

