//
//  ChatEventAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0147c97f
//  https://github.com/tdlib/td/tree/0147c97f
//

import Foundation


/// Represents a chat event
public enum ChatEventAction: Codable, Equatable, Hashable {

    /// A message was edited
    case messageEdited(ChatEventMessageEdited)

    /// A message was deleted
    case messageDeleted(ChatEventMessageDeleted)

    /// A message was pinned
    case messagePinned(ChatEventMessagePinned)

    /// A message was unpinned
    case messageUnpinned(ChatEventMessageUnpinned)

    /// A poll in a message was stopped
    case pollStopped(ChatEventPollStopped)

    /// A new member joined the chat
    case memberJoined

    /// A new member joined the chat via an invite link
    case memberJoinedByInviteLink(ChatEventMemberJoinedByInviteLink)

    /// A new member was accepted to the chat by an administrator
    case memberJoinedByRequest(ChatEventMemberJoinedByRequest)

    /// A new chat member was invited
    case memberInvited(ChatEventMemberInvited)

    /// A member left the chat
    case memberLeft

    /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
    case memberPromoted(ChatEventMemberPromoted)

    /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
    case memberRestricted(ChatEventMemberRestricted)

    /// The chat available reactions were changed
    case availableReactionsChanged(ChatEventAvailableReactionsChanged)

    /// The chat description was changed
    case descriptionChanged(ChatEventDescriptionChanged)

    /// The linked chat of a supergroup was changed
    case linkedChatChanged(ChatEventLinkedChatChanged)

    /// The supergroup location was changed
    case locationChanged(ChatEventLocationChanged)

    /// The message TTL was changed
    case messageTtlChanged(ChatEventMessageTtlChanged)

    /// The chat permissions was changed
    case permissionsChanged(ChatEventPermissionsChanged)

    /// The chat photo was changed
    case photoChanged(ChatEventPhotoChanged)

    /// The slow_mode_delay setting of a supergroup was changed
    case slowModeDelayChanged(ChatEventSlowModeDelayChanged)

    /// The supergroup sticker set was changed
    case stickerSetChanged(ChatEventStickerSetChanged)

    /// The chat title was changed
    case titleChanged(ChatEventTitleChanged)

    /// The chat username was changed
    case usernameChanged(ChatEventUsernameChanged)

    /// The has_protected_content setting of a channel was toggled
    case hasProtectedContentToggled(ChatEventHasProtectedContentToggled)

    /// The can_invite_users permission of a supergroup chat was toggled
    case invitesToggled(ChatEventInvitesToggled)

    /// The is_all_history_available setting of a supergroup was toggled
    case isAllHistoryAvailableToggled(ChatEventIsAllHistoryAvailableToggled)

    /// The sign_messages setting of a channel was toggled
    case signMessagesToggled(ChatEventSignMessagesToggled)

    /// A chat invite link was edited
    case inviteLinkEdited(ChatEventInviteLinkEdited)

    /// A chat invite link was revoked
    case inviteLinkRevoked(ChatEventInviteLinkRevoked)

    /// A revoked chat invite link was deleted
    case inviteLinkDeleted(ChatEventInviteLinkDeleted)

    /// A video chat was created
    case videoChatCreated(ChatEventVideoChatCreated)

    /// A video chat was ended
    case videoChatEnded(ChatEventVideoChatEnded)

    /// The mute_new_participants setting of a video chat was toggled
    case videoChatMuteNewParticipantsToggled(ChatEventVideoChatMuteNewParticipantsToggled)

    /// A video chat participant was muted or unmuted
    case videoChatParticipantIsMutedToggled(ChatEventVideoChatParticipantIsMutedToggled)

    /// A video chat participant volume level was changed
    case videoChatParticipantVolumeLevelChanged(ChatEventVideoChatParticipantVolumeLevelChanged)


