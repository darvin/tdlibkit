//
//  PageBlockHorizontalAlignment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Describes a horizontal alignment of a table cell content
public enum PageBlockHorizontalAlignment: Codable, Equatable, Hashable {

    /// The content must be left-aligned
    case left

    /// The content must be center-aligned
    case center

    /// The content must be right-aligned
    case right


    private enum Kind: String, Codable {
        case pageBlockHorizontalAlignmentLeft
        case pageBlockHorizontalAlignmentCenter
        case pageBlockHorizontalAlignmentRight
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pageBlockHorizontalAlignmentLeft:
            self = .left
        case .pageBlockHorizontalAlignmentCenter:
            self = .center
        case .pageBlockHorizontalAlignmentRight:
            self = .right
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .left:
            try container.encode(Kind.pageBlockHorizontalAlignmentLeft, forKey: .type)
        case .center:
            try container.encode(Kind.pageBlockHorizontalAlignmentCenter, forKey: .type)
        case .right:
            try container.encode(Kind.pageBlockHorizontalAlignmentRight, forKey: .type)
        }
    }
}

