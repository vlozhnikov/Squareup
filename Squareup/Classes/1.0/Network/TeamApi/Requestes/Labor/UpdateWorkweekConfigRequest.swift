//
//  UpdateWorkweekConfigRequest.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class UpdateWorkweekConfigRequest: Codable {
    
    /// - workweekConfig: The updated WorkweekConfig object.
    public var workweekConfig: WorkweekConfig?
    
    enum CodingKeys: String, CodingKey {
        case workweekConfig = "workweek_config"
    }
}
