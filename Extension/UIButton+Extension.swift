//
//  UIButton+Extension.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/29/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

extension UIButton{
    
    func radiusButton()
    {
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray3.cgColor
    }
    
    func renderDropdowmImage()
    {
        self.setImage(UIImage(named: "arrow_dropdown")?.withRenderingMode(.alwaysOriginal), for: .normal)
    }
}

@IBDesignable
class DropdownButton: UIButton {
    
    @IBInspectable
    var paddingRight: CGFloat = 0 {
        didSet {
            layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let imageView = imageView {
            var frame = imageView.frame
            frame.origin.x = self.frame.width - frame.width - paddingRight
            imageView.frame = frame
        }
        
        if let titleLabel = titleLabel {
            var frame = titleLabel.frame
            frame.origin.x = 8
            titleLabel.frame = frame
        }
    }
}
