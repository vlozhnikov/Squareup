//
//  CatalogCustomAttributeValue.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 29.04.23.
//

import Foundation

/// - CatalogCustomAttributeValue: An instance of a custom attribute.
/// Custom attributes can be defined and added to ITEM and ITEM_VARIATION type catalog objects.
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeValue
open class CatalogCustomAttributeValue: Codable {
    
    /// - Name: The name of the custom attribute.
    public var Name: String?
    /// - StringValue: The string value of the custom attribute. Populated if type = STRING./
    public var StringValue: String?
    /// - CustomAttributeDefinitionId: Read only The id of the CatalogCustomAttributeDefinition this value belongs to.
    public var CustomAttributeDefinitionId: String?
    /// - AttributeType: Read only A copy of type from the associated CatalogCustomAttributeDefinition./
    public var AttributeType: CatalogCustomAttributeDefinitionType?
    /// - NumberValue: Populated if type = NUMBER. Contains a string representation of a decimal number, using a . as the decimal separator./
    public var NumberValue: Decimal?
    /// - BooleanValue: A true or false value. Populated if type = BOOLEAN./
    public var BooleanValue: Bool?
    /// - SelectionUidValues: One or more choices from allowed_selections. Populated if type = SELECTION./
    public var SelectionUidValues = [String]()
    /// - Key: Read only If the associated CatalogCustomAttributeDefinition object is defined by another application, this key is prefixed by the defining application ID. For example, if the CatalogCustomAttributeDefinition has a key attribute of "cocoa_brand" and the defining application ID is "abcd1234", this key is "abcd1234:cocoa_brand" when the application making the request is different from the application defining the custom attribute definition. Otherwise, the key is simply "cocoa_brand"./
    public var Key: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case StringValue = "string_value"
        case CustomAttributeDefinitionId = "custom_attribute_definition_id"
        case AttributeType = "type"
        case NumberValue = "number_value"
        case BooleanValue = "boolean_value"
        case SelectionUidValues = "selection_uid_values"
        case Key = "key"
    }
}
