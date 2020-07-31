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
    
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var lblTabBar: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    func setupUI(){
        tabBarView.layer.cornerRadius = 7
        tabBarView.layer.borderWidth = 1
        tabBarView.backgroundColor = .systemGray4
        lblTabBar.textColor = .darkGray
        lblTabBar.font =  UIFont.boldSystemFont(ofSize: 17.0)
    }
    
    func bindingData(data: String, selected: Bool) {
        lblTabBar.text = data
        if selected {
            tabBarView.backgroundColor = .systemBlue
            lblTabBar.textColor = .white
        } else {
            tabBarView.backgroundColor = .systemGray4
            lblTabBar.textColor = .darkGray
        }
    }
}
