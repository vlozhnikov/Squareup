//
//  CustomAttribute.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - CustomAttribute: A custom attribute value.
/// Each custom attribute value has a corresponding CustomAttributeDefinition object.
/// https://developer.squareup.com/reference/square/objects/CustomAttribute
open class CustomAttribute: Codable {
    
    /// - Key: The identifier of the custom attribute definition and its corresponding custom attributes. This value can be a simple key, which is the key that is provided when the custom attribute definition is created, or a qualified key, if the requesting application is not the definition owner. The qualified key consists of the application ID of the custom attribute definition owner followed by the simple key that was provided when the definition was created. It has the format application_id:simple key.
    /// The value for a simple key can contain up to 60 alphanumeric characters, periods (.), underscores (_), and hyphens (-).
    /// Min Length 1
    var Key: String?
    /// - Value: The value assigned to the custom attribute. It is validated against the custom attribute definition's schema on write operations. For more information about custom attribute values, see Custom Attributes Overview.
    var Value: String?
    /// - Version: Read only. The current version of the custom attribute. This field is incremented when the custom attribute is changed. When updating an existing custom attribute value, you can provide this field and specify the current version of the custom attribute to enable optimistic concurrency. This field can also be used to enforce strong consistency for reads. For more information about strong consistency for reads, see Custom Attributes Overview.
    var Version: Int?
    /// - Visibility: Read only A copy of the visibility field value for the associated custom attribute definition.
    var Visibility: CustomAttributeDefinitionVisibility?
    /// - Definition: Read only A copy of the associated custom attribute definition object. This field is only set when the optional field is specified on the request.
    var Definition: CustomAttributeDefinition?
    /// - UpdatedAt: Read only The timestamp that indicates when the custom attribute was created or was most recently updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - CreatedAt: Read only The timestamp that indicates when the custom attribute was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Key = "key"
        case Value = "value"
        case Version = "version"
        case Visibility = "visibility"
        case Definition = "definition"
        case UpdatedAt = "updated_at"
        case CreatedAt = "created_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Key = try container.decodeIfPresent(String.self, forKey: .Key)
//        self.Value = try container.decodeIfPresent(String.self, forKey: .Value)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        self.Visibility = try container.decodeIfPresent(CustomAttributeDefinitionVisibility.self, forKey: .Visibility)
//        self.Definition = try container.decodeIfPresent(CustomAttributeDefinition.self, forKey: .Definition)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//    }
}
