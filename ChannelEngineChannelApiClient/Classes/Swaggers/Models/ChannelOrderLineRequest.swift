//
// ChannelOrderLineRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelOrderLineRequest: Codable {

    public enum Condition: String, Codable { 
        case new = "NEW"
        case newRefurbished = "NEW_REFURBISHED"
        case usedAsNew = "USED_AS_NEW"
        case usedGood = "USED_GOOD"
        case usedReasonable = "USED_REASONABLE"
        case usedMediocre = "USED_MEDIOCRE"
        case unknown = "UNKNOWN"
    }
    /** The unique order reference used by the channel */
    public var channelProductNo: String
    /** The number of items of the product */
    public var quantity: Int
    /** The number of items for which cancellation was requested by the customer.  Some channels allow a customer to cancel an order until it has been shipped.  When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.  Use this field to check whether it is still possible to cancel the order. If this is the case, submit a cancellation to ChannelEngine */
    public var cancellationRequestedQuantity: Int
    /** The value of a single unit of the ordered product including VAT  (in the shop&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var unitPriceInclVat: Double
    /** A fixed fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. */
    public var feeFixed: Double?
    /** A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. */
    public var feeRate: Double?
    /** The condition of the product, this can be used to indicate that a product is a second-hand product */
    public var condition: Condition?


    public enum CodingKeys: String, CodingKey { 
        case channelProductNo = "ChannelProductNo"
        case quantity = "Quantity"
        case cancellationRequestedQuantity = "CancellationRequestedQuantity"
        case unitPriceInclVat = "UnitPriceInclVat"
        case feeFixed = "FeeFixed"
        case feeRate = "FeeRate"
        case condition = "Condition"
    }


}

