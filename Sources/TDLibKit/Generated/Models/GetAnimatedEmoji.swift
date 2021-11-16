//
//  GetAnimatedEmoji.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
public struct GetAnimatedEmoji: Codable {

    /// The emoji
    public let emoji: String?


    public init(emoji: String?) {
        self.emoji = emoji
    }
}

