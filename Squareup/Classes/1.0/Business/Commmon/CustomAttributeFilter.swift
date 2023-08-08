//
//  CustomAttributeFilter.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CustomAttributeFilter: Supported custom attribute query expressions for calling the SearchCatalogItems endpoint to search for items or item variations.
/// https://developer.squareup.com/reference/square/objects/CustomAttributeFilter
open class CustomAttributeFilter: Codable {
    
    /// - Name: A query expression to filter items or item variations by matching their custom attributes' custom_attribute_definition_id property value against the the specified id. Exactly one of custom_attribute_definition_id or key must be specified.
    public var CustomAttributeDefinitionId: String?
    /// - Key: A query expression to filter items or item variations by matching their custom attributes' key property value against the specified key. Exactly one of custom_attribute_definition_id or key must be specified.
    public var Key: String?
    /// - Caption: A query expression to filter items or item variations by matching their custom attributes' string_value property value against the specified text. Exactly one of string_filter, number_filter, selection_uids_filter, or bool_filter must be specified.
    public var StringFilter: String?
    /// - NumberFilter: A query expression to filter items or item variations with their custom attributes containing a number value within the specified range. Exactly one of string_filter, number_filter, selection_uids_filter, or bool_filter must be specified.
    public var NumberFilter: Range?
    /// - SelectionUidsFilter: A query expression to filter items or item variations by matching their custom attributes' selection_uid_values values against the specified selection uids. Exactly one of string_filter, number_filter, selection_uids_filter, or bool_filter must be specified.
    public var SelectionUidsFilter: [String]?
    /// - BoolFilter: A query expression to filter items or item variations by matching their custom attributes' boolean_value property values against the specified Boolean expression. Exactly one of string_filter, number_filter, selection_uids_filter, or bool_filter must be specified.
    public var BoolFilter: Bool?
    
    enum CodingKeys: String, CodingKey {
        case CustomAttributeDefinitionId = "custom_attribute_definition_id"
        case Key = "key"
        case StringFilter = "string_filter"
        case NumberFilter = "number_filter"
        case SelectionUidsFilter = "selection_uids_filter"
        case BoolFilter = "bool_filter"
    }
}
