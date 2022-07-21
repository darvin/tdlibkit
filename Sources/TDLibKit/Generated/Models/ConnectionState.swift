//
//  ConnectionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-4ac8be81
//  https://github.com/tdlib/td/tree/4ac8be81
//

import Foundation


/// Describes the current state of the connection to Telegram servers
public enum ConnectionState: Codable, Equatable, Hashable {

    /// Currently waiting for the network to become available. Use setNetworkType to change the available network type
    case waitingForNetwork

    /// Currently establishing a connection with a proxy server
    case connectingToProxy

    /// Currently establishing a connection to the Telegram servers
    case connecting

    /// Downloading data received while the application was offline
    case updating

    /// There is a working connection to the Telegram servers
    case ready


    private enum Kind: String, Codable {
        case connectionStateWaitingForNetwork
        case connectionStateConnectingToProxy
        case connectionStateConnecting
        case connectionStateUpdating
        case connectionStateReady
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .connectionStateWaitingForNetwork:
            self = .waitingForNetwork
        case .connectionStateConnectingToProxy:
            self = .connectingToProxy
        case .connectionStateConnecting:
            self = .connecting
        case .connectionStateUpdating:
            self = .updating
        case .connectionStateReady:
            self = .ready
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .waitingForNetwork:
            try container.encode(Kind.connectionStateWaitingForNetwork, forKey: .type)
        case .connectingToProxy:
            try container.encode(Kind.connectionStateConnectingToProxy, forKey: .type)
        case .connecting:
            try container.encode(Kind.connectionStateConnecting, forKey: .type)
        case .updating:
            try container.encode(Kind.connectionStateUpdating, forKey: .type)
        case .ready:
            try container.encode(Kind.connectionStateReady, forKey: .type)
        }
    }
}

