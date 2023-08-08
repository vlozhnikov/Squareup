//
//  GetDeviceCodeResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class GetDeviceCodeResponse: SquareupResponse {
    
    /// - deviceCode: The queried DeviceCode.
    var deviceCode: DeviceCode?
    
    enum CodingKeys: String, CodingKey {
        case deviceCode = "device_code"
    }
}
