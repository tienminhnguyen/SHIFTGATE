//
//  QuestionTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 8/13/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    // Button Outlet
    @IBOutlet weak var btnCigaretteOdorYes: UIButton!
    @IBOutlet weak var btnRepairOtherReason: UIButton!
    @IBOutlet weak var btnCigaretteOdorNo: UIButton!
    @IBOutlet weak var btnRepairFlood: UIButton!
    @IBOutlet weak var btnRepairHail: UIButton!
    @IBOutlet weak var btnRepairAccident: UIButton!
    @IBOutlet weak var btnRepairOtherDisasters: UIButton!
    @IBOutlet weak var btnRoofStateDirt: UIButton!
    @IBOutlet weak var btnRoofStateDrip: UIButton!
    @IBOutlet weak var btnRepairYes: UIButton!
    @IBOutlet weak var btnRepairNo: UIButton!
    @IBOutlet weak var btnRoofStatePeel: UIButton!
    @IBOutlet weak var btnRoofStateYes: UIButton!
    @IBOutlet weak var btnSeatStateNo: UIButton!
    @IBOutlet weak var btnDashboardStatusNo: UIButton!
    @IBOutlet weak var btnDashboardStatusYes: UIButton!
    @IBOutlet weak var btnPetOdorYes: UIButton!
    @IBOutlet weak var btnHandleStateNo: UIButton!
    @IBOutlet weak var btnHandleStateYes: UIButton!
    @IBOutlet weak var btnSeatStateYes: UIButton!
    @IBOutlet weak var btnOtherOdorNo: UIButton!
    @IBOutlet weak var btnOtherOdorYes: UIButton!
    @IBOutlet weak var btnPetOdorNo: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    // Button Action
    @IBAction func btnRepairOtherReasonAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairOtherDisastersAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairFloodAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairHailAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairAccidentAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRepairNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRoofStateDripAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRoofStatePeelAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRoofStateDirtAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRoofStateYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSeatStateYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSeatStateNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDashboardStatusNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnHandleStateYes(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnHandleStateNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDashboardStatusYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnOtherOdorNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnPetOdorNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnOtherOdorYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnPetOdorYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnCigaretteOdorYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnCigaretteOdorNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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
    
    func setupUI(){
        btnCigaretteOdorYes.radiusButton()
        btnRepairOtherReason.radiusButton()
        btnCigaretteOdorNo.radiusButton()
        btnRepairFlood.radiusButton()
        btnRepairHail.radiusButton()
        btnRepairAccident.radiusButton()
        btnRepairOtherDisasters.radiusButton()
        btnRoofStateDirt.radiusButton()
        btnRoofStateDrip.radiusButton()
        btnRepairYes.radiusButton()
        btnRepairNo.radiusButton()
        btnRoofStatePeel.radiusButton()
        btnRoofStateYes.radiusButton()
        btnSeatStateNo.radiusButton()
        btnDashboardStatusNo.radiusButton()
        btnDashboardStatusYes.radiusButton()
        btnPetOdorYes.radiusButton()
        btnHandleStateNo.radiusButton()
        btnHandleStateYes.radiusButton()
        btnSeatStateYes.radiusButton()
        btnOtherOdorNo.radiusButton()
        btnOtherOdorYes.radiusButton()
        btnPetOdorNo.radiusButton()
        textView.layer.cornerRadius = 7
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.systemGray3.cgColor
    }
}
