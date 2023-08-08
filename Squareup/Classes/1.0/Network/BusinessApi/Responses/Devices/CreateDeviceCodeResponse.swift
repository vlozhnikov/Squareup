//
//  CreateDeviceCodeResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class CreateDeviceCodeResponse: SquareupResponse {
    
    /// - deviceCode: The created DeviceCode object containing the device code string.
    public var deviceCode: DeviceCode?
    
    enum CodingKeys: String, CodingKey {
        case deviceCode = "device_code"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deviceCode = try container.decodeIfPresent(DeviceCode.self, forKey: .deviceCode)
    }
}
