//
//  UpdateWorkweekConfigResponse.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class UpdateWorkweekConfigResponse: SquareupResponse {
    
    /// - workweekConfig: The response object.
    var workweekConfig: WorkweekConfig?
    
    enum CodingKeys: String, CodingKey {
        case workweekConfig = "workweek_config"
    }
}
