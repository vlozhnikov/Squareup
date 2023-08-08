//
//  ErrorCode.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ErrorCode: Indicates the specific error that occurred during a request to a Square API.
/// https://developer.squareup.com/reference/square/enums/ErrorCode
enum ErrorCode: String, Codable {
    
    /// - InternalServerError: A general server error occurred.
    case InternalServerError = "INTERNAL_SERVER_ERROR"
    /// - Unauthorized: A general authorization error occurred.
    case Unauthorized = "UNAUTHORIZED"
    /// - AccessTokenExpires: The provided access token has expired.
    case AccessTokenExpires = "ACCESS_TOKEN_EXPIRED"
    /// - AccessTokenRevoked: The provided access token has been revoked.
    case AccessTokenRevoked = "ACCESS_TOKEN_REVOKED"
    /// - ClientDisabled: The provided client has been disabled.
    case ClientDisabled = "CLIENT_DISABLED"
    /// - Forbidden: A general access error occurred.
    case Forbidden = "FORBIDDEN"
    /// - InsufficientScopes: The provided access token does not have permission to execute the requested action.
    case InsufficientScopes = "INSUFFICIENT_SCOPES"
    /// - ApplicationDisabled: The calling application was disabled.
    case ApplicationDisabled = "APPLICATION_DISABLED"
    /// - V1Application: The calling application was created prior to 2016-03-30 and is not compatible with v2 Square API calls.
    case V1Application = "V1_APPLICATION"
    /// - V1AccessToken: The calling application is using an access token created prior to 2016-03-30 and is not compatible with v2 Square API calls.
    case V1AccessToken = "V1_ACCESS_TOKEN"
    /// - CardProcessingNotEnabled: The location provided in the API call is not enabled for credit card processing.
    case CardProcessingNotEnabled = "CARD_PROCESSING_NOT_ENABLED"
    /// - MerchantSubscriptionNotFound: Beta
    /// A required subscription was not found for the merchant
    case MerchantSubscriptionNotFound = "MERCHANT_SUBSCRIPTION_NOT_FOUND"
    /// - BadRequest: A general error occurred with the request.
    case BadRequest = "BAD_REQUEST"
    /// - MissingRequiredParameter: The request is missing a required path, query, or body parameter.
    case MissingRequiredParameter = "MISSING_REQUIRED_PARAMETER"
    /// - IncorrectType: The value provided in the request is the wrong type. For example, a string instead of an integer.
    case IncorrectType = "INCORRECT_TYPE"
    /// - InvalidTime: Formatting for the provided time value is incorrect.
    case InvalidTime = "INVALID_TIME"
    /// - InvalidTimeRange: The time range provided in the request is invalid. For example, the end time is before the start time.
    case InvalidTimeRange = "INVALID_TIME_RANGE"
    /// - InvalidValue: The provided value is invalid. For example, including % in a phone number.
    case InvalidValue = "INVALID_VALUE"
    /// - InvalidCursor: The pagination cursor included in the request is invalid.
    case InvalidCursor = "INVALID_CURSOR"
    /// - UnknownQueryParameter: The query parameters provided is invalid for the requested endpoint.
    case UnknownQueryParameter = "UNKNOWN_QUERY_PARAMETER"
    /// - ConflictingParameters: One or more of the request parameters conflict with each other.
    case ConflictingParameters = "CONFLICTING_PARAMETERS"
    /// - ExpectedJsonBody: The request body is not a JSON object.
    case ExpectedJsonBody = "EXPECTED_JSON_BODY"
    /// - InvalidSortOrder: The provided sort order is not a valid key. Currently, sort order must be ASC or DESC.
    case InvalidSortOrder = "INVALID_SORT_ORDER"
    /// - ValueRegexMismatch: The provided value does not match an expected regular expression.
    case ValueRegexMismatch = "VALUE_REGEX_MISMATCH"
    /// - ValueTooShort: The provided string value is shorter than the minimum length allowed.
    case ValueTooShort = "VALUE_TOO_SHORT"
    /// - ValueTooLong: The provided string value is longer than the maximum length allowed.
    case ValueTooLong = "VALUE_TOO_LONG"
    /// - ValueTooLow: The provided value is less than the supported minimum.
    case ValueTooLow = "VALUE_TOO_LOW"
    /// - ValueTooHigh: The provided value is greater than the supported maximum.
    case ValueTooHigh = "VALUE_TOO_HIGH"
    /// - ValueEmpty: The provided value has a default (empty) value such as a blank string.
    case ValueEmpty = "VALUE_EMPTY"
    /// - ArrayLengthTooLong: The provided array has too many elements.
    case ArrayLengthTooLong = "ARRAY_LENGTH_TOO_LONG"
    /// - ArrayLengthTooShort: The provided array has too few elements.
    case ArrayLengthTooShort = "ARRAY_LENGTH_TOO_SHORT"
    /// - ArrayEmpty: The provided array is empty.
    case ArrayEmpty = "ARRAY_EMPTY"
    /// - ExpectedBoolean: The endpoint expected the provided value to be a boolean.
    case ExpectedBoolean = "EXPECTED_BOOLEAN"
    /// - ExpectedInteger: The endpoint expected the provided value to be an integer.
    case ExpectedInteger = "EXPECTED_INTEGER"
    /// - ExpectedFloat: The endpoint expected the provided value to be a float.
    case ExpectedFloat = "EXPECTED_FLOAT"
    /// - ExpectedString: The endpoint expected the provided value to be a string.
    case ExpectedString = "EXPECTED_STRING"
    /// - ExpectedObject: The endpoint expected the provided value to be a JSON object.
    case ExpectedObject = "EXPECTED_OBJECT"
    /// - ExpectedArray: The endpoint expected the provided value to be an array or list.
    case ExpectedArray = "EXPECTED_ARRAY"
    /// - ExpectedMap: The endpoint expected the provided value to be a map or associative array.
    case ExpectedMap = "EXPECTED_MAP"
    /// - ExpectedBase64EncodedByteArray: The endpoint expected the provided value to be an array encoded in base64.
    case ExpectedBase64EncodedByteArray = "EXPECTED_BASE64_ENCODED_BYTE_ARRAY"
    /// - InvalidArrayValue: One or more objects in the array does not match the array type.
    case InvalidArrayValue = "INVALID_ARRAY_VALUE"
    /// - InvalidEnumValue: The provided static string is not valid for the field.
    case InvalidEnumValue = "INVALID_ENUM_VALUE"
    /// - InvalidContentType: Invalid content type header.
    case InvalidContentType = "INVALID_CONTENT_TYPE"
    /// - InvalidFormValue: Only relevant for applications created prior to 2016-03-30. Indicates there was an error while parsing form values.
    case InvalidFormValue = "INVALID_FORM_VALUE"
    /// - CustomerNotFound: The provided customer id can't be found in the merchant's customers list.
    case CustomerNotFound = "CUSTOMER_NOT_FOUND"
    /// - OneInstrumentExpected: A general error occurred.
    case OneInstrumentExpected = "ONE_INSTRUMENT_EXPECTED"
    /// - NoFieldsSet: A general error occurred.
    case NoFieldsSet = "NO_FIELDS_SET"
    /// - TooManyMapEntries: Too many entries in the map field.
    case TooManyMapEntries = "TOO_MANY_MAP_ENTRIES"
    /// - MapKeyLengthTooShort: The length of one of the provided keys in the map is too short.
    case MapKeyLengthTooShort = "MAP_KEY_LENGTH_TOO_SHORT"
    /// - MapKeyLengthTooLong: The length of one of the provided keys in the map is too long.
    case MapKeyLengthTooLong = "MAP_KEY_LENGTH_TOO_LONG"
    /// - CustomerMissingName: The provided customer does not have a recorded name.
    case CustomerMissingName = "CUSTOMER_MISSING_NAME"
    /// - CustomerMissingEmail: The provided customer does not have a recorded email.
    case CustomerMissingEmail = "CUSTOMER_MISSING_EMAIL"
    /// - InvalidPauseLength: The subscription cannot be paused longer than the duration of the current phase.
    case InvalidPauseLength = "INVALID_PAUSE_LENGTH"
    /// - InvalidDate: The subscription cannot be paused/resumed on the given date.
    case InvalidDate = "INVALID_DATE"
    /// - UnsupportingCountry: The API request references an unsupported country.
    case UnsupportingCountry = "UNSUPPORTED_COUNTRY"
    /// - UnsupportingCurrency: The API request references an unsupported currency.
    case UnsupportingCurrency = "UNSUPPORTED_CURRENCY"
    /// - AppleTtpPinToken: The payment was declined by the card issuer during an Apple Tap to Pay (TTP) transaction with a request for the card's PIN. This code will be returned alongside CARD_DECLINED_VERIFICATION_REQUIRED as a supplemental error, and will include an issuer-provided token in the details field that is needed to initiate the PIN collection flow on the iOS device.
    case AppleTtpPinToken = "APPLE_TTP_PIN_TOKEN"
    /// - CardExpires: The card issuer declined the request because the card is expired.
    case CardExpires = "CARD_EXPIRED"
    /// - InvalidExpiration: The expiration date for the payment card is invalid. For example, it indicates a date in the past.
    case InvalidExpiration = "INVALID_EXPIRATION"
    /// - InvalidExpirationYear: The expiration year for the payment card is invalid. For example, it indicates a year in the past or contains invalid characters.
    case InvalidExpirationYear = "INVALID_EXPIRATION_YEAR"
    /// - InvalidExpirationDate: The expiration date for the payment card is invalid. For example, it contains invalid characters.
    case InvalidExpirationDate = "INVALID_EXPIRATION_DATE"
    /// - UnsupportedCardBrand: The credit card provided is not from a supported issuer.
    case UnsupportedCardBrand = "UNSUPPORTED_CARD_BRAND"
    /// - UnsupportedCardMethod: The entry method for the credit card (swipe, dip, tap) is not supported.
    case UnsupportedCardMethod = "UNSUPPORTED_ENTRY_METHOD"
    /// - InvalidEncryptedCard: The encrypted card information is invalid.
    case InvalidEncryptedCard = "INVALID_ENCRYPTED_CARD"
    /// - InvalidCard: The credit card cannot be validated based on the provided details.
    case InvalidCard = "INVALID_CARD"
    /// - PaymentAmountMismatch: The payment was declined because there was a payment amount mismatch. The money amount Square was expecting does not match the amount provided.
    case PaymentAmountMismatch = "PAYMENT_AMOUNT_MISMATCH"
    /// - GenericDecline: Square received a decline without any additional information. If the payment information seems correct, the buyer can contact their issuer to ask for more information.
    case GenericDecline = "GENERIC_DECLINE"
    /// - CvvFailure: The card issuer declined the request because the CVV value is invalid.
    case CvvFailure = "CVV_FAILURE"
    /// - AddressVerificationFailure: The card issuer declined the request because the postal code is invalid.
    case AddressVerificationFailure = "ADDRESS_VERIFICATION_FAILURE"
    /// - InvalidAccount: The issuer was not able to locate the account on record.
    case InvalidAccount = "INVALID_ACCOUNT"
    /// - CurrencyMismatch: The currency associated with the payment is not valid for the provided funding source. For example, a gift card funded in USD cannot be used to process payments in GBP.
    case CurrencyMismatch = "CURRENCY_MISMATCH"
    /// - InsufficientFunds: The funding source has insufficient funds to cover the payment.
    case InsufficientFunds = "INSUFFICIENT_FUNDS"
    /// - InsufficientPermissions: The Square account does not have the permissions to accept this payment. For example, Square may limit which merchants are allowed to receive gift card payments.
    case InsufficientPermissions = "INSUFFICIENT_PERMISSIONS"
    /// - CardholderInsufficientPermissions: The card issuer has declined the transaction due to restrictions on where the card can be used. For example, a gift card is limited to a single merchant.
    case CardholderInsufficientPermissions = "CARDHOLDER_INSUFFICIENT_PERMISSIONS"
    /// - InvalidLocation: The Square account cannot take payments in the specified region. A Square account can take payments only from the region where the account was created.
    case InvalidLocation = "INVALID_LOCATION"
    /// - TransactionLimit: The card issuer has determined the payment amount is either too high or too low. The API returns the error code mostly for credit cards (for example, the card reached the credit limit). However, sometimes the issuer bank can indicate the error for debit or prepaid cards (for example, card has insufficient funds).
    case TransactionLimit = "TRANSACTION_LIMIT"
    /// - VocieFailure: The card issuer declined the request because the issuer requires voice authorization from the cardholder. The seller should ask the customer to contact the card issuing bank to authorize the payment.
    case VocieFailure = "VOICE_FAILURE"
    /// - PanFailure: The specified card number is invalid. For example, it is of incorrect length or is incorrectly formatted.
    case PanFailure = "PAN_FAILURE"
    /// - ExpirationFailure: The card expiration date is either invalid or indicates that the card is expired.
    case ExpirationFailure = "EXPIRATION_FAILURE"
    /// - CardNotSupported: The card is not supported either in the geographic region or by the merchant category code (MCC).
    case CardNotSupported = "CARD_NOT_SUPPORTED"
    /// - InvalidPin: The card issuer declined the request because the PIN is invalid.
    case InvalidPin = "INVALID_PIN"
    /// - MissingPin: The payment is missing a required PIN.
    case MissingPin = "MISSING_PIN"
    /// - MissingAccountType: The payment is missing a required ACCOUNT_TYPE parameter.
    case MissingAccountType = "MISSING_ACCOUNT_TYPE"
    /// - InvalidPostalCode: The postal code is incorrectly formatted.
    case InvalidPostalCode = "INVALID_POSTAL_CODE"
    /// - InvalidFees: The app_fee_money on a payment is too high.
    case InvalidFees = "INVALID_FEES"
    /// - ManuallyEnteredPaymentNotSupported: The card must be swiped, tapped, or dipped. Payments attempted by manually entering the card number are declined.
    case ManuallyEnteredPaymentNotSupported = "MANUALLY_ENTERED_PAYMENT_NOT_SUPPORTED"
    /// - PaymentLimitExceeded: Square declined the request because the payment amount exceeded the processing limit for this merchant.
    case PaymentLimitExceeded = "PAYMENT_LIMIT_EXCEEDED"
    /// - GiftCardAvailableAmount: When a Gift Card is a payment source, you can allow taking a partial payment by adding the accept_partial_authorization parameter in the request. However, taking such a partial payment does not work if your request also includes tip_money, app_fee_money, or both. Square declines such payments and returns the GIFT_CARD_AVAILABLE_AMOUNT error. For more information, see CreatePayment errors (additional information).
    case GiftCardAvailableAmount = "GIFT_CARD_AVAILABLE_AMOUNT"
    /// - AccountUnusable: The account provided cannot carry out transactions.
    case AccountUnusable = "ACCOUNT_UNUSABLE"
    /// - BuyerRefusedPayment: Bank account rejected or was not authorized for the payment.
    case BuyerRefusedPayment = "BUYER_REFUSED_PAYMENT"
    /// - DelayedTransactionExpired: The application tried to update a delayed-capture payment that has expired.
    case DelayedTransactionExpired = "DELAYED_TRANSACTION_EXPIRED"
    /// - DelayedTransactionCanceled: The application tried to cancel a delayed-capture payment that was already cancelled.
    case DelayedTransactionCanceled = "DELAYED_TRANSACTION_CANCELED"
    /// - DelayedTransactionCaptured: The application tried to capture a delayed-capture payment that was already captured.
    case DelayedTransactionCaptured = "DELAYED_TRANSACTION_CAPTURED"
    /// - DelayedTransactionFailed: The application tried to update a delayed-capture payment that failed.
    case DelayedTransactionFailed = "DELAYED_TRANSACTION_FAILED"
    /// - CardTokenExpired: The provided card token (nonce) has expired.
    case CardTokenExpired = "CARD_TOKEN_EXPIRED"
    /// - CardTokenUsed: The provided card token (nonce) was already used to process the payment or refund.
    case CardTokenUsed = "CARD_TOKEN_USED"
    /// - AmountTooHigh: The requested payment amount is too high for the provided payment source.
    case AmountTooHigh = "AMOUNT_TOO_HIGH"
    /// - UnsupportedInstrumentType: The API request references an unsupported instrument type.
    case UnsupportedInstrumentType = "UNSUPPORTED_INSTRUMENT_TYPE"
    /// - RefundAmountInvalid: The requested refund amount exceeds the amount available to refund.
    case RefundAmountInvalid = "REFUND_AMOUNT_INVALID"
    /// - RefundAlreadyPending: The payment already has a pending refund.
    case RefundAlreadyPending = "REFUND_ALREADY_PENDING"
    /// - PaymentNotRefundable: The payment is not refundable. For example, the payment has been disputed and is no longer eligible for refunds.
    case PaymentNotRefundable = "PAYMENT_NOT_REFUNDABLE"
    /// - RefundDeclined: Request failed - The card issuer declined the refund.
    case RefundDeclined = "REFUND_DECLINED"
    /// - InsufficientPermissionsForRefund: The Square account does not have the permissions to process this refund.
    case InsufficientPermissionsForRefund = "INSUFFICIENT_PERMISSIONS_FOR_REFUND"
    /// - InvalidCardData: Generic error - the provided card data is invalid.
    case InvalidCardData = "INVALID_CARD_DATA"
    /// - SourceUsed: The provided source id was already used to create a card.
    case SourceUsed = "SOURCE_USED"
    /// - SourceExpired: The provided source id has expired.
    case SourceExpired = "SOURCE_EXPIRED"
    /// - UnsupportedLoyaltyRewardTier: The referenced loyalty program reward tier is not supported. This could happen if the reward tier created in a first party application is incompatible with the Loyalty API.
    case UnsupportedLoyaltyRewardTier = "UNSUPPORTED_LOYALTY_REWARD_TIER"
    /// - LocationMismatch: Generic error - the given location does not matching what is expected.
    case LocationMismatch = "LOCATION_MISMATCH"
    /// - IdempotencyKeyReused: The provided idempotency key has already been used.
    case IdempotencyKeyReused = "IDEMPOTENCY_KEY_REUSED"
    /// - UnexpectedValue: General error - the value provided was unexpected.
    case UnexpectedValue = "UNEXPECTED_VALUE"
    /// - SandboxNotSupported: The API request is not supported in sandbox.
    case SandboxNotSupported = "SANDBOX_NOT_SUPPORTED"
    /// - InvalidEmailAddress: The provided email address is invalid.
    case InvalidEmailAddress = "INVALID_EMAIL_ADDRESS"
    /// - InvalidPhoneNumber: The provided phone number is invalid.
    case InvalidPhoneNumber = "INVALID_PHONE_NUMBER"
    /// - CheckoutExpired: The provided checkout URL has expired.
    case CheckoutExpired = "CHECKOUT_EXPIRED"
    /// - BadCertificate: Bad certificate.
    case BadCertificate = "BAD_CERTIFICATE"
    /// - InvalidSquareVersionFormat: The provided Square-Version is incorrectly formatted.
    case InvalidSquareVersionFormat = "INVALID_SQUARE_VERSION_FORMAT"
    /// - ApiVersionIncompatible: The provided Square-Version is incompatible with the requested action.
    case ApiVersionIncompatible = "API_VERSION_INCOMPATIBLE"
    /// - CardPresenceRequired: The transaction requires that a card be present.
    case CardPresenceRequired = "CARD_PRESENCE_REQUIRED"
    /// - UnsupportedSourceType: The API request references an unsupported source type.
    case UnsupportedSourceType = "UNSUPPORTED_SOURCE_TYPE"
    /// - CardMismatch: The provided card does not match what is expected.
    case CardMismatch = "CARD_MISMATCH"
    /// - PlaidError: Generic plaid error
    case PlaidError = "PLAID_ERROR"
    /// - PlaidErrorItemLoginRequired: Plaid error - ITEM_LOGIN_REQUIRED
    case PlaidErrorItemLoginRequired = "PLAID_ERROR_ITEM_LOGIN_REQUIRED"
    /// - PlaidErrorRateLimit: Plaid error - RATE_LIMIT
    case PlaidErrorRateLimit = "PLAID_ERROR_RATE_LIMIT"
    /// - CardDeclined: The card was declined.
    case CardDeclined = "CARD_DECLINED"
    /// - VerifyCvvFailure: The CVV could not be verified.
    case VerifyCvvFailure = "VERIFY_CVV_FAILURE"
    /// - VerifyAvsFailure: The AVS could not be verified.
    case VerifyAvsFailure = "VERIFY_AVS_FAILURE"
    /// - CardDeclinedCallIssuer: The payment card was declined with a request for the card holder to call the issuer.
    case CardDeclinedCallIssuer = "CARD_DECLINED_CALL_ISSUER"
    /// - CardDeclinedVerificationRequired: The payment card was declined with a request for additional verification.
    case CardDeclinedVerificationRequired = "CARD_DECLINED_VERIFICATION_REQUIRED"
    /// - BadExpiration: The card expiration date is either missing or incorrectly formatted.
    case BadExpiration = "BAD_EXPIRATION"
    /// - ChipInsertionRequired: The card issuer requires that the card be read using a chip reader.
    case ChipInsertionRequired = "CHIP_INSERTION_REQUIRED"
    /// - AllowablePinTriesExceeded: The card has exhausted its available pin entry retries set by the card issuer. Resolving the error typically requires the card holder to contact the card issuer.
    case AllowablePinTriesExceeded = "ALLOWABLE_PIN_TRIES_EXCEEDED"
    /// - ReservationDeclined: The card issuer declined the refund.
    case ReservationDeclined = "RESERVATION_DECLINED"
    /// - UnknownBodyParameter: The body parameter is not recognized by the requested endpoint.
    case UnknownBodyParameter = "UNKNOWN_BODY_PARAMETER"
    /// - NotFound: Not Found - a general error occurred.
    case NotFound = "NOT_FOUND"
    /// - ApplePaymentProcessingCertificateHashNotFound: Square could not find the associated Apple Pay certificate.
    case ApplePaymentProcessingCertificateHashNotFound = "APPLE_PAYMENT_PROCESSING_CERTIFICATE_HASH_NOT_FOUND"
    /// - MethodNotAllowed: Method Not Allowed - a general error occurred.
    case MethodNotAllowed = "METHOD_NOT_ALLOWED"
    /// - NotAcceptable: Not Acceptable - a general error occurred.
    case NotAcceptable = "NOT_ACCEPTABLE"
    /// - RequestTimeout: Request Timeout - a general error occurred.
    case RequestTimeout = "REQUEST_TIMEOUT"
    /// - Conflict: Conflict - a general error occurred.
    case Conflict = "CONFLICT"
    /// - Gone: The target resource is no longer available and this condition is likely to be permanent.
    case Gone = "GONE"
    /// - RequestEntityTooLarge: Request Entity Too Large - a general error occurred.
    case RequestEntityTooLarge = "REQUEST_ENTITY_TOO_LARGE"
    /// - UnsupportedMediaType: Unsupported Media Type - a general error occurred.
    case UnsupportedMediaType = "UNSUPPORTED_MEDIA_TYPE"
    /// - UnprocessableEntity: Unprocessable Entity - a general error occurred.
    case UnprocessableEntity = "UNPROCESSABLE_ENTITY"
    /// - RateLimited: Rate Limited - a general error occurred.
    case RateLimited = "RATE_LIMITED"
    /// - NotImplemented: Not Implemented - a general error occurred.
    case NotImplemented = "NOT_IMPLEMENTED"
    /// - BadGateway: Bad Gateway - a general error occurred.
    case BadGateway = "BAD_GATEWAY"
    /// - ServiceUnavailable: Service Unavailable - a general error occurred.
    case ServiceUnavailable = "SERVICE_UNAVAILABLE"
    /// - TemporaryError: A temporary internal error occurred. You can safely retry your call using the same idempotency key.
    case TemporaryError = "TEMPORARY_ERROR"
    /// - GatewayTimout: Gateway Timeout - a general error occurred.
    case GatewayTimout = "GATEWAY_TIMEOUT"
}
