//
//  MockData.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/21/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import Foundation

let dataJson =
"""
[
{"id": "1",
"name": "Toyota",
"carNames": [
{
"id": "1001",
"name": "Vios",
"carGrades": [
{
"id": "1001001",
"name": "G"

}
]

}
]

}
]
"""

struct CarGrade: Codable {
    let id: String
    let name: String
}

struct CarName: Codable {
    let id: String
    let name: String
    let carGrades: [CarGrade]
}

struct CarBrand: Codable {
    let id: String
    let name : String
    let carNames: [CarName]
}

class Car {
    var id: String
    var carBrand: CarBrand?
    var carName: CarName?
    var carGrade: CarGrade?
    
    init() {
        id = "1"
    }
}

struct MockData {
    static var carBrands: [CarBrand] = {
        guard let data = dataJson.data(using: .utf8) else { return [] }
        
        do {
            let mockData = try JSONDecoder().decode([CarBrand].self, from: data)
            return mockData
        } catch {
            print(error)
            return []
        }
    }()
    
    static func getCarBrand(name: String) -> CarBrand? {
        return carBrands.first { (item) -> Bool in
            item.name == name
        }
    }
}

