//
//  EquipmentTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class EquipmentTableViewController: UITableViewController {
    
    // Button Outlet
    @IBOutlet weak var btnOdoNotClear: UIButton!
    @IBOutlet weak var btnOdoNo: UIButton!
    @IBOutlet weak var btnOdoYes: UIButton!
    @IBOutlet weak var btnMaintenanceNo: UIButton!
    @IBOutlet weak var btnMaintenanceYes: UIButton!
    @IBOutlet weak var btnWarrantyYes: UIButton!
    @IBOutlet weak var btnWarrantyNo: UIButton!
    @IBOutlet weak var btnOdoRecordYes: UIButton!
    @IBOutlet weak var btnOdoRecordNo: UIButton!
    
    @IBOutlet weak var btnInstructionNavigation: UIButton!
    @IBOutlet weak var btnVehicleManual: UIButton!
    @IBOutlet weak var btnInstructionOdo: UIButton!
    @IBOutlet weak var btnCamera360: UIButton!
    @IBOutlet weak var btnCameraBack: UIButton!
    @IBOutlet weak var btnCameraSide: UIButton!
    @IBOutlet weak var btnCameraFront: UIButton!
    @IBOutlet weak var btnTVNo: UIButton!
    @IBOutlet weak var btnTVYes: UIButton!
    @IBOutlet weak var btnGenuineLeatherYes: UIButton!
    @IBOutlet weak var btnGenuineLeatherNo: UIButton!
    @IBOutlet weak var btnSunroofTwin: UIButton!
    @IBOutlet weak var btnSunroofTriple: UIButton!
    @IBOutlet weak var btnSunroofSingle: UIButton!
    @IBOutlet weak var btnSunroofNo: UIButton!
    @IBOutlet weak var btnAluminumOther: UIButton!
    @IBOutlet weak var btnAluminumNo: UIButton!
    @IBOutlet weak var btnAluminumPure: UIButton!
    @IBOutlet weak var btnETCNo: UIButton!
    @IBOutlet weak var btnETCYes: UIButton!
    @IBOutlet weak var btnNaviNo: UIButton!
    @IBOutlet weak var btnNaviDealer: UIButton!
    @IBOutlet weak var btnNaviOther: UIButton!
    @IBOutlet weak var btnNaviMaker: UIButton!
    @IBOutlet weak var btnTireWinter: UIButton!
    @IBOutlet weak var btnTireSpring: UIButton!
    @IBOutlet weak var btnInstructionOther: UIButton!
    
    // Textfield Outlet
    @IBOutlet weak var txtAluminumSize: UITextField!
    
    // Button Action
    @IBAction func btnOdoNotClearAction(_ sender: UIButton) {
        handleSelection(sender: sender)
        btnOdoRecordYes.isEnabled = true
        btnOdoRecordNo.isEnabled = true
    }
    @IBAction func btnOdoYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
        btnOdoRecordYes.isEnabled = true
        btnOdoRecordNo.isEnabled = true
    }
    @IBAction func btnOdoNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
        disableOdoRecordButton()
    }
    @IBAction func btnOdoRecordYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnOdoRecordNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnWarratyYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnWarratyNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnMainternanceYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnMainternanceNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnVehicleManualAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnInstructionNavigationAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnOdoAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnOtherAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnGenuineLeatherSeatYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnGenuineLeatherSeatNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnTVYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnTVNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnNavigationMaker(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnNavigationOtherAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDealerOPAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnNavigationNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnVehicleCameraFrontAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnVehicleCameraSideAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnVehicleCameraBackAction(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnVehicleCamera360Action(_ sender: UIButton) {
        selectButtons(button: sender)
    }
    @IBAction func btnETCYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnETCNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSunroofNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSunroofTwinAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSunroofSingleAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnSunroofTripleAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnAluminumPureAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnAluminumOtherAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnAluminumNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnTireSpringAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnTireWinterAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        btnOdoNotClear.radiusButton()
        btnOdoNo.radiusButton()
        btnOdoYes.radiusButton()
        btnMaintenanceNo.radiusButton()
        btnMaintenanceYes.radiusButton()
        btnWarrantyYes.radiusButton()
        btnWarrantyNo.radiusButton()
        btnOdoRecordYes.radiusButton()
        btnOdoRecordNo.radiusButton()
        btnInstructionNavigation.radiusButton()
        btnVehicleManual.radiusButton()
        btnInstructionOdo.radiusButton()
        btnCamera360.radiusButton()
        btnCameraBack.radiusButton()
        btnCameraSide.radiusButton()
        btnCameraFront.radiusButton()
        btnTVNo.radiusButton()
        btnTVYes.radiusButton()
        btnGenuineLeatherYes.radiusButton()
        btnGenuineLeatherNo.radiusButton()
        btnSunroofTwin.radiusButton()
        btnSunroofTriple.radiusButton()
        btnSunroofSingle.radiusButton()
        btnSunroofNo.radiusButton()
        btnAluminumOther.radiusButton()
        btnAluminumNo.radiusButton()
        btnAluminumPure.radiusButton()
        btnETCNo.radiusButton()
        btnETCYes.radiusButton()
        btnNaviNo.radiusButton()
        btnNaviDealer.radiusButton()
        btnNaviOther.radiusButton()
        btnNaviMaker.radiusButton()
        btnTireWinter.radiusButton()
        btnTireSpring.radiusButton()
        btnInstructionOther.radiusButton()
        
        txtAluminumSize.renderDropdowmImage()
        disableOdoRecordButton()
    }
    
    func disableOdoRecordButton(){
        btnOdoRecordYes.isEnabled = false
        btnOdoRecordNo.isEnabled = false
        btnOdoRecordYes.backgroundColor = .white
        btnOdoRecordYes.setTitleColor(.gray, for: .disabled)
        btnOdoRecordYes.layer.borderColor = UIColor.gray.cgColor
        
        btnOdoRecordNo.backgroundColor = .white
        btnOdoRecordNo.setTitleColor(.gray, for: .disabled)
        btnOdoRecordNo.layer.borderColor = UIColor.gray.cgColor
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
        button.backgroundColor = .systemBlue
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
