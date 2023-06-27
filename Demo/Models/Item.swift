//
//  Item.swift
//  Demo
//
//  Created by Deboleena on 27/06/23.
//

import Foundation

/*

 {
     "country": "United States",
     "name": "Marywood University",
     "state-province": null,
     "domains": [
       "marywood.edu"
     ],
     "alpha_two_code": "US",
     "web_pages": [
       "http://www.marywood.edu"
     ]
   }
 
 */

struct Item: Decodable, Hashable {
    var country: String
    var name: String
    var state_province: String?
    var domains: [String]
    var alpha_two_code: String
    var web_pages: [String]
}

extension Item {
    enum CodingKeys: String, CodingKey {
        case country = "country"
        case name = "name"
        case state_province = "state-province"
        case domains = "domains"
        case alpha_two_code = "alpha_two_code"
        case web_pages = "web_pages"
    }
}


