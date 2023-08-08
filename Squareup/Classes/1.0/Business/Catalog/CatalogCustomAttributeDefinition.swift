//
//  CatalogCustomAttributeDefinition.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogCustomAttributeDefinition: Contains information defining a custom attribute.
/// Custom attributes are intended to store additional information about a catalog object or to associate a catalog object with an entity in another system. Do not use custom attributes to store any sensitive information (personally identifiable information, card details, etc.).
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeDefinition
open class CatalogCustomAttributeDefinition: Codable {
    
    /// - CustomAttributeDefinitionType: The type of this custom attribute. Cannot be modified after creation. Required.
    var type: CatalogCustomAttributeDefinitionType?
    /// - Name: The name of this definition for API and seller-facing UI purposes. The name must be unique within the (merchant, application) pair. Required. May not be empty and may not exceed 255 characters. Can be modified after creation.
    ///  Min Length 1. Max Length 255.
    var Name: String?
    /// - Description: Seller-oriented description of the meaning of this Custom Attribute, any constraints that the seller should observe, etc. May be displayed as a tooltip in Square UIs. Max Length 255.
    var Description: String?
    /// - SourceApplication: Read only. Contains information about the application that created this custom attribute definition.
    var sourceApplication: SourceApplication?
    /// - AllowedObjectTypes: Required
    /// The set of CatalogObject types that this custom atttribute may be applied to. Currently, only ITEM, ITEM_VARIATION, and MODIFIER are allowed. At least one type must be included.
    var AllowedObjectTypes: [CatalogObjectType]?
    /// - SellerVisibility: The visibility of a custom attribute in seller-facing UIs (including Square Point of Sale applications and Square Dashboard). May be modified.
    var SellerVisibility: CatalogCustomAttributeDefinitionSellerVisibility?
    /// - AppVisibility: The visibility of a custom attribute to applications other than the application that created the attribute.
    var AppVisibility: CatalogCustomAttributeDefinitionAppVisibility?
    /// - StringConfig: Optionally, populated when type = STRING, unset otherwise.
    var StringConfig: CatalogCustomAttributeDefinitionStringConfig?
    /// - NumberConfig: Optionally, populated when type = NUMBER, unset otherwise.
    var NumberConfig: CatalogCustomAttributeDefinitionNumberConfig?
    /// - SelectionConfig: Populated when type is set to SELECTION, unset otherwise.
    var SelectionConfig: CatalogCustomAttributeDefinitionSelectionConfig?
    /// - CustomAttributeUsageCount: Read only The number of custom attributes that reference this custom attribute definition. Set by the server in response to a ListCatalog request with include_counts set to true. If the actual count is greater than 100, custom_attribute_usage_count will be set to 100.
    var CustomAttributeUsageCount: Int?
    /// - Key: The name of the desired custom attribute key that can be used to access the custom attribute value on catalog objects. Cannot be modified after the custom attribute definition has been created. Must be between 1 and 60 characters, and may only contain the characters [a-zA-Z0-9_-].
    ///
    /// Min Length 1
    /// Max Length 60
    var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case Name = "name"
        case Description = "description"
        case sourceApplication = "source_application"
        case AllowedObjectTypes = "allowed_object_types"
        case SellerVisibility = "seller_visibility"
        case AppVisibility = "app_visibility"
        case StringConfig = "string_config"
        case NumberConfig = "number_config"
        case SelectionConfig = "selection_config"
        case CustomAttributeUsageCount = "custom_attribute_usage_count"
        case Key = "key"
    }
}
