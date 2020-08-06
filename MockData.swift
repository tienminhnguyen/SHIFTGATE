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
  {
    "id": "1",
    "name": "トヨタ",
    "carNames": [
      {
        "id": "11",
        "name": "アイシス",
        "carGrades": [
          {
            "id": "111",
            "name": "G"
          },
          {
            "id": "112",
            "name": "V"
          },
          {
            "id": "113",
            "name": "E"
          }
        ]
      },
      {
        "id": "12",
        "name": "アクア",
        "carGrades": [
          {
            "id": "121",
            "name": "クロスオーバー"
          },
          {
            "id": "122",
            "name": "クロスオーバー　グラム"
          },
          {
            "id": "123",
            "name": "E　グランパー"
          }
        ]
      },
      {
        "id": "13",
        "name": "アバロン",
        "carGrades": [
          {
            "id": "131",
            "name": "3.0"
          },
          {
            "id": "132",
            "name": "G"
          },
          {
            "id": "133",
            "name": "G コーチエディション"
          }
        ]
      }
    ]
  },
  {
    "id": "2",
    "name": "日産",
    "carNames": [
      {
        "id": "21",
        "name": "アイラス",
        "carGrades": [
          {
            "id": "211",
            "name": "その他"
          },
          {
            "id": "212",
            "name": "ウインだ"
          },
          {
            "id": "213",
            "name": "カスタム"
          }
        ]
      },
      {
        "id": "22",
        "name": "アイラス　ハイプリッド",
        "carGrades": [
          {
            "id": "221",
            "name": "D 2t セミライド　DX  フルスーパーロー　Wタイヤ"
          },
          {
            "id": "222",
            "name": "D 2t セミライド　DX  フルスーパーロー　Wタイヤ ロング"
          },
          {
            "id": "223",
            "name": "D 2t　DX  フルスーパーロー　Wタイヤ"
          }
        ]
      },
      {
        "id": "23",
        "name": "アイラス　ダンプ",
        "carGrades": [
          {
            "id": "231",
            "name": "G　ダンプ　高床"
          },
          {
            "id": "232",
            "name": "G　ダンプ　高床　ロング"
          },
          {
            "id": "233",
            "name": "E"
          }
        ]
      }
    ]
  },
  {
    "id": "3",
    "name": "ホンダ",
    "carNames": [
      {
        "id": "31",
        "name": "アコード",
        "carGrades": [
          {
            "id": "311",
            "name": "その他"
          },
          {
            "id": "312",
            "name": "ウインだ"
          },
          {
            "id": "323",
            "name": "カスタム"
          }
        ]
      },
      {
        "id": "32",
        "name": "アイラス　ハイプリッド",
        "carGrades": [
          {
            "id": "321",
            "name": "G　ダンプ　高床"
          },
          {
            "id": "322",
            "name": "2.0"
          },
          {
            "id": "323",
            "name": "G　3.0 ダンプ　高床"
          }
        ]
      },
      {
        "id": "33",
        "name": "アイラス　ダンプ",
        "carGrades": [
          {
            "id": "331",
            "name": "G"
          },
          {
            "id": "332",
            "name": "V"
          },
          {
            "id": "333",
            "name": "E"
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
    
    static func getCarName(name: String, in carBrand: CarBrand) -> CarName? {
        return carBrand.carNames.first { (item) -> Bool in
            item.name == name
        }
    }
    
    static func getCarGrade(name: String, in carName: CarName) -> CarGrade? {
        return carName.carGrades.first { (item) -> Bool in
            item.name == name
        }
    }
}

