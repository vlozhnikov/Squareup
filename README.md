# Squareup

The Squareup framework was developed to support the platform for iOS-based devices. It provides full support for the squareup API, implementing all functions except for the terminal/online/auth API.

## Requirements

 - Minimum Swift Version - 5.0
 - Deployment target - 13.0

### How to use?

```swift
import Squareup

// setup Squareup
SquareupConfigurer.shared.setup(applicationId: <#YOUR_APPLICATION_ID#>,
                                squareLocationId: <#LOCATION_ID#>,
                                type: .dev /*or .prod*/)

// to use PaymentsApi
PaymentsApi.payments.listPayments(/*arguments*/) { response in // completion
}, failed { error in
}

PaymentsApi.cards.listCards(...) { response in // completion
}, failed { error in
}
```

Another examples you can find in an *Tests* folder.

### Installation

#### CocoaPods

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'
use_frameworks!

target 'MyApp' do
  pod 'Squareup'
end
```

#### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate Alamofire into your project manually. Just copy all the folders and files from here

*Squareup/Squareup/Classes/1.0*

and paste them into your project.

## Features

- [x] *PaymentsApi*. This includes support for the following subsections:

    - [Payments](https://developer.squareup.com/reference/square/payments-api)
    - [Refunds](https://developer.squareup.com/reference/square/refunds-api)
    - [Disputes](https://developer.squareup.com/reference/square/disputes-api)
    - [Checkout](https://developer.squareup.com/reference/square/checkout-api)
    - [Apple Pay](https://developer.squareup.com/reference/square/apple-pay-api)
    - [Cards](https://developer.squareup.com/reference/square/cards-api)
    - [Payouts](https://developer.squareup.com/reference/square/payouts-api)

- [x] *OrdersApi*. This includes support for the following subsections:

   - [Orders](https://developer.squareup.com/reference/square/orders-api)
   - [Order Custom Attributes](https://developer.squareup.com/reference/square/order-custom-attributes-api)
     
- [x] [SubscriptionsApi](https://developer.squareup.com/reference/square/subscriptions-api)
- [x] [InvoicesApi](https://developer.squareup.com/reference/square/invoices-api)
- [x] [CatalogApi](https://developer.squareup.com/reference/square/catalog-api)
- [x] [InventoryApi](https://developer.squareup.com/reference/square/inventory-api)

- [x] *CustomersApi*. This includes support for the following subsections:

   - [Customers](https://developer.squareup.com/reference/square/customers-api)
   - [Customer Custom Attributes](https://developer.squareup.com/reference/square/customer-custom-attributes-api)
   - [Customer Groups](https://developer.squareup.com/reference/square/customer-groups-api)
   - [Customer Segments](https://developer.squareup.com/reference/square/customer-segments-api)
     
- [x] [LoyaltyApi](https://developer.squareup.com/reference/square/loyalty-api)

- [x] *GiftCardsApi*. This includes support for the following subsections:

   - [Gift Cards](https://developer.squareup.com/reference/square/gift-cards-api)
   - [Gift Card Activities](https://developer.squareup.com/reference/square/gift-card-activities-api)
     
- [x] *BookingsApi*. This includes support for the following subsections:

   - [Bookings](https://developer.squareup.com/reference/square/bookings-api)
   - [Booking Custom Attributes](https://developer.squareup.com/reference/square/booking-custom-attributes-api)
     
- [x] *BusinessApi*. This includes support for the following subsections:

   - [Merchants](https://developer.squareup.com/reference/square/merchants-api)
   - [Merchant Custom Attributes](https://developer.squareup.com/reference/square/merchant-custom-attributes-api)
   - [Locations](https://developer.squareup.com/reference/square/locations-api)
   - [Location Custom Attributes](https://developer.squareup.com/reference/square/location-custom-attributes-api)
   - [Devices](https://developer.squareup.com/reference/square/devices-api)
   - [Cash Drawers](https://developer.squareup.com/reference/square/cash-drawers-api)
   - [Vendors](https://developer.squareup.com/reference/square/vendors-api)
     
- [x] *TeamApi*. This includes support for the following subsections:

   - [Team](https://developer.squareup.com/reference/square/team-api)
   - [Labor](https://developer.squareup.com/reference/square/labor-api)
     
- [x] [FinansialsApi](https://developer.squareup.com/reference/square/bank-accounts-api)
