//
//  CardPaymentDetails.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 12.06.23.
//

import Foundation

/// - CardPaymentDetails: Reflects the current status of a card payment.
/// Contains only non-confidential information.
/// https://developer.squareup.com/reference/square/objects/CardPaymentDetails
open class CardPaymentDetails: Codable {
    
    /// - Status: The card payment's current state. The state can be AUTHORIZED, CAPTURED, VOIDED, or FAILED.
    /// Max Length 50
    public var Status: CardPaymentDetailsStatus?
    /// - card: The credit card's non-confidential details.
    public var card: Card?
    /// - EntryMethod: The method used to enter the card's details for the payment. The method can be KEYED, SWIPED, EMV, ON_FILE, or CONTACTLESS.
    /// Max Length  50
    public var EntryMethod: CardPaymentDetailsEntryMethod?
    /// - CvvStatus: The status code returned from the Card Verification Value (CVV) check. The code can be CVV_ACCEPTED, CVV_REJECTED, or CVV_NOT_CHECKED.
    /// Max Length  50
    public var CvvStatus: CardPaymentDetailsCvvStatus?
    /// - AvsStatus: The status code returned from the Address Verification System (AVS) check. The code can be AVS_ACCEPTED, AVS_REJECTED, or AVS_NOT_CHECKED. Max Length 50
    public var AvsStatus: CardPaymentDetailsAvsStatus?
    /// - AuthResultCode: The status code returned by the card issuer that describes the payment's authorization status.
    /// Max Length 10
    public var AuthResultCode: String?
    /// - ApplicationIdentifier: For EMV payments, the application ID identifies the EMV application used for the payment.
    /// Max Length 32
    public var ApplicationIdentifier: String?
    /// - ApplicationName: For EMV payments, the human-readable name of the EMV application used for the payment.
    /// Max Length 16
    public var ApplicationName: String?
    /// - ApplicationCryptogram: For EMV payments, the cryptogram generated for the payment.
    /// Max Length 16
    public var ApplicationCryptogram: String?
    /// - VerificationMethod: For EMV payments, the method used to verify the cardholder's identity. The method can be PIN, SIGNATURE, PIN_AND_SIGNATURE, ON_DEVICE, or NONE.
    /// Max Length 50
    public var VerificationMethod: CardPaymentDetailsVerificationMethod?
    /// - VerificationResults: For EMV payments, the results of the cardholder verification. The result can be SUCCESS, FAILURE, or UNKNOWN.
    /// Max Length 50
    public var VerificationResults: CardPaymentDetailsVerificationMethod?
    /// - StatementDescription: The statement description sent to the card networks.
    /// Note: The actual statement description varies and is likely to be truncated and appended with additional information on a per issuer basis.
    /// Max Length 50
    public var StatementDescription: String?
    /// - DeviceDetails: Deprecated: Use Payment.device_details instead.
    /// Details about the device that took the payment.
    public var deviceDetails: DeviceDetails?
    /// - CardPaymentTimeline: The timeline for card payments.
    public var cardPaymentTimeline: CardPaymentTimeline?
    /// - RefundRequiresCardPresence: Whether the card must be physically present for the payment to be refunded. If set to true, the card must be present.
    public var RefundRequiresCardPresence: Bool?
    /// - Errors: Information about errors encountered during the request.
    public var Errors: [SquareErrorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
        case card = "card"
        case EntryMethod = "entry_method"
        case CvvStatus = "cvv_status"
        case AvsStatus = "avs_status"
        case AuthResultCode = "auth_result_code"
        case ApplicationIdentifier = "application_identifier"
        case ApplicationName = "application_name"
        case ApplicationCryptogram = "application_cryptogram"
        case VerificationMethod = "verification_method"
        case VerificationResults = "verification_results"
        case StatementDescription = "statement_description"
        case deviceDetails = "device_details"
        case cardPaymentTimeline = "card_payment_timeline"
        case RefundRequiresCardPresence = "refund_requires_card_presence"
        case Errors = "errors"
    }
}
