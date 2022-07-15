//
//  AssignAppStoreTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Informs server about a Telegram Premium purchase through App Store. For official applications only
public struct AssignAppStoreTransaction: Codable, Equatable, Hashable {

    /// Pass true if this is a restore of a Telegram Premium purchase
    public let isRestore: Bool?

    /// App Store receipt
    public let receipt: Data?


    public init(
        isRestore: Bool?,
        receipt: Data?
    ) {
        self.isRestore = isRestore
        self.receipt = receipt
    }
}

