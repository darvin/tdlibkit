//
//  ChatStatisticsMessageSenderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Contains statistics about messages sent by a user
public struct ChatStatisticsMessageSenderInfo: Codable, Equatable {

    /// Average number of characters in sent messages; 0 if unknown
    public let averageCharacterCount: Int

    /// Number of sent messages
    public let sentMessageCount: Int

    /// User identifier
    public let userId: Int64


    public init(
        averageCharacterCount: Int,
        sentMessageCount: Int,
        userId: Int64
    ) {
        self.averageCharacterCount = averageCharacterCount
        self.sentMessageCount = sentMessageCount
        self.userId = userId
    }
}

