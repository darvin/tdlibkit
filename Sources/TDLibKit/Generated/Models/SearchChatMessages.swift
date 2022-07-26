//
//  SearchChatMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query (searchSecretMessages must be used instead), or without an enabled message database. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchChatMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to search messages
    public let chatId: Int64?

    /// Additional filter for messages to search; pass null to search for all messages
    public let filter: SearchMessagesFilter?

    /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// If not 0, only messages in the specified thread will be returned; supergroups only
    public let messageThreadId: Int64?

    /// Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages
    public let offset: Int?

    /// Query to search for
    public let query: String?

    /// Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        limit: Int?,
        messageThreadId: Int64?,
        offset: Int?,
        query: String?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.messageThreadId = messageThreadId
        self.offset = offset
        self.query = query
        self.senderId = senderId
    }
}

