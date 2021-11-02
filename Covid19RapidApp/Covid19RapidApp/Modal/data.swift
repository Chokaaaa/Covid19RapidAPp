//
//  data.swift
//  Covid19RapidApp
//
//  Created by Nursultan Yelemessov on 31/10/2021.
//

import Foundation
struct Result : Codable, Identifiable {

    let id : String
    var key: String
    var active: Bool
    var group: String
    var details: String
    var title: String

}
