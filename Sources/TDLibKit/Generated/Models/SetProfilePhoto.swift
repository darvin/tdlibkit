//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Changes a profile photo for the current user
public struct SetProfilePhoto: Codable {

    /// Profile photo to set
    public let photo: InputChatPhoto?


    public init(photo: InputChatPhoto?) {
        self.photo = photo
    }
}

