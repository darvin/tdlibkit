//
//  GetDeepLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
public struct GetDeepLinkInfo: Codable, Equatable, Hashable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

