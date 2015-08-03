//
//  SlackRTMTypes.swift
//  qslapi
//
//  Created by Daniel Miedema on 8/2/15.
//  Copyright © 2015 Quack. All rights reserved.
//

import Foundation

/// Websocket message types
enum Event: String {
    // MARK: Connection
    /// The client has succesfully connected to the server
    case Hello = "hello"
    ///
    case Error = "error"
    ///
    case Pong  = "pong"
    
    // MARK: Communication
    /// A channel member is typing a message
    case UserTyping = "user_typing"
    /// A message was sent to a channel
    case Message    = "message"
    
    // MARK: IM / Direct Messages
    /// A direct message channel was created
    case IMCreated          = "im_created"
    /// You opened a direct message channel
    case IMOpen             =  "im_open"
    /// You closed a direct message channel
    case IMClose            =  "im_close"
    /// A direct message read marker was updated
    case IMMarked           =  "im_marked"
    /// Bulk updates were made to a DM channel's history
    case IMHistoryChanged   =  "im_history_changed"
    
    // MARK: Channel
    ///
    case ChannelMarked          = "channel_marked"
    /// A team channel was created
    case ChannelCreated         = "channel_created"
    /// You joined a channel
    case ChannelJoined          = "channel_joined"
    /// You left a channel
    case ChannelLeft            = "channel_left"
    /// A team channel was deleted
    case ChannelDeleted         = "channel_deleted"
    /// A team channel was renamed
    case ChannelRename          = "channel_rename"
    /// A team channel was archived
    case ChannelArchive         = "channel_archive"
    /// A team channel was unarchived
    case ChannelUnarchive       = "channel_unarchive"
    /// Bulk updates were made to a channel's history
    case ChannelHistroyChanged  = "channel_history_changed"
    
    // MARK: Group
    /// You joined a private group
    case GroupJoined            = "group_joined"
    /// You left a private group
    case GroupLeft              = "group_left"
    /// You opened a group channel
    case GroupOpen              = "group_open"
    /// You closed a group channel
    case GroupClose             = "group_close"
    /// A private group was archived
    case GroupArchive           = "group_archive"
    /// A private group was unarchived
    case GroupUnarchive         = "group_unarchive"
    /// A private group was renamed
    case GroupRename            = "group_rename"
    /// A private group read marker was updated
    case GroupMarked            = "group_marked"
    /// Bulk updates were made to a group's history
    case GroupHistoryChanged    = "group_history_changed"
    
    // MARK: File
    /// A file was created
    case FileCreated        = "file_created"
    /// A file was shared
    case FileShared         = "file_shared"
    /// A file was unshared
    case FileUnshared       = "file_unshared"
    /// A file was made public
    case FilePublic         = "file_public"
    /// A file was made private
    case FilePrivate        = "file_private"
    /// A file was changed
    case FileChange         = "file_change"
    /// A file was deleted
    case FileDeleted        = "file_deleted"
    /// A file comment was added
    case FileCommentAdded   = "file_comment_added"
    /// A file comment was edited
    case FileCommentEdited  = "file_comment_edited"
    /// A file comment was deleted
    case FileCommentDeleted = "file_comment_deleted"
    
    // MARK: Pin
    /// A pin was added to a channel
    case PinAdded   = "pin_added"
    /// A pin was removed from a channel
    case PinRemoved = "pin_removed"
    
    // MARK: Presence
    /// A team member's presence changed
    case PresenceChange         = "presence_chage"
    /// You manually updated your presence
    case PresenceChangeManaul   = "manual_presence_change"
    
    // MARK: User
    /// You have updated your preferences
    case PreferenceChange   = "pref_change"
    /// A team member's data has changed
    case UserChange         = "user_change"
    /// A new team member has joined
    case TeamJoin           = "team_join"
    /// A team member has starred an item
    case StarAdded          = "star_added"
    /// A team member removed a star
    case StarRemoved        = "star_removed"
    /// A team member has added an emoji reaction to an item
    case ReactionAdded      = "reaction_added"
    /// A team member removed an emoji reaction
    case ReactionRemoved    = "reaction_removed"
    /// A team custom emoji has been added or changed
    case EmojiChanged       = "emoji_changed"
    /// A team slash command has been added or changed
    case CommandsChanged    = "commands_changed"
    
    // MARK: Team
    /// The team billing plan has changed
    case TeamPlanChange         = "team_plan_change"
    /// A team preference has been updated
    case TeamPreferenceChange   = "team_pref_change"
    /// The team name has changed
    case TeamRename             = "team_rename"
    /// The team domain has changed
    case TeamDomainChange       = "team_domain_change"
    /// The team is being migrated between servers
    case TeamMigrationStarted   = "team_migration_started"
    
    // MARK: Other
    /// The team email domain has changed
    case EmailDomainChange  = "email_domain_changed"
    /// An integration bot was added
    case BotAdded           = "bot_added"
    /// An integration bot was changed
    case BotChanged         = "bot_changed"
    /// The list of accounts a user is signed into has changed
    case AccountsChanged    = "accounts_changed"
}

/// Slack RTM API Events
enum Method: String {
    // MARK: Test
    /// Checks API calling code.
    case Test = "api.test"
    /// Checks authentication & identity.
    case Auth = "auth.test"
    
