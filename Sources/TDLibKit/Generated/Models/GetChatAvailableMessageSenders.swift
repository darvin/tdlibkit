//
//  GetChatAvailableMessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns list of message sender identifiers, which can be used to send messages in a chat
public struct GetChatAvailableMessageSenders: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

