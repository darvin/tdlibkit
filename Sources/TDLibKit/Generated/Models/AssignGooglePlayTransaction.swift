//
//  AssignGooglePlayTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Informs server about a Telegram Premium purchase through Google Play. For official applications only
public struct AssignGooglePlayTransaction: Codable, Equatable, Hashable {

    /// Google Play purchase token
    public let purchaseToken: String?


    public init(purchaseToken: String?) {
        self.purchaseToken = purchaseToken
    }
}

