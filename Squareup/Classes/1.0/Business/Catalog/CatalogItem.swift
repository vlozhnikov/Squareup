//
//  CatalogItem.swift
//  Business Calendar
//
//  Created by user on 29.04.23.
//

import Foundation

/// - CatalogItem: A CatalogObject instance of the ITEM type, also referred to as an item, in the catalog.
/// https://developer.squareup.com/reference/square/objects/CatalogItem
open class CatalogItem: Codable {
    
    /// - Name: The item's name. This is a searchable attribute for use in applicable query filters, its value must not be empty, and the length is of Unicode code points.  Max Length 512
    var Name: String?
    /// - Description: Deprecated. The item's description. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Deprecated at 2022-07-20, this field is planned to retire in 6 months. You should migrate to use description_html to set the description of the CatalogItem instance. The description and description_html field values are kept in sync. If you try to set the both fields, the description_html text value overwrites the description value. Updates in one field are also reflected in the other, except for when you use an early version before Square API 2022-07-20 and description_html is set to blank, setting the description value to null does not nullify description_html.  Max Length 4096
    var Description: String?
    /// - Abbreviation: The text of the item's display label in the Square Point of Sale app. Only up to the first five characters of the string are used. This attribute is searchable, and its value length is of Unicode code points.  Max Length 24
    var Abbreviation: String?
    /// - LabelColor: The color of the item's display label in the Square Point of Sale app. This must be a valid hex color code.
    var LabelColor: String?
    /// - AvailableOnline: If true, the item can be added to shipping orders from the merchant's online store.
    var AvailableOnline: Bool?
    /// - AvailableForPickup: If true, the item can be added to pickup orders from the merchant's online store.
    var AvailableForPickup: Bool?
    /// - AvailableElectronically: If true, the item can be added to electronically fulfilled orders from the merchant's online store.
    var AvailableElectronically: Bool?
    /// - CategoryId: The ID of the item's category, if any.
    var CategoryId: String?
    /// - TaxIds: A set of IDs indicating the taxes enabled for this item. When updating an item, any taxes listed here will be added to the item. Taxes may also be added to or deleted from an item using UpdateItemTaxes.
    var TaxIds: [String]?
    /// - ModifierListInfo: A set of CatalogItemModifierListInfo objects representing the modifier lists that apply to this item, along with the overrides and min and max limits that are specific to this item. Modifier lists may also be added to or deleted from an item using UpdateItemModifierLists.
    var ModifierListInfo: [CatalogItemModifierListInfo]?
    /// - Variations: A list of CatalogItemVariation objects for this item. An item must have at least one variation.
    var Variations: [CatalogObject]?
    /// - ProductType: The product type of the item. May not be changed once an item has been created. Only items of product type REGULAR or APPOINTMENTS_SERVICE may be created by this API; items with other product types are read-only
    var ProductType: CatalogItemProductType?
    /// - SkipModifierScreen: If false, the Square Point of Sale app will present the CatalogItem's details screen immediately, allowing the merchant to choose CatalogModifiers before adding the item to the cart. This is the default behavior. If true, the Square Point of Sale app will immediately add the item to the cart with the pre-selected modifiers, and merchants can edit modifiers by drilling down onto the item's details. Third-party clients are encouraged to implement similar behaviors.
    var SkipModifierScreen: Bool?
    /// - ItemOptions: List of item options IDs for this item. Used to manage and group item variations in a specified order. Maximum: 6 item options.
    var ItemOptions: [CatalogItemOptionForItem]?
    /// - ImageIds: The IDs of images associated with this CatalogItem instance. These images will be shown to customers in Square Online Store. The first image will show up as the icon for this item in POS.
    var ImageIds: [String]?
    /// - SortName: A name to sort the item by. If this name is unspecified, namely, the sort_name field is absent, the regular name field is used for sorting. Its value must not be empty. It is currently supported for sellers of the Japanese locale only.
    var SortName: String?
    /// - DescriptionHtml: The item's description as expressed in valid HTML elements. The length of this field value, including those of HTML tags, is of Unicode points. With application query filters, the text values of the HTML elements and attributes are searchable. Invalid or unsupported HTML elements or attributes are ignored.
    /// Supported HTML elements include:
    ///     a: Link. Supports linking to website URLs, email address, and telephone numbers.
    ///     b, strong: Bold text
    ///     br: Line break
    ///     code: Computer code
    ///     div: Section
    ///     h1-h6: Headings
    ///     i, em: Italics
    ///     li: List element
    ///     ol: Numbered list
    ///     p: Paragraph
    ///     ul: Bullet list
    ///     u: Underline
    /// Supported HTML attributes include:
    ///     align: Alignment of the text content
    ///     href: Link destination
    ///     rel: Relationship between link's target and source
    ///     target: Place to open the linked document
    /// Max Length 65535.
    var DescriptionHtml: String?
    /// - DescriptionPlaintext: Read only A server-generated plaintext version of the description_html field, without formatting tags. Max Length 65535.
    var DescriptionPlaintext: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Description = "description"
        case Abbreviation = "abbreviation"
        case LabelColor = "label_color"
        case AvailableOnline = "available_online"
        case AvailableForPickup = "available_for_pickup"
        case AvailableElectronically = "available_electronically"
        case CategoryId = "category_id"
        case TaxIds = "tax_ids"
        case ModifierListInfo = "modifier_list_info"
        case Variations = "variations"
        case ProductType = "product_type"
        case SkipModifierScreen = "skip_modifier_screen"
        case ItemOptions = "item_options"
        case ImageIds = "image_ids"
        case SortName = "sort_name"
        case DescriptionHtml = "description_html"
        case DescriptionPlaintext = "description_plaintext"
    }
}
