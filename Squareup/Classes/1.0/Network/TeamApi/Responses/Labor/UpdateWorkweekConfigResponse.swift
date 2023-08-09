//
//  UpdateWorkweekConfigResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.08.23.
//

import Foundation

open class UpdateWorkweekConfigResponse: SquareupResponse {
    
    /// - workweekConfig: The response object.
    public var workweekConfig: WorkweekConfig?
    
    enum CodingKeys: String, CodingKey {
        case workweekConfig = "workweek_config"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.workweekConfig = try container.decodeIfPresent(WorkweekConfig.self, forKey: .workweekConfig)
    }
}
