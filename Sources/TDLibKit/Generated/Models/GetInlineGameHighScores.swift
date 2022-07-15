//
//  GetInlineGameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
public struct GetInlineGameHighScores: Codable, Equatable, Hashable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// User identifier
    public let userId: Int64?


    public init(
        inlineMessageId: String?,
        userId: Int64?
    ) {
        self.inlineMessageId = inlineMessageId
        self.userId = userId
    }
}

