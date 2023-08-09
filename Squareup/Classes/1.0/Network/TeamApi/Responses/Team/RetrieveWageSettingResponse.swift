//
//  RetrieveWageSettingResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation

open class RetrieveWageSettingResponse: SquareupResponse {
    
    public var wageSetting: WageSetting?
    
    enum CodingKeys: String, CodingKey {
        case wageSetting = "wage_setting"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.wageSetting = try container.decodeIfPresent(WageSetting.self, forKey: .wageSetting)
    }
}
