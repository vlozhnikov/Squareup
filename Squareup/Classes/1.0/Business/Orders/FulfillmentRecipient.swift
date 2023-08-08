//
//  FulfillmentRecipient.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - FulfillmentRecipient: Information about the fulfillment recipient.
/// https://developer.squareup.com/reference/square/objects/FulfillmentRecipient
open class FulfillmentRecipient: Codable {
    
    /// - CustomerId: The ID of the customer associated with the fulfillment.
    /// If customer_id is provided, the fulfillment recipient's display_name, email_address, and phone_number are automatically populated from the targeted customer profile. If these fields are set in the request, the request values override the information from the customer profile. If the targeted customer profile does not contain the necessary information and these fields are left unset, the request results in an error.
    /// Max Length 191
    public var CustomerId: String?
    /// - DisplayName: The display name of the fulfillment recipient. This field is required.
    /// If provided, the display name overrides the corresponding customer profile value indicated by customer_id.
    /// Max Length 255
    public var DisplayName: String?
    /// - EmailAddress: The email address of the fulfillment recipient.
    /// If provided, the email address overrides the corresponding customer profile value indicated by customer_id.
    /// Max Length 255
    public var EmailAddress: String?
    /// - PhoneNumber: The phone number of the fulfillment recipient. This field is required.
    /// If provided, the phone number overrides the corresponding customer profile value indicated by customer_id.
    /// Max Length 17
    public var PhoneNumber: String?
    /// - address: The address of the fulfillment recipient. This field is required.
    /// If provided, the address overrides the corresponding customer profile value indicated by customer_id.
    public var address: Address?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
        case DisplayName = "display_name"
        case EmailAddress = "email_address"
        case PhoneNumber = "phone_number"
        case address = "address"
    }
}
