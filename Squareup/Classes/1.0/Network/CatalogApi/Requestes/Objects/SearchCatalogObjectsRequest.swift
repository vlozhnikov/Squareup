//
//  SearchCatalogObjectsRequest.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

internal class SearchCatalogObjectsRequest: Codable {
    
    var Cursor: String?
    var ObjectTypes: [CatalogObjectType]?
    var IncludeDeletedObjects: Bool?
    var IncludeRelatedObjects: Bool?
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> var BeginTime: Date?
    var Query: CatalogQuery?
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case ObjectTypes = "object_types"
        case IncludeDeletedObjects = "include_deleted_objects"
        case IncludeRelatedObjects = "include_related_objects"
        case BeginTime = "begin_time"
        case Query = "query"
        case Limit = "limit"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//       
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//        self.ObjectTypes = try container.decodeIfPresent([CatalogObjectType].self, forKey: .ObjectTypes)
//        self.IncludeDeletedObjects = try container.decodeIfPresent(Bool.self, forKey: .IncludeDeletedObjects)
//        self.IncludeRelatedObjects = try container.decodeIfPresent(Bool.self, forKey: .IncludeRelatedObjects)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BeginTime), !dateString.isEmpty {
//            self.BeginTime = try dateString.decode_RFC3339_Date(container, forKey: .BeginTime)
//        }
//        self.Query = try container.decodeIfPresent(CatalogQuery.self, forKey: .Query)
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//    }
}
