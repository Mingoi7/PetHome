//
//  parkmodel.swift
//  PetHome
//
//  Created by Mingo Chan on 8/2/2024.
//

import Foundation

struct Park:Codable {
    var Address_cn,Address_en,District_cn,District_en,Opening_hours_en,Latitude,Longitude,Phone,Name_cn,Name_en : String
    
    static let allPark:[Park] = Bundle.main.decode(file:"park.json")
    static let samplePark:Park = allPark[0]
}
