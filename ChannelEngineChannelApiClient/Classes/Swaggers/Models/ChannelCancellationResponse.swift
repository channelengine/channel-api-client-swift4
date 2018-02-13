//
// ChannelCancellationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelCancellationResponse: Codable {

    public var channelOrderNo: String
    public var lines: [ChannelCancellationLineResponse]
    public var reason: String?


    public enum CodingKeys: String, CodingKey { 
        case channelOrderNo = "ChannelOrderNo"
        case lines = "Lines"
        case reason = "Reason"
    }


}

