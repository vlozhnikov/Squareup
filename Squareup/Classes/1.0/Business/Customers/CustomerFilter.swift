//
//  CustomerFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerFilter: Represents the filtering criteria in a search query that defines how to filter customer profiles returned in SearchCustomers results.
/// https://developer.squareup.com/reference/square/objects/CustomerFilter
open class CustomerFilter: Codable {
    
    /// - CreationSource: CreationSource
    /// A filter to select customers based on their creation source.
    public var CreationSource: CustomerCreationSourceFilter?
    /// - CreatedAt: A filter to select customers based on when they were created.
    public var CreatedAt: TimeRange?
    /// - UpdatedAt: A filter to select customers based on when they were last updated.
    public var UpdatedAt: TimeRange?
    /// - EmailAddress: A filter to select customers by their email address visible to the seller. This filter is case-insensitive.
    /// For exact matching, this filter causes the search to return customer profiles whose email_address field value are identical to the email address provided in the query.
    ///
    /// or fuzzy matching, this filter causes the search to return customer profiles whose email_address field value has a token-wise partial match against the filtering expression in the query. For example, with Steven gmail provided in a search query, the search returns customers whose email address is steven.johnson@gmail.com or mygmail@stevensbakery.com. Square removes any punctuation (including periods (.), underscores (_), and the @ symbol) and tokenizes the email addresses on spaces. A match is found if a tokenized email address contains all the tokens in the search query, irrespective of the token order.
    public var EmailAddress: CustomerTextFilter?
    /// - PhoneNumber: A filter to select customers by their phone numbers visible to the seller.
    /// For exact matching, this filter returns customers whose phone number matches the specified query expression. The number in the query must be of an E.164-compliant form. In particular, it must include the leading + sign followed by a country code and then a subscriber number. For example, the standard E.164 form of a US phone number is +12062223333 and an E.164-compliant variation is +1 (206) 222-3333. To match the query expression, stored customer phone numbers are converted to the standard E.164 form.
    ///
    /// For fuzzy matching, this filter returns customers whose phone number matches the token or tokens provided in the query expression. For example, with 415 provided in a search query, the search returns customers with the phone numbers +1-415-212-1200, +1-212-415-1234, and +1 (551) 234-1567. Similarly, a search query of 415 123 returns customers with the phone numbers +1-212-415-1234 and +1 (551) 234-1567 but not +1-212-415-1200. A match is found if a tokenized phone number contains all the tokens in the search query, irrespective of the token order.
    public var PhoneNumber: CustomerTextFilter?
    /// - ReferenceId:
    /// A filter to select customers by their reference IDs. This filter is case-insensitive.
    /// Exact matching of a customer's reference ID against a query's reference ID is evaluated as an exact match between two strings, character by character in the given order.
    ///
    /// Fuzzy matching of stored reference IDs against queried reference IDs works exactly the same as fuzzy matching on email addresses. Non-alphanumeric characters are replaced by spaces to tokenize stored and queried reference IDs. A match is found if a tokenized stored reference ID contains all tokens specified in any order in the query. For example, a query of NYC M matches customer profiles with the reference_id value of NYC_M_35_JOHNSON and NYC_27_MURRAY
    public var ReferenceId: CustomerTextFilter?
    /// - GroupIds: A filter to select customers based on the groups they belong to. Group membership is controlled by sellers and developers.
    /// The group_ids filter has the following syntax:
    ///
    /// "group_ids": {
    ///     "any":  ["{group_a_id}", "{group_b_id}", ...],
    ///     "all":  ["{group_1_id}", "{group_2_id}", ...],
    ///     "none": ["{group_i_id}", "{group_ii_id}", ...]
    /// }
    ///
    /// You can use any combination of the any, all, and none fields in the filter. With any, the search returns customers in groups a or b or any other group specified in the list. With all, the search returns customers in groups 1 and 2 and all other groups specified in the list. With none, the search returns customers not in groups i or ii or any other group specified in the list.
    /// If any of the search conditions are not met, including when an invalid or non-existent group ID is provided, the result is an empty object ({}).
    public var GroupIds: FilterValue?
    /// - CustomAttribute: A filter to select customers based on one or more custom attributes.
    /// This filter can contain up to 10 custom attribute filters. Each custom attribute filter specifies filtering criteria for a target custom attribute. If multiple custom attribute filters are provided, they are combined as an AND operation.
    ///
    /// To be valid for a search, the custom attributes must be visible to the requesting application. For more information, including example queries, see Search by custom attribute.
    ///
    /// Square returns matching customer profiles, which do not contain custom attributes. To retrieve customer-related custom attributes, use the Customer Custom Attributes API. For example, you can call RetrieveCustomerCustomAttribute using a customer ID from the result set.
    public var CustomAttribute: CustomerCustomAttributeFilters?
    /// - SegmentIds: A filter to select customers based on the segments they belong to. Segment membership is dynamic and adjusts automatically based on whether customers meet the segment criteria.
    ///
    /// You can provide up to three segment IDs in the filter, using any combination of the all, any, and none fields. For the following example, the results include customers who belong to both segment A and segment B but do not belong to segment C.
    ///
    /// "segment_ids": {
    ///     "all":  ["{segment_A_id}", "{segment_B_id}"],
    ///     "none":  ["{segment_C_id}"]
    /// }
    ///
    /// If an invalid or non-existent segment ID is provided in the filter, Square stops processing the request and returns a 400 BAD_REQUEST error that includes the segment ID.
    public var SegmentIds: FilterValue?
    
    enum CodingKeys: String, CodingKey {
        case CreationSource = "creation_source"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case EmailAddress = "email_address"
        case PhoneNumber = "phone_number"
        case ReferenceId = "reference_id"
        case GroupIds = "group_ids"
        case CustomAttribute = "custom_attribute"
        case SegmentIds = "segment_ids"
    }
}
