//
// OrderAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OrderAPI {
    /**
     Create Order
     
     - parameter model: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderCreate(model: ChannelOrderRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        orderCreateWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create Order
     - POST /v2/orders
     - Create a new order in ChannelEngine.
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
    open class func orderCreateWithRequestBuilder(model: ChannelOrderRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/orders"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Download Invoice
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderInvoice(merchantOrderNo: String, useCustomerCulture: Bool? = nil, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderInvoiceWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Download Invoice
     - GET /v2/orders/{merchantOrderNo}/invoice
     - Generates the ChannelEngine VAT invoice for this order in PDF
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{output=none}]
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language (optional)

     - returns: RequestBuilder<URL> 
     */
    open class func orderInvoiceWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/invoice"
        let merchantOrderNoPreEscape = "\(merchantOrderNo)"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "useCustomerCulture": useCustomerCulture
        ])
        

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download Packing Slip
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderPackingSlip(merchantOrderNo: String, useCustomerCulture: Bool? = nil, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderPackingSlipWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Download Packing Slip
     - GET /v2/orders/{merchantOrderNo}/packingslip
     - Generates the ChannelEngine packing slip for this order in PDF
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{output=none}]
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language (optional)

     - returns: RequestBuilder<URL> 
     */
    open class func orderPackingSlipWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/packingslip"
        let merchantOrderNoPreEscape = "\(merchantOrderNo)"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "useCustomerCulture": useCustomerCulture
        ])
        

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
