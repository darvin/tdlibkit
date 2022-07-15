//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns information about a newest pinned message in the chat
public struct GetChatPinnedMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

