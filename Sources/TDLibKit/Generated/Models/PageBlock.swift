//
//  PageBlock.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-87a51113
//  https://github.com/tdlib/td/tree/87a51113
//

import Foundation


/// Describes a block of an instant view web page
public indirect enum PageBlock: Codable, Equatable, Hashable {

    /// The title of a page
    case title(PageBlockTitle)

    /// The subtitle of a page
    case subtitle(PageBlockSubtitle)

    /// The author and publishing date of a page
    case authorDate(PageBlockAuthorDate)

    /// A header
    case header(PageBlockHeader)

    /// A subheader
    case subheader(PageBlockSubheader)

    /// A kicker
    case kicker(PageBlockKicker)

    /// A text paragraph
    case paragraph(PageBlockParagraph)

    /// A preformatted text paragraph
    case preformatted(PageBlockPreformatted)

    /// The footer of a page
    case footer(PageBlockFooter)

    /// An empty block separating a page
    case divider

    /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
    case anchor(PageBlockAnchor)

    /// A list of data blocks
    case list(PageBlockList)

    /// A block quote
    case blockQuote(PageBlockBlockQuote)

    /// A pull quote
    case pullQuote(PageBlockPullQuote)

    /// An animation
    case animation(PageBlockAnimation)

    /// An audio file
    case audio(PageBlockAudio)

    /// A photo
    case photo(PageBlockPhoto)

    /// A video
    case video(PageBlockVideo)

    /// A voice note
    case voiceNote(PageBlockVoiceNote)

    /// A page cover
    case cover(PageBlockCover)

    /// An embedded web page
    case embedded(PageBlockEmbedded)

    /// An embedded post
    case embeddedPost(PageBlockEmbeddedPost)

    /// A collage
    case collage(PageBlockCollage)

    /// A slideshow
    case slideshow(PageBlockSlideshow)

    /// A link to a chat
    case chatLink(PageBlockChatLink)

    /// A table
    case table(PageBlockTable)

    /// A collapsible block
    case details(PageBlockDetails)

    /// Related articles
    case relatedArticles(PageBlockRelatedArticles)

    /// A map
    case map(PageBlockMap)


    private enum Kind: String, Codable {
        case pageBlockTitle
        case pageBlockSubtitle
        case pageBlockAuthorDate
        case pageBlockHeader
        case pageBlockSubheader
        case pageBlockKicker
        case pageBlockParagraph
        case pageBlockPreformatted
        case pageBlockFooter
        case pageBlockDivider
        case pageBlockAnchor
        case pageBlockList
        case pageBlockBlockQuote
        case pageBlockPullQuote
        case pageBlockAnimation
        case pageBlockAudio
        case pageBlockPhoto
        case pageBlockVideo
        case pageBlockVoiceNote
        case pageBlockCover
        case pageBlockEmbedded
        case pageBlockEmbeddedPost
        case pageBlockCollage
        case pageBlockSlideshow
        case pageBlockChatLink
        case pageBlockTable
        case pageBlockDetails
        case pageBlockRelatedArticles
        case pageBlockMap
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pageBlockTitle:
            let value = try PageBlockTitle(from: decoder)
            self = .title(value)
        case .pageBlockSubtitle:
            let value = try PageBlockSubtitle(from: decoder)
            self = .subtitle(value)
        case .pageBlockAuthorDate:
            let value = try PageBlockAuthorDate(from: decoder)
            self = .authorDate(value)
        case .pageBlockHeader:
            let value = try PageBlockHeader(from: decoder)
            self = .header(value)
        case .pageBlockSubheader:
            let value = try PageBlockSubheader(from: decoder)
            self = .subheader(value)
        case .pageBlockKicker:
            let value = try PageBlockKicker(from: decoder)
            self = .kicker(value)
        case .pageBlockParagraph:
            let value = try PageBlockParagraph(from: decoder)
            self = .paragraph(value)
        case .pageBlockPreformatted:
            let value = try PageBlockPreformatted(from: decoder)
            self = .preformatted(value)
        case .pageBlockFooter:
            let value = try PageBlockFooter(from: decoder)
            self = .footer(value)
        case .pageBlockDivider:
            self = .divider
        case .pageBlockAnchor:
            let value = try PageBlockAnchor(from: decoder)
            self = .anchor(value)
        case .pageBlockList:
            let value = try PageBlockList(from: decoder)
            self = .list(value)
        case .pageBlockBlockQuote:
            let value = try PageBlockBlockQuote(from: decoder)
            self = .blockQuote(value)
        case .pageBlockPullQuote:
            let value = try PageBlockPullQuote(from: decoder)
            self = .pullQuote(value)
        case .pageBlockAnimation:
            let value = try PageBlockAnimation(from: decoder)
            self = .animation(value)
        case .pageBlockAudio:
            let value = try PageBlockAudio(from: decoder)
            self = .audio(value)
        case .pageBlockPhoto:
            let value = try PageBlockPhoto(from: decoder)
            self = .photo(value)
        case .pageBlockVideo:
            let value = try PageBlockVideo(from: decoder)
            self = .video(value)
        case .pageBlockVoiceNote:
            let value = try PageBlockVoiceNote(from: decoder)
            self = .voiceNote(value)
        case .pageBlockCover:
            let value = try PageBlockCover(from: decoder)
            self = .cover(value)
        case .pageBlockEmbedded:
            let value = try PageBlockEmbedded(from: decoder)
            self = .embedded(value)
        case .pageBlockEmbeddedPost:
            let value = try PageBlockEmbeddedPost(from: decoder)
            self = .embeddedPost(value)
        case .pageBlockCollage:
            let value = try PageBlockCollage(from: decoder)
            self = .collage(value)
        case .pageBlockSlideshow:
            let value = try PageBlockSlideshow(from: decoder)
            self = .slideshow(value)
        case .pageBlockChatLink:
            let value = try PageBlockChatLink(from: decoder)
            self = .chatLink(value)
        case .pageBlockTable:
            let value = try PageBlockTable(from: decoder)
            self = .table(value)
        case .pageBlockDetails:
            let value = try PageBlockDetails(from: decoder)
            self = .details(value)
        case .pageBlockRelatedArticles:
            let value = try PageBlockRelatedArticles(from: decoder)
            self = .relatedArticles(value)
        case .pageBlockMap:
            let value = try PageBlockMap(from: decoder)
            self = .map(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .title(let value):
            try container.encode(Kind.pageBlockTitle, forKey: .type)
            try value.encode(to: encoder)
        case .subtitle(let value):
            try container.encode(Kind.pageBlockSubtitle, forKey: .type)
            try value.encode(to: encoder)
        case .authorDate(let value):
            try container.encode(Kind.pageBlockAuthorDate, forKey: .type)
            try value.encode(to: encoder)
        case .header(let value):
            try container.encode(Kind.pageBlockHeader, forKey: .type)
            try value.encode(to: encoder)
        case .subheader(let value):
            try container.encode(Kind.pageBlockSubheader, forKey: .type)
            try value.encode(to: encoder)
        case .kicker(let value):
            try container.encode(Kind.pageBlockKicker, forKey: .type)
            try value.encode(to: encoder)
        case .paragraph(let value):
            try container.encode(Kind.pageBlockParagraph, forKey: .type)
            try value.encode(to: encoder)
        case .preformatted(let value):
            try container.encode(Kind.pageBlockPreformatted, forKey: .type)
            try value.encode(to: encoder)
        case .footer(let value):
            try container.encode(Kind.pageBlockFooter, forKey: .type)
            try value.encode(to: encoder)
        case .divider:
            try container.encode(Kind.pageBlockDivider, forKey: .type)
        case .anchor(let value):
            try container.encode(Kind.pageBlockAnchor, forKey: .type)
            try value.encode(to: encoder)
        case .list(let value):
            try container.encode(Kind.pageBlockList, forKey: .type)
            try value.encode(to: encoder)
        case .blockQuote(let value):
            try container.encode(Kind.pageBlockBlockQuote, forKey: .type)
            try value.encode(to: encoder)
        case .pullQuote(let value):
            try container.encode(Kind.pageBlockPullQuote, forKey: .type)
            try value.encode(to: encoder)
        case .animation(let value):
            try container.encode(Kind.pageBlockAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .audio(let value):
            try container.encode(Kind.pageBlockAudio, forKey: .type)
            try value.encode(to: encoder)
        case .photo(let value):
            try container.encode(Kind.pageBlockPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .video(let value):
            try container.encode(Kind.pageBlockVideo, forKey: .type)
            try value.encode(to: encoder)
        case .voiceNote(let value):
            try container.encode(Kind.pageBlockVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .cover(let value):
            try container.encode(Kind.pageBlockCover, forKey: .type)
            try value.encode(to: encoder)
        case .embedded(let value):
            try container.encode(Kind.pageBlockEmbedded, forKey: .type)
            try value.encode(to: encoder)
        case .embeddedPost(let value):
            try container.encode(Kind.pageBlockEmbeddedPost, forKey: .type)
            try value.encode(to: encoder)
        case .collage(let value):
            try container.encode(Kind.pageBlockCollage, forKey: .type)
            try value.encode(to: encoder)
        case .slideshow(let value):
            try container.encode(Kind.pageBlockSlideshow, forKey: .type)
            try value.encode(to: encoder)
        case .chatLink(let value):
            try container.encode(Kind.pageBlockChatLink, forKey: .type)
            try value.encode(to: encoder)
        case .table(let value):
            try container.encode(Kind.pageBlockTable, forKey: .type)
            try value.encode(to: encoder)
        case .details(let value):
            try container.encode(Kind.pageBlockDetails, forKey: .type)
            try value.encode(to: encoder)
        case .relatedArticles(let value):
            try container.encode(Kind.pageBlockRelatedArticles, forKey: .type)
            try value.encode(to: encoder)
        case .map(let value):
            try container.encode(Kind.pageBlockMap, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The title of a page
public struct PageBlockTitle: Codable, Equatable, Hashable {

    /// Title
    public let title: RichText


    public init(title: RichText) {
        self.title = title
    }
}

/// The subtitle of a page
public struct PageBlockSubtitle: Codable, Equatable, Hashable {

    /// Subtitle
    public let subtitle: RichText


    public init(subtitle: RichText) {
        self.subtitle = subtitle
    }
}

/// The author and publishing date of a page
public struct PageBlockAuthorDate: Codable, Equatable, Hashable {

    /// Author
    public let author: RichText

    /// Point in time (Unix timestamp) when the article was published; 0 if unknown
    public let publishDate: Int


    public init(
        author: RichText,
        publishDate: Int
    ) {
        self.author = author
        self.publishDate = publishDate
    }
}

/// A header
public struct PageBlockHeader: Codable, Equatable, Hashable {

    /// Header
    public let header: RichText


    public init(header: RichText) {
        self.header = header
    }
}

/// A subheader
public struct PageBlockSubheader: Codable, Equatable, Hashable {

    /// Subheader
    public let subheader: RichText


    public init(subheader: RichText) {
        self.subheader = subheader
    }
}

/// A kicker
public struct PageBlockKicker: Codable, Equatable, Hashable {

    /// Kicker
    public let kicker: RichText


    public init(kicker: RichText) {
        self.kicker = kicker
    }
}

/// A text paragraph
public struct PageBlockParagraph: Codable, Equatable, Hashable {

    /// Paragraph text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A preformatted text paragraph
public struct PageBlockPreformatted: Codable, Equatable, Hashable {

    /// Programming language for which the text needs to be formatted
    public let language: String

    /// Paragraph text
    public let text: RichText


    public init(
        language: String,
        text: RichText
    ) {
        self.language = language
        self.text = text
    }
}

/// The footer of a page
public struct PageBlockFooter: Codable, Equatable, Hashable {

    /// Footer
    public let footer: RichText


    public init(footer: RichText) {
        self.footer = footer
    }
}

/// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
public struct PageBlockAnchor: Codable, Equatable, Hashable {

    /// Name of the anchor
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A list of data blocks
public struct PageBlockList: Codable, Equatable, Hashable {

    /// The items of the list
    public let items: [PageBlockListItem]


    public init(items: [PageBlockListItem]) {
        self.items = items
    }
}

/// A block quote
public struct PageBlockBlockQuote: Codable, Equatable, Hashable {

    /// Quote credit
    public let credit: RichText

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// A pull quote
public struct PageBlockPullQuote: Codable, Equatable, Hashable {

    /// Quote credit
    public let credit: RichText

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// An animation
public struct PageBlockAnimation: Codable, Equatable, Hashable {

    /// Animation file; may be null
    public let animation: Animation?

    /// Animation caption
    public let caption: PageBlockCaption

    /// True, if the animation must be played automatically
    public let needAutoplay: Bool


    public init(
        animation: Animation?,
        caption: PageBlockCaption,
        needAutoplay: Bool
    ) {
        self.animation = animation
        self.caption = caption
        self.needAutoplay = needAutoplay
    }
}

/// An audio file
public struct PageBlockAudio: Codable, Equatable, Hashable {

    /// Audio file; may be null
    public let audio: Audio?

    /// Audio file caption
    public let caption: PageBlockCaption


    public init(
        audio: Audio?,
        caption: PageBlockCaption
    ) {
        self.audio = audio
        self.caption = caption
    }
}

/// A photo
public struct PageBlockPhoto: Codable, Equatable, Hashable {

    /// Photo caption
    public let caption: PageBlockCaption

    /// Photo file; may be null
    public let photo: Photo?

    /// URL that needs to be opened when the photo is clicked
    public let url: String


    public init(
        caption: PageBlockCaption,
        photo: Photo?,
        url: String
    ) {
        self.caption = caption
        self.photo = photo
        self.url = url
    }
}

/// A video
public struct PageBlockVideo: Codable, Equatable, Hashable {

    /// Video caption
    public let caption: PageBlockCaption

    /// True, if the video must be looped
    public let isLooped: Bool

    /// True, if the video must be played automatically
    public let needAutoplay: Bool

    /// Video file; may be null
    public let video: Video?


    public init(
        caption: PageBlockCaption,
        isLooped: Bool,
        needAutoplay: Bool,
        video: Video?
    ) {
        self.caption = caption
        self.isLooped = isLooped
        self.needAutoplay = needAutoplay
        self.video = video
    }
}

/// A voice note
public struct PageBlockVoiceNote: Codable, Equatable, Hashable {

    /// Voice note caption
    public let caption: PageBlockCaption

    /// Voice note; may be null
    public let voiceNote: VoiceNote?


    public init(
        caption: PageBlockCaption,
        voiceNote: VoiceNote?
    ) {
        self.caption = caption
        self.voiceNote = voiceNote
    }
}

/// A page cover
public struct PageBlockCover: Codable, Equatable, Hashable {

    /// Cover
    public let cover: PageBlock


    public init(cover: PageBlock) {
        self.cover = cover
    }
}

/// An embedded web page
public struct PageBlockEmbedded: Codable, Equatable, Hashable {

    /// True, if scrolling needs to be allowed
    public let allowScrolling: Bool

    /// Block caption
    public let caption: PageBlockCaption

    /// Block height; 0 if unknown
    public let height: Int

    /// HTML-markup of the embedded page
    public let html: String

    /// True, if the block must be full width
    public let isFullWidth: Bool

    /// Poster photo, if available; may be null
    public let posterPhoto: Photo?

    /// Web page URL, if available
    public let url: String

    /// Block width; 0 if unknown
    public let width: Int


    public init(
        allowScrolling: Bool,
        caption: PageBlockCaption,
        height: Int,
        html: String,
        isFullWidth: Bool,
        posterPhoto: Photo?,
        url: String,
        width: Int
    ) {
        self.allowScrolling = allowScrolling
        self.caption = caption
        self.height = height
        self.html = html
        self.isFullWidth = isFullWidth
        self.posterPhoto = posterPhoto
        self.url = url
        self.width = width
    }
}

/// An embedded post
public struct PageBlockEmbeddedPost: Codable, Equatable, Hashable {

    /// Post author
    public let author: String

    /// Post author photo; may be null
    public let authorPhoto: Photo?

    /// Post caption
    public let caption: PageBlockCaption

    /// Point in time (Unix timestamp) when the post was created; 0 if unknown
    public let date: Int

    /// Post content
    public let pageBlocks: [PageBlock]

    /// Web page URL
    public let url: String


    public init(
        author: String,
        authorPhoto: Photo?,
        caption: PageBlockCaption,
        date: Int,
        pageBlocks: [PageBlock],
        url: String
    ) {
        self.author = author
        self.authorPhoto = authorPhoto
        self.caption = caption
        self.date = date
        self.pageBlocks = pageBlocks
        self.url = url
    }
}

/// A collage
public struct PageBlockCollage: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Collage item contents
    public let pageBlocks: [PageBlock]


    public init(
        caption: PageBlockCaption,
        pageBlocks: [PageBlock]
    ) {
        self.caption = caption
        self.pageBlocks = pageBlocks
    }
}

/// A slideshow
public struct PageBlockSlideshow: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Slideshow item contents
    public let pageBlocks: [PageBlock]


    public init(
        caption: PageBlockCaption,
        pageBlocks: [PageBlock]
    ) {
        self.caption = caption
        self.pageBlocks = pageBlocks
    }
}

/// A link to a chat
public struct PageBlockChatLink: Codable, Equatable, Hashable {

    /// Chat photo; may be null
    public let photo: ChatPhotoInfo?

    /// Chat title
    public let title: String

    /// Chat username by which all other information about the chat can be resolved
    public let username: String


    public init(
        photo: ChatPhotoInfo?,
        title: String,
        username: String
    ) {
        self.photo = photo
        self.title = title
        self.username = username
    }
}

/// A table
public struct PageBlockTable: Codable, Equatable, Hashable {

    /// Table caption
    public let caption: RichText

    /// Table cells
    public let cells: [[PageBlockTableCell]]

    /// True, if the table is bordered
    public let isBordered: Bool

    /// True, if the table is striped
    public let isStriped: Bool


    public init(
        caption: RichText,
        cells: [[PageBlockTableCell]],
        isBordered: Bool,
        isStriped: Bool
    ) {
        self.caption = caption
        self.cells = cells
        self.isBordered = isBordered
        self.isStriped = isStriped
    }
}

/// A collapsible block
public struct PageBlockDetails: Codable, Equatable, Hashable {

    /// Always visible heading for the block
    public let header: RichText

    /// True, if the block is open by default
    public let isOpen: Bool

    /// Block contents
    public let pageBlocks: [PageBlock]


    public init(
        header: RichText,
        isOpen: Bool,
        pageBlocks: [PageBlock]
    ) {
        self.header = header
        self.isOpen = isOpen
        self.pageBlocks = pageBlocks
    }
}

/// Related articles
public struct PageBlockRelatedArticles: Codable, Equatable, Hashable {

    /// List of related articles
    public let articles: [PageBlockRelatedArticle]

    /// Block header
    public let header: RichText


    public init(
        articles: [PageBlockRelatedArticle],
        header: RichText
    ) {
        self.articles = articles
        self.header = header
    }
}

/// A map
public struct PageBlockMap: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Map height
    public let height: Int

    /// Location of the map center
    public let location: Location

    /// Map width
    public let width: Int

    /// Map zoom level
    public let zoom: Int


    public init(
        caption: PageBlockCaption,
        height: Int,
        location: Location,
        width: Int,
        zoom: Int
    ) {
        self.caption = caption
        self.height = height
        self.location = location
        self.width = width
        self.zoom = zoom
    }
}

