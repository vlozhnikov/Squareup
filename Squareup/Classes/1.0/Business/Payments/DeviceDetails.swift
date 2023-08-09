//
//  DeviceDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 13.06.23.
//

import Foundation

/// - DeviceDetails: Details about the device that took the payment.
/// https://developer.squareup.com/reference/square/objects/DeviceDetails
open class DeviceDetails: Codable {
    
    /// - DeviceId: The Square-issued ID of the device.
    /// Max Length 255
    public var DeviceId: String?
    /// - DeviceInstallationId: The Square-issued installation ID for the device.
    /// Max Length 255
    public var DeviceInstallationId: String?
    /// - DeviceName: The name of the device set by the seller.
    /// Max Length 255
    public var DeviceName: String?
    
    enum CodingKeys: String, CodingKey {
        case DeviceId = "device_id"
        case DeviceInstallationId = "device_installation_id"
        case DeviceName = "device_name"
    }
}
