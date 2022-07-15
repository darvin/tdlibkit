//
//  GetPremiumLimit.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown
public struct GetPremiumLimit: Codable, Equatable, Hashable {

    /// Type of the limit
    public let limitType: PremiumLimitType?


    public init(limitType: PremiumLimitType?) {
        self.limitType = limitType
    }
}

