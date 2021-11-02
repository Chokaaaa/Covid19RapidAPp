//
//  data.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 31/10/2021.
//

import Foundation

struct SportsResult : Codable, Hashable {

    var success: Bool?
    var data: [SportsResultDetails]?
    
}

struct SportsResultDetails : Codable, Hashable {
    
    var key: String?
    var active: Bool?
    var group: String?
    var details: String?
    var title: String?
    var has_outrights: Bool?
    
}
