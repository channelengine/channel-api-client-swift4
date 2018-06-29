//
// ReturnAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ReturnAPI {
    /**
     Create Return
     
     - parameter model: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnDeclareForChannel(model: ChannelReturnRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        returnDeclareForChannelWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create Return
     - POST /v2/returns/channel
     - Mark (part of) an order as returned by the customer.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "Success" : true
}}]
     
     - parameter model: (body)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func returnDeclareForChannelWithRequestBuilder(model: ChannelReturnRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/returns/channel"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get Returns
     
     - parameter createdSince: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetDeclaredByMerchant(createdSince: Date, completion: @escaping ((_ data: CollectionOfChannelReturnResponse?,_ error: Error?) -> Void)) {
        returnGetDeclaredByMerchantWithRequestBuilder(createdSince: createdSince).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get Returns
     - GET /v2/returns/channel
     - Get all returns created by the merchant. This call is supposed  to be used by channels. Merchants should use the 'GET /v2/returns/merchant'  call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 2,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "ChannelOrderNo" : "ChannelOrderNo",
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 5.962133916683182377482808078639209270477294921875,
    "CustomerComment" : "CustomerComment",
    "ChannelReturnNo" : "ChannelReturnNo",
    "Id" : 6,
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ],
    "RefundInclVat" : 1.46581298050294517310021547018550336360931396484375
  }, {
    "ChannelOrderNo" : "ChannelOrderNo",
    "MerchantComment" : "MerchantComment",
    "RefundExclVat" : 5.962133916683182377482808078639209270477294921875,
    "CustomerComment" : "CustomerComment",
    "ChannelReturnNo" : "ChannelReturnNo",
    "Id" : 6,
    "Reason" : "PRODUCT_DEFECT",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ],
    "RefundInclVat" : 1.46581298050294517310021547018550336360931396484375
  } ],
  "ItemsPerPage" : 7,
  "Count" : 5,
  "StatusCode" : 9,
  "Success" : true
}}]
     
     - parameter createdSince: (query)  

     - returns: RequestBuilder<CollectionOfChannelReturnResponse> 
     */
    open class func returnGetDeclaredByMerchantWithRequestBuilder(createdSince: Date) -> RequestBuilder<CollectionOfChannelReturnResponse> {
        let path = "/v2/returns/channel"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "createdSince": createdSince.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfChannelReturnResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
