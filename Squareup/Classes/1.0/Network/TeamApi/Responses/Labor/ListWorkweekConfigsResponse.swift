//
//  ListWorkweekConfigsResponse.swift
//  Squareup
//
//  Created by user on 4.08.23.
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
}
