//
//  UITextField+Extension.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//
import  UIKit

extension UITextField{

    func renderDropdowmImage()
    {
        let imageView = UIImageView()
        let image = UIImage(named: "arrow_dropdown")
        imageView.image = image
        
        self.rightViewMode = UITextField.ViewMode.always
        self.rightView = imageView
    }
}
