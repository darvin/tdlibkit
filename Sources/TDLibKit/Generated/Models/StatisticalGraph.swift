//
//  StatisticalGraph.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Describes a statistical graph
public enum StatisticalGraph: Codable, Equatable, Hashable {

    /// A graph data
    case data(StatisticalGraphData)

    /// The graph data to be asynchronously loaded through getStatisticalGraph
    case async(StatisticalGraphAsync)

    /// An error message to be shown to the user instead of the graph
    case error(StatisticalGraphError)


    private enum Kind: String, Codable {
        case statisticalGraphData
        case statisticalGraphAsync
        case statisticalGraphError
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .statisticalGraphData:
            let value = try StatisticalGraphData(from: decoder)
            self = .data(value)
        case .statisticalGraphAsync:
            let value = try StatisticalGraphAsync(from: decoder)
            self = .async(value)
        case .statisticalGraphError:
            let value = try StatisticalGraphError(from: decoder)
            self = .error(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .data(let value):
            try container.encode(Kind.statisticalGraphData, forKey: .type)
            try value.encode(to: encoder)
        case .async(let value):
            try container.encode(Kind.statisticalGraphAsync, forKey: .type)
            try value.encode(to: encoder)
        case .error(let value):
            try container.encode(Kind.statisticalGraphError, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A graph data
public struct StatisticalGraphData: Codable, Equatable, Hashable {

    /// Graph data in JSON format
    public let jsonData: String

    /// If non-empty, a token which can be used to receive a zoomed in graph
    public let zoomToken: String


    public init(
        jsonData: String,
        zoomToken: String
    ) {
        self.jsonData = jsonData
        self.zoomToken = zoomToken
    }
}

/// The graph data to be asynchronously loaded through getStatisticalGraph
public struct StatisticalGraphAsync: Codable, Equatable, Hashable {

    /// The token to use for data loading
    public let token: String


    public init(token: String) {
        self.token = token
    }
}

/// An error message to be shown to the user instead of the graph
public struct StatisticalGraphError: Codable, Equatable, Hashable {

    /// The error message
    public let errorMessage: String


    public init(errorMessage: String) {
        self.errorMessage = errorMessage
    }
}

