//
//  GetGroupCallInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Returns invite link to a video chat in a public chat
public struct GetGroupCallInviteLink: Codable, Equatable, Hashable {

    /// Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag
    public let canSelfUnmute: Bool?

    /// Group call identifier
    public let groupCallId: Int?


    public init(
        canSelfUnmute: Bool?,
        groupCallId: Int?
    ) {
        self.canSelfUnmute = canSelfUnmute
        self.groupCallId = groupCallId
    }
}

