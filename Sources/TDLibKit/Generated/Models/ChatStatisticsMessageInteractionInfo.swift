//
//  ChatStatisticsMessageInteractionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains statistics about interactions with a message
public struct ChatStatisticsMessageInteractionInfo: Codable {

    /// Number of times the message was forwarded
    public let forwardCount: Int

    /// Message identifier
    public let messageId: Int64

    /// Number of times the message was viewed
    public let viewCount: Int


    public init(
        forwardCount: Int,
        messageId: Int64,
        viewCount: Int
    ) {
        self.forwardCount = forwardCount
        self.messageId = messageId
        self.viewCount = viewCount
    }
}

