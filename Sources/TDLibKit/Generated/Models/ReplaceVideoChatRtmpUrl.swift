//
//  ReplaceVideoChatRtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Replaces the current RTMP URL for streaming to the chat; requires creator privileges
public struct ReplaceVideoChatRtmpUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

