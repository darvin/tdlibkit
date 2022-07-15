//
//  PassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Contains information about saved Telegram Passport elements
public struct PassportElements: Codable, Equatable, Hashable {

    /// Telegram Passport elements
    public let elements: [PassportElement]


    public init(elements: [PassportElement]) {
        self.elements = elements
    }
}

