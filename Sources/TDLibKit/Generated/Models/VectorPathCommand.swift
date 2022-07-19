//
//  VectorPathCommand.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Represents a vector path command
public enum VectorPathCommand: Codable, Equatable, Hashable {

    /// A straight line to a given point
    case line(VectorPathCommandLine)

    /// A cubic Bézier curve to a given point
    case cubicBezierCurve(VectorPathCommandCubicBezierCurve)


    private enum Kind: String, Codable {
        case vectorPathCommandLine
        case vectorPathCommandCubicBezierCurve
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .vectorPathCommandLine:
            let value = try VectorPathCommandLine(from: decoder)
            self = .line(value)
        case .vectorPathCommandCubicBezierCurve:
            let value = try VectorPathCommandCubicBezierCurve(from: decoder)
            self = .cubicBezierCurve(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .line(let value):
            try container.encode(Kind.vectorPathCommandLine, forKey: .type)
            try value.encode(to: encoder)
        case .cubicBezierCurve(let value):
            try container.encode(Kind.vectorPathCommandCubicBezierCurve, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A straight line to a given point
public struct VectorPathCommandLine: Codable, Equatable, Hashable {

    /// The end point of the straight line
    public let endPoint: Point


    public init(endPoint: Point) {
        self.endPoint = endPoint
    }
}

/// A cubic Bézier curve to a given point
public struct VectorPathCommandCubicBezierCurve: Codable, Equatable, Hashable {

    /// The end control point of the curve
    public let endControlPoint: Point

    /// The end point of the curve
    public let endPoint: Point

    /// The start control point of the curve
    public let startControlPoint: Point


    public init(
        endControlPoint: Point,
        endPoint: Point,
        startControlPoint: Point
    ) {
        self.endControlPoint = endControlPoint
        self.endPoint = endPoint
        self.startControlPoint = startControlPoint
    }
}

