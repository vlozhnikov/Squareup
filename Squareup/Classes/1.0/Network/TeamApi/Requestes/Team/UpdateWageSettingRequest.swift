//
//  UpdateWageSettingRequest.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

internal class UpdateWageSettingRequest: Codable {
    
    var wageSetting: WageSetting?
    
    enum CodingKeys: String, CodingKey {
        case wageSetting = "wage_setting"
    }
}
