//
//  crossmodel.swift
//  PetHome
//
//  Created by Mingo Chan on 9/2/2024.
//

import Foundation

struct Cross:Codable {
    var CLINIC,ADDRESS,PHONE : String
    
    static let allCross:[Cross] = Bundle.main.decode(file:"cross.json")
    static let sampleCross:Cross = allCross[0]
}

extension Bundle{
    func decode<T:Decodable>(file : String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil)else{
            fatalError("Could not find!")
        }
        
        guard let data = try? Data(contentsOf: url)else{
            fatalError("Could not find!")
        }
        
        let  decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Could not find!")
        }
        return loadedData
    }
}
