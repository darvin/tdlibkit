//
//  DeleteChatReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup is changed
public struct DeleteChatReplyMarkup: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The message identifier of the used keyboard
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

