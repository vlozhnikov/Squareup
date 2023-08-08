//
//  UpdateWorkweekConfigRequest.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

internal class UpdateWorkweekConfigRequest: Codable {
    
    /// - workweekConfig: The updated WorkweekConfig object.
    var workweekConfig: WorkweekConfig?
    
    enum CodingKeys: String, CodingKey {
        case workweekConfig = "workweek_config"
    }
}
