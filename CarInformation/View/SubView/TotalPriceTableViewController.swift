//
//  TotalPriceTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 8/13/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class TotalPriceTableViewController: UITableViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var btnReleaseTime1Month: UIButton!
    @IBOutlet weak var btnReleaseTimeNow: UIButton!
    @IBOutlet weak var btnReleaseTime2Week: UIButton!
    
    @IBAction func btnReleaseTime1MonthAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnReleaseTime2WeekAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnReleaseTimeNowAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI()
    {
        textView.layer.cornerRadius = 7
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.systemGray3.cgColor
        btnReleaseTime1Month.radiusButton()
        btnReleaseTimeNow.radiusButton()
        btnReleaseTime2Week.radiusButton()
    }
    
    func handleSelection(sender : UIButton){
           if let parentView = sender.superview
           {
               deselectAllButtons(on: parentView)
               selectButtons(button: sender)
           }
       }
       
       // Select button
       func selectButtons(button: UIButton){
           button.backgroundColor = UIColor(named: "Primary")
           button.setTitleColor(.white, for: .normal)
       }
       // Deselect all buttons
       func deselectAllButtons(on view: UIView){
           for subView in view.subviews
           {
               if let button = subView as? UIButton {
                   button.backgroundColor = .none
                   button.setTitleColor(.black, for: .normal)
               }
           }
       }
}
