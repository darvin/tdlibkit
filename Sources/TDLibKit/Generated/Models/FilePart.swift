//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//

import Foundation


/// Contains a part of a file
public struct FilePart: Codable, Equatable, Hashable {

    /// File bytes
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

