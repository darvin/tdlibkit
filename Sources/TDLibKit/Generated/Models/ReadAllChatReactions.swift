//
//  ReadAllChatReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Marks all reactions in a chat as read
public struct ReadAllChatReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

