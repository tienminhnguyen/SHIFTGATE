//
//  GeneralTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit


class GeneralTableViewController: UITableViewController, UITextFieldDelegate {
    var currentCar: Car = Car()
    
    // Outlet Button
    @IBOutlet weak var btnFuelOther: UIButton!
    @IBOutlet weak var btnFuelLPG: UIButton!
    @IBOutlet weak var btnFuelCNG: UIButton!
    @IBOutlet weak var btnFuelEV: UIButton!
    @IBOutlet weak var btnFuelDiesel: UIButton!
    @IBOutlet weak var btnFuelHybrid: UIButton!
    @IBOutlet weak var btnFuelGas: UIButton!
    @IBOutlet weak var btnEngineAfter: UIButton!
    @IBOutlet weak var btnEngineCenter: UIButton!
    @IBOutlet weak var btnEnginePrevious: UIButton!
    @IBOutlet weak var btnHandleRight: UIButton!
    @IBOutlet weak var btnCheckGrade: UIButton!
    @IBOutlet weak var btnDrivePrevious: UIButton!
    @IBOutlet weak var btnHandleLeft: UIButton!
    @IBOutlet weak var btnDriveAfter: UIButton!
    @IBOutlet weak var btnDriveFour: UIButton!
    @IBOutlet weak var btnShiftTypeAT: UIButton!
    @IBOutlet weak var btnShiftTypeMT: UIButton!
    @IBOutlet weak var btnShiftTypeCVT: UIButton!
    @IBOutlet weak var btnShiftPositionFloor: UIButton!
    @IBOutlet weak var btnShiftPositionColumn: UIButton!
    @IBOutlet weak var btnShiftPositionDashboard: UIButton!
    @IBOutlet weak var btnShiftStep0: UIButton!
    @IBOutlet weak var btnShiftStep3: UIButton!
    @IBOutlet weak var btnShiftStep5: UIButton!
    @IBOutlet weak var btnShiftStep7: UIButton!
    @IBOutlet weak var btnShiftStep6: UIButton!
    @IBOutlet weak var btnShiftStep8: UIButton!
    @IBOutlet weak var btnShiftStep4: UIButton!
    @IBOutlet weak var btnShiftStep2: UIButton!
    @IBOutlet weak var btnRecycleYes: UIButton!
    @IBOutlet weak var btnRecycleNo: UIButton!
    @IBOutlet weak var btnMakerFirst: DropdownButton!
    @IBOutlet weak var btnCarNameFirst: DropdownButton!
    @IBOutlet weak var btnGradeFirst: DropdownButton!
    // Outlet TextField
    @IBOutlet weak var txtFormatNumber: UITextField!
    @IBOutlet weak var txtGradeSecond: UITextField!
    @IBOutlet weak var txtCarNameSecond: UITextField!
    @IBOutlet weak var txtMakerSecond: UITextField!
    @IBOutlet weak var txtIntroduceCode: UITextField!
    @IBOutlet weak var txtFirstTimeRegister: UITextField!
    @IBOutlet weak var txtInspectExpired: UITextField!
    @IBOutlet weak var txtRecyclePrice: UITextField!
    
    // Button Action
    @IBAction func btnMakerFirstAction(_ sender: UIButton) {
        let list = MockData.carBrands.map({ $0.name })
        moveToSelectionPage(list, type: "CarBrand")
    }
    @IBAction func txtFormatNumberAction(_ sender: UITextField) {
    }
    @IBAction func btnCheckGrade(_ sender: UIButton) {
    }
    @IBAction func btnGradeFirstAction(_ sender: UIButton) {
        guard let list = currentCar.carName?.carGrades.map({ $0.name }) else {
                   return
               }
               moveToSelectionPage(list, type: "CarGrade")
    }
    @IBAction func btnCarNameFirstAction(_ sender: UIButton) {
        guard let list = currentCar.carBrand?.carNames.map({ $0.name }) else {
                   return
               }
               moveToSelectionPage(list, type: "CarName")
    }
    @IBAction func btnHandlePositionLeftAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnHandlePositionRightAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnEnginePositionAfterAction(_ sender: UIButton) {
         handleSelection(sender: sender)
    }
    @IBAction func btnEnginePositionPreviousAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnEnginePositionCenterAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelGasAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelHybridAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelDieselAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelEVAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelCNGAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelLPGAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnFuelOtherAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDrivePreviousAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDriveAfterAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnDriveFourAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftTypeATAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftTypeMTAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftTypeCVTAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftPositionFloorAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftPositionDashboardAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftPositionColumnAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep0Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep3Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep5Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep7Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep6Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep4Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep2Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnShiftStep8Action(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRecycleYesAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    @IBAction func btnRecycleNoAction(_ sender: UIButton) {
        handleSelection(sender: sender)
    }
    
    //viewDidLoad
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        //setupContent()
    }
    
