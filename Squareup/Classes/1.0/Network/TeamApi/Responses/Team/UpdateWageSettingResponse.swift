//
//  UpdateWageSettingResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class UpdateWageSettingResponse: SquareupResponse {
    
    var wageSetting: WageSetting?
    
    enum CodingKeys: String, CodingKey {
        case wageSetting = "wage_setting"
    }
}
