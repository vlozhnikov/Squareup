//
//  CustomerSegment.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

/// - CustomerSegment: Represents a group of customer profiles that match one or more predefined filter criteria.
/// Segments (also known as Smart Groups) are defined and created within the Customer Directory in the Square Seller Dashboard or Point of Sale.
/// https://developer.squareup.com/reference/square/objects/CustomerSegment
open class CustomerSegment: Codable {
    
    /// - Id: Read only A unique Square-generated ID for the segment.
    /// Max Length 255
    var Id: String?
    /// - Name: Read only The name of the segment.
    var Name: String?
    /// - CreatedAt: Read only The timestamp when the segment was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the segment was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Name = try container.decodeIfPresent(String.self, forKey: .Name)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//    }
}