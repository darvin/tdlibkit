//
//  DeleteChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-37647648
//  https://github.com/tdlib/td/tree/37647648
//

import Foundation


/// Deletes existing chat filter
public struct DeleteChatFilter: Codable, Equatable, Hashable {

    /// Chat filter identifier
    public let chatFilterId: Int?


    public init(chatFilterId: Int?) {
        self.chatFilterId = chatFilterId
    }
}

