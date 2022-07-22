//
//  PageBlockVerticalAlignment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-37647648
//  https://github.com/tdlib/td/tree/37647648
//

import Foundation


/// Describes a Vertical alignment of a table cell content
public enum PageBlockVerticalAlignment: Codable, Equatable, Hashable {

    /// The content must be top-aligned
    case top

    /// The content must be middle-aligned
    case middle

    /// The content must be bottom-aligned
    case bottom


    private enum Kind: String, Codable {
        case pageBlockVerticalAlignmentTop
        case pageBlockVerticalAlignmentMiddle
        case pageBlockVerticalAlignmentBottom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pageBlockVerticalAlignmentTop:
            self = .top
        case .pageBlockVerticalAlignmentMiddle:
            self = .middle
        case .pageBlockVerticalAlignmentBottom:
            self = .bottom
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .top:
            try container.encode(Kind.pageBlockVerticalAlignmentTop, forKey: .type)
        case .middle:
            try container.encode(Kind.pageBlockVerticalAlignmentMiddle, forKey: .type)
        case .bottom:
            try container.encode(Kind.pageBlockVerticalAlignmentBottom, forKey: .type)
        }
    }
}

