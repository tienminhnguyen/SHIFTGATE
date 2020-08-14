//
//  ColorMockData.swift
//  ShiftGate
//
//  Created by Paxcreation on 8/10/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import Foundation

let colorDataJson =
"""
[
  {
    "id": "1",
    "color": "アカ"
  },
  {
    "id": "2",
    "color": "キイロ"
  },
  {
    "id": "3",
    "color": "シロ"
  },
  {
    "id": "4",
    "color": "グレー"
  },
  {
    "id": "5",
    "color": "シルバー"
  },
  {
    "id": "6",
    "color": "ガンメタ"
  },
  {
    "id": "7",
    "color": "クロ"
  },
  {
    "id": "8",
    "color": "ピンク"
  },
  {
    "id": "9",
    "color": "ムラサキ"
  }
]
"""
struct Colors: Codable {
    let id: String
    let color: String
}

class CarColor {
    var carColor: Colors?
    init() {
    }
}

struct ColorDataMock {
    static var carColors: [Colors] = {
        guard let data = colorDataJson.data(using: .utf8) else { return [] }
        do {
            let mockColorData = try JSONDecoder().decode([Colors].self, from: data)
            return mockColorData
        } catch {
            print(error)
            return []
        }
    }()
    
    static func getCarColor(colorName: String) -> Colors? {
           return carColors.first { (item) -> Bool in
               item.color == colorName
           }
       }
}
