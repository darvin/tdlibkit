//
//  GetOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. Can be called synchronously for options "version" and "commit_hash"
public struct GetOption: Codable, Equatable, Hashable {

    /// The name of the option
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

