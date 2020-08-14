//
//  WheelSizeMockData.swift
//  ShiftGate
//
//  Created by Paxcreation on 8/13/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import Foundation
let wheelSizeDataJson =
"""
[
  {
    "id": "1",
    "size": "基準"
  },
  {
    "id": "2",
    "size": "インチ不明"
  },
  {
    "id": "3",
    "size": "12インチ"
  },
  {
    "id": "4",
    "size": "13インチ"
  },
  {
    "id": "5",
    "size": "14インチ"
  },
  {
    "id": "6",
    "size": "15インチ"
  },
  {
    "id": "7",
    "size": "16インチ"
  },
  {
    "id": "8",
    "size": "17インチ"
  },
  {
    "id": "9",
    "size": "18インチ"
  },
  {
    "id": "10",
    "size": "19インチ"
   }
]
"""
struct WheelSize : Codable{
    let id: String
    let size: String
}
class WheelSizeInfor{
    var carWheelSize : WheelSize?
    init(){
    }
}
struct WheelSizeDataMock {
    static var carWheelSizes: [WheelSize] = {
        guard let data = wheelSizeDataJson.data(using: .utf8) else { return [] }
        do {
            let mockSizeData = try JSONDecoder().decode([WheelSize].self, from: data)
            return mockSizeData
        } catch {
            print(error)
            return []
        }
    }()
    
    static func getWhileSize(size: String) -> WheelSize? {
           return carWheelSizes.first { (item) -> Bool in
            item.size == size
           }
       }
}