    private enum Kind: String, Codable {
        case chatEventMessageEdited
        case chatEventMessageDeleted
        case chatEventMessagePinned
        case chatEventMessageUnpinned
        case chatEventPollStopped
        case chatEventMemberJoined
        case chatEventMemberJoinedByInviteLink
        case chatEventMemberJoinedByRequest
        case chatEventMemberInvited
        case chatEventMemberLeft
        case chatEventMemberPromoted
        case chatEventMemberRestricted
        case chatEventAvailableReactionsChanged
        case chatEventDescriptionChanged
        case chatEventLinkedChatChanged
        case chatEventLocationChanged
        case chatEventMessageTtlChanged
        case chatEventPermissionsChanged
        case chatEventPhotoChanged
        case chatEventSlowModeDelayChanged
        case chatEventStickerSetChanged
        case chatEventTitleChanged
        case chatEventUsernameChanged
        case chatEventHasProtectedContentToggled
        case chatEventInvitesToggled
        case chatEventIsAllHistoryAvailableToggled
        case chatEventSignMessagesToggled
        case chatEventInviteLinkEdited
        case chatEventInviteLinkRevoked
        case chatEventInviteLinkDeleted
        case chatEventVideoChatCreated
        case chatEventVideoChatEnded
        case chatEventVideoChatMuteNewParticipantsToggled
        case chatEventVideoChatParticipantIsMutedToggled
        case chatEventVideoChatParticipantVolumeLevelChanged
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatEventMessageEdited:
            let value = try ChatEventMessageEdited(from: decoder)
            self = .messageEdited(value)
        case .chatEventMessageDeleted:
            let value = try ChatEventMessageDeleted(from: decoder)
            self = .messageDeleted(value)
        case .chatEventMessagePinned:
            let value = try ChatEventMessagePinned(from: decoder)
            self = .messagePinned(value)
        case .chatEventMessageUnpinned:
            let value = try ChatEventMessageUnpinned(from: decoder)
            self = .messageUnpinned(value)
        case .chatEventPollStopped:
            let value = try ChatEventPollStopped(from: decoder)
            self = .pollStopped(value)
        case .chatEventMemberJoined:
            self = .memberJoined
        case .chatEventMemberJoinedByInviteLink:
            let value = try ChatEventMemberJoinedByInviteLink(from: decoder)
            self = .memberJoinedByInviteLink(value)
        case .chatEventMemberJoinedByRequest:
            let value = try ChatEventMemberJoinedByRequest(from: decoder)
            self = .memberJoinedByRequest(value)
        case .chatEventMemberInvited:
            let value = try ChatEventMemberInvited(from: decoder)
            self = .memberInvited(value)
        case .chatEventMemberLeft:
            self = .memberLeft
        case .chatEventMemberPromoted:
            let value = try ChatEventMemberPromoted(from: decoder)
            self = .memberPromoted(value)
        case .chatEventMemberRestricted:
            let value = try ChatEventMemberRestricted(from: decoder)
            self = .memberRestricted(value)
        case .chatEventAvailableReactionsChanged:
            let value = try ChatEventAvailableReactionsChanged(from: decoder)
            self = .availableReactionsChanged(value)
        case .chatEventDescriptionChanged:
            let value = try ChatEventDescriptionChanged(from: decoder)
            self = .descriptionChanged(value)
        case .chatEventLinkedChatChanged:
            let value = try ChatEventLinkedChatChanged(from: decoder)
            self = .linkedChatChanged(value)
        case .chatEventLocationChanged:
            let value = try ChatEventLocationChanged(from: decoder)
            self = .locationChanged(value)
        case .chatEventMessageTtlChanged:
            let value = try ChatEventMessageTtlChanged(from: decoder)
            self = .messageTtlChanged(value)
        case .chatEventPermissionsChanged:
            let value = try ChatEventPermissionsChanged(from: decoder)
            self = .permissionsChanged(value)
        case .chatEventPhotoChanged:
            let value = try ChatEventPhotoChanged(from: decoder)
            self = .photoChanged(value)
        case .chatEventSlowModeDelayChanged:
            let value = try ChatEventSlowModeDelayChanged(from: decoder)
            self = .slowModeDelayChanged(value)
        case .chatEventStickerSetChanged:
            let value = try ChatEventStickerSetChanged(from: decoder)
            self = .stickerSetChanged(value)
        case .chatEventTitleChanged:
            let value = try ChatEventTitleChanged(from: decoder)
            self = .titleChanged(value)
        case .chatEventUsernameChanged:
            let value = try ChatEventUsernameChanged(from: decoder)
            self = .usernameChanged(value)
        case .chatEventHasProtectedContentToggled:
            let value = try ChatEventHasProtectedContentToggled(from: decoder)
            self = .hasProtectedContentToggled(value)
        case .chatEventInvitesToggled:
            let value = try ChatEventInvitesToggled(from: decoder)
            self = .invitesToggled(value)
        case .chatEventIsAllHistoryAvailableToggled:
            let value = try ChatEventIsAllHistoryAvailableToggled(from: decoder)
            self = .isAllHistoryAvailableToggled(value)
        case .chatEventSignMessagesToggled:
            let value = try ChatEventSignMessagesToggled(from: decoder)
            self = .signMessagesToggled(value)
        case .chatEventInviteLinkEdited:
            let value = try ChatEventInviteLinkEdited(from: decoder)
            self = .inviteLinkEdited(value)
        case .chatEventInviteLinkRevoked:
            let value = try ChatEventInviteLinkRevoked(from: decoder)
            self = .inviteLinkRevoked(value)
        case .chatEventInviteLinkDeleted:
            let value = try ChatEventInviteLinkDeleted(from: decoder)
            self = .inviteLinkDeleted(value)
        case .chatEventVideoChatCreated:
            let value = try ChatEventVideoChatCreated(from: decoder)
            self = .videoChatCreated(value)
        case .chatEventVideoChatEnded:
            let value = try ChatEventVideoChatEnded(from: decoder)
            self = .videoChatEnded(value)
        case .chatEventVideoChatMuteNewParticipantsToggled:
            let value = try ChatEventVideoChatMuteNewParticipantsToggled(from: decoder)
            self = .videoChatMuteNewParticipantsToggled(value)
        case .chatEventVideoChatParticipantIsMutedToggled:
            let value = try ChatEventVideoChatParticipantIsMutedToggled(from: decoder)
            self = .videoChatParticipantIsMutedToggled(value)
        case .chatEventVideoChatParticipantVolumeLevelChanged:
            let value = try ChatEventVideoChatParticipantVolumeLevelChanged(from: decoder)
            self = .videoChatParticipantVolumeLevelChanged(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageEdited(let value):
            try container.encode(Kind.chatEventMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .messageDeleted(let value):
            try container.encode(Kind.chatEventMessageDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .messagePinned(let value):
            try container.encode(Kind.chatEventMessagePinned, forKey: .type)
            try value.encode(to: encoder)
        case .messageUnpinned(let value):
            try container.encode(Kind.chatEventMessageUnpinned, forKey: .type)
            try value.encode(to: encoder)
        case .pollStopped(let value):
            try container.encode(Kind.chatEventPollStopped, forKey: .type)
            try value.encode(to: encoder)
        case .memberJoined:
            try container.encode(Kind.chatEventMemberJoined, forKey: .type)
        case .memberJoinedByInviteLink(let value):
            try container.encode(Kind.chatEventMemberJoinedByInviteLink, forKey: .type)
            try value.encode(to: encoder)
        case .memberJoinedByRequest(let value):
            try container.encode(Kind.chatEventMemberJoinedByRequest, forKey: .type)
            try value.encode(to: encoder)
        case .memberInvited(let value):
            try container.encode(Kind.chatEventMemberInvited, forKey: .type)
            try value.encode(to: encoder)
        case .memberLeft:
            try container.encode(Kind.chatEventMemberLeft, forKey: .type)
        case .memberPromoted(let value):
            try container.encode(Kind.chatEventMemberPromoted, forKey: .type)
            try value.encode(to: encoder)
        case .memberRestricted(let value):
            try container.encode(Kind.chatEventMemberRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .availableReactionsChanged(let value):
            try container.encode(Kind.chatEventAvailableReactionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .descriptionChanged(let value):
            try container.encode(Kind.chatEventDescriptionChanged, forKey: .type)
            try value.encode(to: encoder)
        case .linkedChatChanged(let value):
            try container.encode(Kind.chatEventLinkedChatChanged, forKey: .type)
            try value.encode(to: encoder)
        case .locationChanged(let value):
            try container.encode(Kind.chatEventLocationChanged, forKey: .type)
            try value.encode(to: encoder)
        case .messageTtlChanged(let value):
            try container.encode(Kind.chatEventMessageTtlChanged, forKey: .type)
            try value.encode(to: encoder)
        case .permissionsChanged(let value):
            try container.encode(Kind.chatEventPermissionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .photoChanged(let value):
            try container.encode(Kind.chatEventPhotoChanged, forKey: .type)
            try value.encode(to: encoder)
        case .slowModeDelayChanged(let value):
            try container.encode(Kind.chatEventSlowModeDelayChanged, forKey: .type)
            try value.encode(to: encoder)
        case .stickerSetChanged(let value):
            try container.encode(Kind.chatEventStickerSetChanged, forKey: .type)
            try value.encode(to: encoder)
        case .titleChanged(let value):
            try container.encode(Kind.chatEventTitleChanged, forKey: .type)
            try value.encode(to: encoder)
        case .usernameChanged(let value):
            try container.encode(Kind.chatEventUsernameChanged, forKey: .type)
            try value.encode(to: encoder)
        case .hasProtectedContentToggled(let value):
            try container.encode(Kind.chatEventHasProtectedContentToggled, forKey: .type)
            try value.encode(to: encoder)
        case .invitesToggled(let value):
            try container.encode(Kind.chatEventInvitesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .isAllHistoryAvailableToggled(let value):
            try container.encode(Kind.chatEventIsAllHistoryAvailableToggled, forKey: .type)
            try value.encode(to: encoder)
        case .signMessagesToggled(let value):
            try container.encode(Kind.chatEventSignMessagesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .inviteLinkEdited(let value):
            try container.encode(Kind.chatEventInviteLinkEdited, forKey: .type)
            try value.encode(to: encoder)
        case .inviteLinkRevoked(let value):
            try container.encode(Kind.chatEventInviteLinkRevoked, forKey: .type)
            try value.encode(to: encoder)
        case .inviteLinkDeleted(let value):
            try container.encode(Kind.chatEventInviteLinkDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .videoChatCreated(let value):
            try container.encode(Kind.chatEventVideoChatCreated, forKey: .type)
            try value.encode(to: encoder)
        case .videoChatEnded(let value):
            try container.encode(Kind.chatEventVideoChatEnded, forKey: .type)
            try value.encode(to: encoder)
        case .videoChatMuteNewParticipantsToggled(let value):
            try container.encode(Kind.chatEventVideoChatMuteNewParticipantsToggled, forKey: .type)
            try value.encode(to: encoder)
        case .videoChatParticipantIsMutedToggled(let value):
            try container.encode(Kind.chatEventVideoChatParticipantIsMutedToggled, forKey: .type)
            try value.encode(to: encoder)
        case .videoChatParticipantVolumeLevelChanged(let value):
            try container.encode(Kind.chatEventVideoChatParticipantVolumeLevelChanged, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A message was edited
public struct ChatEventMessageEdited: Codable, Equatable, Hashable {

    /// The message after it was edited
    public let newMessage: Message

    /// The original message before the edit
    public let oldMessage: Message


    public init(
        newMessage: Message,
        oldMessage: Message
    ) {
        self.newMessage = newMessage
        self.oldMessage = oldMessage
    }
}

/// A message was deleted
public struct ChatEventMessageDeleted: Codable, Equatable, Hashable {

    /// Deleted message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A message was pinned
public struct ChatEventMessagePinned: Codable, Equatable, Hashable {

    /// Pinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A message was unpinned
public struct ChatEventMessageUnpinned: Codable, Equatable, Hashable {

    /// Unpinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A poll in a message was stopped
public struct ChatEventPollStopped: Codable, Equatable, Hashable {

    /// The message with the poll
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A new member joined the chat via an invite link
public struct ChatEventMemberJoinedByInviteLink: Codable, Equatable, Hashable {

    /// Invite link used to join the chat
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A new member was accepted to the chat by an administrator
public struct ChatEventMemberJoinedByRequest: Codable, Equatable, Hashable {

    /// User identifier of the chat administrator, approved user join request
    public let approverUserId: Int64

    /// Invite link used to join the chat; may be null
    public let inviteLink: ChatInviteLink?


    public init(
        approverUserId: Int64,
        inviteLink: ChatInviteLink?
    ) {
        self.approverUserId = approverUserId
        self.inviteLink = inviteLink
    }
}

/// A new chat member was invited
public struct ChatEventMemberInvited: Codable, Equatable, Hashable {

    /// New member status
    public let status: ChatMemberStatus

    /// New member user identifier
    public let userId: Int64


    public init(
        status: ChatMemberStatus,
        userId: Int64
    ) {
        self.status = status
        self.userId = userId
    }
}

/// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
public struct ChatEventMemberPromoted: Codable, Equatable, Hashable {

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus

    /// Affected chat member user identifier
    public let userId: Int64


    public init(
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus,
        userId: Int64
    ) {
        self.newStatus = newStatus
        self.oldStatus = oldStatus
        self.userId = userId
    }
}

/// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
public struct ChatEventMemberRestricted: Codable, Equatable, Hashable {

    /// Affected chat member identifier
    public let memberId: MessageSender

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus


    public init(
        memberId: MessageSender,
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus
    ) {
        self.memberId = memberId
        self.newStatus = newStatus
        self.oldStatus = oldStatus
    }
}

/// The chat available reactions were changed
public struct ChatEventAvailableReactionsChanged: Codable, Equatable, Hashable {

    /// New chat available reactions
    public let newAvailableReactions: [String]

    /// Previous chat available reactions
    public let oldAvailableReactions: [String]


    public init(
        newAvailableReactions: [String],
        oldAvailableReactions: [String]
    ) {
        self.newAvailableReactions = newAvailableReactions
        self.oldAvailableReactions = oldAvailableReactions
    }
}

/// The chat description was changed
public struct ChatEventDescriptionChanged: Codable, Equatable, Hashable {

    /// New chat description
    public let newDescription: String

    /// Previous chat description
    public let oldDescription: String


    public init(
        newDescription: String,
        oldDescription: String
    ) {
        self.newDescription = newDescription
        self.oldDescription = oldDescription
    }
}

/// The linked chat of a supergroup was changed
public struct ChatEventLinkedChatChanged: Codable, Equatable, Hashable {

    /// New supergroup linked chat identifier
    public let newLinkedChatId: Int64

    /// Previous supergroup linked chat identifier
    public let oldLinkedChatId: Int64


    public init(
        newLinkedChatId: Int64,
        oldLinkedChatId: Int64
    ) {
        self.newLinkedChatId = newLinkedChatId
        self.oldLinkedChatId = oldLinkedChatId
    }
}

/// The supergroup location was changed
public struct ChatEventLocationChanged: Codable, Equatable, Hashable {

    /// New location; may be null
    public let newLocation: ChatLocation?

    /// Previous location; may be null
    public let oldLocation: ChatLocation?


    public init(
        newLocation: ChatLocation?,
        oldLocation: ChatLocation?
    ) {
        self.newLocation = newLocation
        self.oldLocation = oldLocation
    }
}

/// The message TTL was changed
public struct ChatEventMessageTtlChanged: Codable, Equatable, Hashable {

    /// New value of message_ttl
    public let newMessageTtl: Int

    /// Previous value of message_ttl
    public let oldMessageTtl: Int


    public init(
        newMessageTtl: Int,
        oldMessageTtl: Int
    ) {
        self.newMessageTtl = newMessageTtl
        self.oldMessageTtl = oldMessageTtl
    }
}

/// The chat permissions was changed
public struct ChatEventPermissionsChanged: Codable, Equatable, Hashable {

    /// New chat permissions
    public let newPermissions: ChatPermissions

    /// Previous chat permissions
    public let oldPermissions: ChatPermissions


    public init(
        newPermissions: ChatPermissions,
        oldPermissions: ChatPermissions
    ) {
        self.newPermissions = newPermissions
        self.oldPermissions = oldPermissions
    }
}

/// The chat photo was changed
public struct ChatEventPhotoChanged: Codable, Equatable, Hashable {

    /// New chat photo value; may be null
    public let newPhoto: ChatPhoto?

    /// Previous chat photo value; may be null
    public let oldPhoto: ChatPhoto?


    public init(
        newPhoto: ChatPhoto?,
        oldPhoto: ChatPhoto?
    ) {
        self.newPhoto = newPhoto
        self.oldPhoto = oldPhoto
    }
}

/// The slow_mode_delay setting of a supergroup was changed
public struct ChatEventSlowModeDelayChanged: Codable, Equatable, Hashable {

    /// New value of slow_mode_delay, in seconds
    public let newSlowModeDelay: Int

    /// Previous value of slow_mode_delay, in seconds
    public let oldSlowModeDelay: Int


    public init(
        newSlowModeDelay: Int,
        oldSlowModeDelay: Int
    ) {
        self.newSlowModeDelay = newSlowModeDelay
        self.oldSlowModeDelay = oldSlowModeDelay
    }
}

/// The supergroup sticker set was changed
public struct ChatEventStickerSetChanged: Codable, Equatable, Hashable {

    /// New identifier of the chat sticker set; 0 if none
    public let newStickerSetId: TdInt64

    /// Previous identifier of the chat sticker set; 0 if none
    public let oldStickerSetId: TdInt64


    public init(
        newStickerSetId: TdInt64,
        oldStickerSetId: TdInt64
    ) {
        self.newStickerSetId = newStickerSetId
        self.oldStickerSetId = oldStickerSetId
    }
}

/// The chat title was changed
public struct ChatEventTitleChanged: Codable, Equatable, Hashable {

    /// New chat title
    public let newTitle: String

    /// Previous chat title
    public let oldTitle: String


    public init(
        newTitle: String,
        oldTitle: String
    ) {
        self.newTitle = newTitle
        self.oldTitle = oldTitle
    }
}

/// The chat username was changed
public struct ChatEventUsernameChanged: Codable, Equatable, Hashable {

    /// New chat username
    public let newUsername: String

    /// Previous chat username
    public let oldUsername: String


    public init(
        newUsername: String,
        oldUsername: String
    ) {
        self.newUsername = newUsername
        self.oldUsername = oldUsername
    }
}

/// The has_protected_content setting of a channel was toggled
public struct ChatEventHasProtectedContentToggled: Codable, Equatable, Hashable {

    /// New value of has_protected_content
    public let hasProtectedContent: Bool


    public init(hasProtectedContent: Bool) {
        self.hasProtectedContent = hasProtectedContent
    }
}

/// The can_invite_users permission of a supergroup chat was toggled
public struct ChatEventInvitesToggled: Codable, Equatable, Hashable {

    /// New value of can_invite_users permission
    public let canInviteUsers: Bool


    public init(canInviteUsers: Bool) {
        self.canInviteUsers = canInviteUsers
    }
}

/// The is_all_history_available setting of a supergroup was toggled
public struct ChatEventIsAllHistoryAvailableToggled: Codable, Equatable, Hashable {

    /// New value of is_all_history_available
    public let isAllHistoryAvailable: Bool


    public init(isAllHistoryAvailable: Bool) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
    }
}

/// The sign_messages setting of a channel was toggled
public struct ChatEventSignMessagesToggled: Codable, Equatable, Hashable {

    /// New value of sign_messages
    public let signMessages: Bool


    public init(signMessages: Bool) {
        self.signMessages = signMessages
    }
}

/// A chat invite link was edited
public struct ChatEventInviteLinkEdited: Codable, Equatable, Hashable {

    /// New information about the invite link
    public let newInviteLink: ChatInviteLink

    /// Previous information about the invite link
    public let oldInviteLink: ChatInviteLink


    public init(
        newInviteLink: ChatInviteLink,
        oldInviteLink: ChatInviteLink
    ) {
        self.newInviteLink = newInviteLink
        self.oldInviteLink = oldInviteLink
    }
}

/// A chat invite link was revoked
public struct ChatEventInviteLinkRevoked: Codable, Equatable, Hashable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A revoked chat invite link was deleted
public struct ChatEventInviteLinkDeleted: Codable, Equatable, Hashable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A video chat was created
public struct ChatEventVideoChatCreated: Codable, Equatable, Hashable {

    /// Identifier of the video chat. The video chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// A video chat was ended
public struct ChatEventVideoChatEnded: Codable, Equatable, Hashable {

    /// Identifier of the video chat. The video chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// The mute_new_participants setting of a video chat was toggled
public struct ChatEventVideoChatMuteNewParticipantsToggled: Codable, Equatable, Hashable {

    /// New value of the mute_new_participants setting
    public let muteNewParticipants: Bool


    public init(muteNewParticipants: Bool) {
        self.muteNewParticipants = muteNewParticipants
    }
}

/// A video chat participant was muted or unmuted
public struct ChatEventVideoChatParticipantIsMutedToggled: Codable, Equatable, Hashable {

    /// New value of is_muted
    public let isMuted: Bool

    /// Identifier of the affected group call participant
    public let participantId: MessageSender


    public init(
        isMuted: Bool,
        participantId: MessageSender
    ) {
        self.isMuted = isMuted
        self.participantId = participantId
    }
}

/// A video chat participant volume level was changed
public struct ChatEventVideoChatParticipantVolumeLevelChanged: Codable, Equatable, Hashable {

    /// Identifier of the affected group call participant
    public let participantId: MessageSender

    /// New value of volume_level; 1-20000 in hundreds of percents
    public let volumeLevel: Int


    public init(
        participantId: MessageSender,
        volumeLevel: Int
    ) {
        self.participantId = participantId
        self.volumeLevel = volumeLevel
    }
}