    // MARK: Channels
    /// Archives a channel.
    case ChannelsArchive     = "channels.archive"
    /// Creates a channel.
    case ChannelsCreate      = "channels.create"
    /// Fetches history of messages and events from a channel.
    case ChannelsHistory    = "channels.history"
    /// Gets information about a channel.
    case ChannelsInfo       = "channels.info"
    /// Invites a user to a channel.
    case ChannelsInvite     = "channels.invite"
    /// Joins a channel, creating it if needed.
    case ChannelsJoin       = "channels.join"
    /// Removes a user from a channel.
    case ChannelsKick       = "channels.kick"
    /// Leaves a channel.
    case ChannelsLeave      = "channels.leave"
    /// Lists all channels in a Slack team.
    case ChannelsList       = "channels.list"
    /// Sets the read cursor in a channel.
    case ChannelsMark       = "channels.mark"
    /// Renames a channel.
    case ChannelsRename     = "channels.rename"
    /// Sets the purpose for a channel.
    case ChannelsSetPurpose = "channels.setPurpose"
    /// Sets the topic for a channel.
    case ChannelsSetTopic   = "channels.setTopic"
    /// Unarchives a channel.
    case ChannelsUnarchive  = "channels.unarchive"
    
    // MARK: Chat
    /// Deletes a message.
    case ChatDelete         = "chat.delete"
    /// Sends a message to a channel.
    case ChatPostMessage    = "chat.postMessage"
    /// Updates a message.
    case ChatUpdate         = "chat.update"
    
    // MARK: Emoji
    /// Lists custom emoji for a team.
    case EmojiList = "emoji.list"
    
    // MARK: Files
    /// Deletes a file.
    case FilesDelete = "files.delete"
    /// Gets information about a team file.
    case FilesInfo   = "files.info"
    /// Lists & filters team files.
    case FilesList   = "files.list"
    /// Uploads or creates a file.
    case FilesUpload = "files.upload"
    
    // MARK: Groups
    /// Archives a private group.
    case GroupsArchive      = "groups.archive"
    /// Closes a private group.
    case GroupsClose        = "groups.close"
    /// Creates a private group.
    case GroupsCreate       = "groups.create"
    /// Clones and archives a private group.
    case GroupsCreateChild  = "groups.createChild"
    /// Fetches history of messages and events from a private group.
    case GroupsHistory      = "groups.history"
    /// Gets information about a private group.
    case GroupsInfo         = "groups.info"
    /// Invites a user to a private group.
    case GroupsInvite       = "groups.invite"
    /// Removes a user from a private group.
    case GroupsKick         = "groups.kick"
    /// Leaves a private group.
    case GroupsLeave        = "groups.leave"
    /// Lists private groups that the calling user has access to.
    case GroupsList         = "groups.list"
    /// Sets the read cursor in a private group.
    case GroupsMark         = "groups.mark"
    /// Opens a private group.
    case GroupsOpen         = "groups.open"
    /// Renames a private group.
    case GroupsRename       = "groups.rename"
    /// Sets the purpose for a private group.
    case GroupsSetPurpose   = "groups.setPurpose"
    /// Sets the topic for a private group.
    case GroupsSetTopic     = "groups.setTopic"
    /// Unarchives a private group.
    case GroupsUnarchive    = "groups.unarchive"
    
    // MARK: IM/Direct Message
    /// Close a direct message channel.
    case IMClose    = "im.close"
    /// Fetches history of messages and events from direct message channel.
    case IMHistory  = "im.history"
    /// Lists direct message channels for the calling user.
    case IMList     = "im.list"
    /// Sets the read cursor in a direct message channel.
    case IMMark     = "im.mark"
    /// Opens a direct message channel.
    case IMOpne     = "im.open"
    // MARK: OAuth
    /// Exchanges a temporary OAuth code for an API token.
    case OAuthAccess = "oauth.access"
    // MARK: Reactions
    /// Adds a reaction to an item.
    case ReactionsAdd = "reactions.add"
    /// Gets reactions for an item.
    case ReactionsGet = "reactions.get"
    /// Lists reactions made by a user.
    case ReactionsList = "reactions.list"
    /// Removes a reaction from an item.
    case ReactionsRemove = "reactions.remove"
    
    // MARK: RTM (Real Time Messaging)
    /// Starts a Real Time Messaging session.
    case RTMStart = "rtm.start"
    
    // MARK: Search
    /// Searches for messages and files matching a query.
    case SearchAll = "search.all"
    /// Searches for files matching a query.
    case SearchFiles = "search.files"
    /// Searches for messages matching a query.
    case SearchMessages = "search.messages"

    // MARK: Stars
    /// Lists stars for a user.
    case StarsList = "stars.list"
    
    // MARK: Team
    /// Gets the access logs for the current team.
    case TeamAccessLogs = "team.accessLogs"
    /// Gets information about the current team.
    case TeamInfo = "team.info"
    
    // MARK: Users
    /// Gets user presence information.
    case UsersGetPresence = "users.getPresence"
    /// Gets information about a user.
    case UsersInfo = "users.info"
    /// Lists all users in a Slack team.
    case UsersList = "users.list"
    /// Marks a user as active.
    case UsersActive = "users.setActive"
    /// Manually sets user presence.
    case UsersSetPresence = "users.setPresence"
}

/// API Types
enum Type: String {
    /// A public channel
    case Channel = "channel"
    /// A file, snippet or post uploaded to Slack
    case File = "file"
    /// A private group
    case Group = "group"
    /// A direct message channel with a user
    case IM = "im"
    /// A member on your team
    case User = "user"
}
