//
//  ButtonTagCVC.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/15/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class TabViewSelection: UICollectionViewCell {
    
    class var identifier: String { return String.className(aClass: self) }
    
    @IBOutlet weak var titleTabBar: UILabel!

    @IBOutlet weak var buttonTabBar: TabViewSelection!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupUI(){
        buttonTabBar.layer.cornerRadius = 7
        titleTabBar.textColor = UIColor.darkGray
        titleTabBar.font = UIFont.boldSystemFont(ofSize: 16.0)
    }
    
    func bindingData(data: String) {
        titleTabBar.text = data
    }
}
