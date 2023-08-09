//
//  ListWorkweekConfigsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.08.23.
//

import Foundation

open class ListWorkweekConfigsResponse: SquareupResponse {
    
    /// - WorkweekConfigs: A page of WorkweekConfig results.
    public var WorkweekConfigs: [WorkweekConfig]?
    /// - Cursor: The value supplied in the subsequent request to fetch the next page of WorkweekConfig results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case WorkweekConfigs = "workweek_configs"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.WorkweekConfigs = try container.decodeIfPresent([WorkweekConfig].self, forKey: .WorkweekConfigs)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
