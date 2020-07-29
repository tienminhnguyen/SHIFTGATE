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
    @IBOutlet weak var btnHandleLeft: UIButton!
    
    // Outlet TextField
    @IBOutlet weak var txtFormatNumber: UITextField!
    @IBOutlet weak var txtGradeSecond: UITextField!
    @IBOutlet weak var txtGradeFirst: UITextField!
    @IBOutlet weak var txtCarNameSecond: UITextField!
    @IBOutlet weak var txtCarNameFirst: UITextField!
    @IBOutlet weak var txtMakerSecond: UITextField!
    @IBOutlet weak var txtMakerFirst: UITextField!
    @IBOutlet weak var txtIntroduceCode: UITextField!
    @IBOutlet weak var txtFirstTimeRegister: UITextField!
    @IBOutlet weak var txtInspectExpired: UITextField!
    
    // Button Action
    @IBAction func txtFormatNumberAction(_ sender: UITextField) {
    }
    @IBAction func btnCheckGrade(_ sender: UIButton) {
    }
    @IBAction func txtGradeFirstAction(_ sender: UITextField) {
        guard let list = currentCar.carName?.carGrades.map({ $0.name }) else {
            return
        }
        moveToSelectionPage(list, type: "CarGrade")
    }

    @IBAction func txtCarNameFirstAction(_ sender: UITextField) {
        guard let list = currentCar.carBrand?.carNames.map({ $0.name }) else {
            return
        }
        moveToSelectionPage(list, type: "CarName")
    }

    @IBAction func txtMakerFirstAction(_ sender: Any) {
        let list = MockData.carBrands.map({ $0.name })
        
        moveToSelectionPage(list, type: "CarBrand")
    }

    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        //setupContent()
    }
    
    func setupUI(){
        addDropDownIcon()
        showDatePicker()
        btnCheckGrade.layer.cornerRadius = 7
        RadiusButton()
    }
    
    func setupContent(){
    }
    
    func RadiusButton()
    {
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
    
    func recieveCarData(data: String, type: String) {
        if(type == "CarBrand")
        {
            txtMakerFirst.text = data
            txtMakerSecond.text = data
        }
        else if (type == "CarName")
        {
            txtCarNameFirst.text = data
            txtCarNameSecond.text = data
        }
        else if (type == "CarGrade")
        {
            txtGradeFirst.text = data
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
    
    func addDropDownIcon(){
        //Maker
        txtMakerFirst.renderDropdowmImage()
        //Car name
        txtCarNameFirst.renderDropdowmImage()
        // Grade
        txtGradeFirst.renderDropdowmImage()
        //First Time Register
        txtFirstTimeRegister.renderDropdowmImage()
        //Inspect Expired
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
    func didSelect(_ viewController: SelectionViewController, data: String, type: String) {
        
        if let carBrand = MockData.getCarBrand(name: data) {
            currentCar.carBrand = carBrand
        }
        recieveCarData(data: data, type: type)
    }
}

