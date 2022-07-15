//
//  GetPaymentReceipt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns information about a successful payment
public struct GetPaymentReceipt: Codable, Equatable, Hashable {

    /// Chat identifier of the PaymentSuccessful message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

