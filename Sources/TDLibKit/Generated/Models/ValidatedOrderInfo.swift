//
//  ValidatedOrderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options
public struct ValidatedOrderInfo: Codable, Equatable, Hashable {

    /// Temporary identifier of the order information
    public let orderInfoId: String

    /// Available shipping options
    public let shippingOptions: [ShippingOption]


    public init(
        orderInfoId: String,
        shippingOptions: [ShippingOption]
    ) {
        self.orderInfoId = orderInfoId
        self.shippingOptions = shippingOptions
    }
}

