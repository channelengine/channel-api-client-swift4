//
// ChannelShipmentResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelShipmentResponse: Codable {

    public var channelOrderNo: String
    public var lines: [ChannelShipmentLineResponse]
    public var trackTraceNo: String?
    public var trackTraceUrl: String?
    public var method: String?


    public enum CodingKeys: String, CodingKey { 
        case channelOrderNo = "ChannelOrderNo"
        case lines = "Lines"
        case trackTraceNo = "TrackTraceNo"
        case trackTraceUrl = "TrackTraceUrl"
        case method = "Method"
    }


}