    func setupUI(){
        handleRenderDropdownIcon()
        showDatePicker()
        handleRadiusButton()
    }
    
    func setupContent(){
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
    
    func handleRadiusButton()
    {
        btnMakerFirst.radiusButton()
        btnCarNameFirst.radiusButton()
        btnGradeFirst.radiusButton()
        btnFuelOther.radiusButton()
        btnFuelLPG.radiusButton()
        btnFuelCNG.radiusButton()
        btnFuelEV.radiusButton()
        btnFuelDiesel.radiusButton()
        btnFuelHybrid.radiusButton()
        btnFuelGas.radiusButton()
        btnEngineAfter.radiusButton()
        btnEngineCenter.radiusButton()
        btnEnginePrevious.radiusButton()
        btnHandleRight.radiusButton()
        btnCheckGrade.radiusButton()
        btnHandleLeft.radiusButton()
        btnEngineAfter.radiusButton()
        btnEngineCenter.radiusButton()
        btnEnginePrevious.radiusButton()
        btnHandleRight.radiusButton()
        btnCheckGrade.radiusButton()
        btnDrivePrevious.radiusButton()
        btnHandleLeft.radiusButton()
        btnDriveAfter.radiusButton()
        btnDriveFour.radiusButton()
        btnShiftTypeAT.radiusButton()
        btnShiftTypeMT.radiusButton()
        btnShiftTypeCVT.radiusButton()
        btnShiftPositionFloor.radiusButton()
        btnShiftPositionColumn.radiusButton()
        btnShiftPositionDashboard.radiusButton()
        btnShiftStep0.radiusButton()
        btnShiftStep3.radiusButton()
        btnShiftStep5.radiusButton()
        btnShiftStep7.radiusButton()
        btnShiftStep6.radiusButton()
        btnShiftStep8.radiusButton()
        btnShiftStep4.radiusButton()
        btnShiftStep2.radiusButton()
        btnRecycleYes.radiusButton()
        btnRecycleNo.radiusButton()
        btnCheckGrade.layer.cornerRadius = 7
    }
    
    func moveToSelectionPage(_ list: [String], type: String){
        
        let storyboard = UIStoryboard(name: "Selection", bundle: Bundle.main)
        let name = String(describing: SelectionViewController.self)
        let vc = storyboard.instantiateViewController(identifier: name) as! SelectionViewController
        vc.data = list
        vc.type = type
        vc.delegate = self
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func bindingCarInfor(data: String, type: String) {
        if(type == "CarBrand")
        {
            btnMakerFirst.setTitle(data, for: .normal)
            txtMakerSecond.text = data
        }
        else if (type == "CarName")
        {
            btnCarNameFirst.setTitle(data, for: .normal)
            txtCarNameSecond.text = data
        }
        else if (type == "CarGrade")
        {
            btnGradeFirst.setTitle(data, for: .normal)
            txtGradeSecond.text = data
        }
    }
    
    func showDatePicker(){
        datePicker.datePickerMode = .date
        var gregorian = Calendar.init(identifier: .gregorian)
        gregorian.locale = Locale.current
        datePicker.calendar = gregorian
        
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "完了", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "クリア", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
        
        txtFirstTimeRegister.inputAccessoryView = toolbar
        txtFirstTimeRegister.inputView = datePicker
        txtInspectExpired.inputAccessoryView = toolbar
        txtInspectExpired.inputView = datePicker
    }
    
    func handleRenderDropdownIcon(){
        btnMakerFirst.renderDropdowmImage()
        btnCarNameFirst.renderDropdowmImage()
        btnGradeFirst.renderDropdowmImage()
        txtFirstTimeRegister.renderDropdowmImage()
        txtInspectExpired.renderDropdowmImage()
    }
    
    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtFirstTimeRegister.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
}

extension GeneralTableViewController: SelectionVCDelegate {
    // Recieve data
    func didSelect(_ viewController: SelectionViewController, data: String, type: String) {
        if type == "CarBrand"
        {
            currentCar.carBrand = MockData.getCarBrand(name: data)
        }
        if type == "CarName", let carBrand = currentCar.carBrand
        {
            currentCar.carName = MockData.getCarName(name: data, in : carBrand)
        }
        if type == "CarGrade", let carName = currentCar.carName
        {
            currentCar.carGrade = MockData.getCarGrade(name: data, in: carName)
        }
        bindingCarInfor(data: data, type: type)
    }
}

