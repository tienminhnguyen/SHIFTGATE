//
//  CarColorTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class CarColorTableViewController: UITableViewController {

    var selectedCarColor : CarColor = CarColor()
    // Button outlet
    @IBOutlet weak var btnOriginalColor: DropdownButton!
    @IBOutlet weak var btnColorName: DropdownButton!
    @IBOutlet weak var btnExteriorColor: DropdownButton!
    @IBOutlet weak var btnInteriorColor: DropdownButton!
    // Button Action
    @IBAction func btnColorNameAction(_ sender: DropdownButton) {
        let list = ColorDataMock.carColors.map({ $0.color })
        moveToSelectionPage(list, type: "ColorName")
    }
    @IBAction func btnExteriorColorAction(_ sender: DropdownButton) {
        let list = ColorDataMock.carColors.map({ $0.color })
        moveToSelectionPage(list, type: "ExteriorColor")
    }
    @IBAction func btnOriginalColorAction(_ sender: DropdownButton) {
        let list = ColorDataMock.carColors.map({ $0.color })
        moveToSelectionPage(list, type: "OriginalColor")
    }
    @IBAction func btnInteriorColorAction(_ sender: DropdownButton) {
        let list = ColorDataMock.carColors.map({ $0.color })
        moveToSelectionPage(list, type: "InteriorColor")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        handleRadiusButton()
        handleRenderDropdownIcon()
    }
    
    func handleRadiusButton()
    {
        btnOriginalColor.radiusButton()
        btnInteriorColor.radiusButton()
        btnColorName.radiusButton()
        btnExteriorColor.radiusButton()
    }
    func handleRenderDropdownIcon()
    {
        btnOriginalColor.renderDropdowmImage()
        btnInteriorColor.renderDropdowmImage()
        btnColorName.renderDropdowmImage()
        btnExteriorColor.renderDropdowmImage()
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
    
    func bindingCarColor(data: String, type: String){
        if(type == "OriginalColor"){
            btnOriginalColor.setTitle(data, for: .normal)
        }
        else if(type == "InteriorColor"){
            btnInteriorColor.setTitle(data, for: .normal)
        }
        else if(type == "ExteriorColor"){
            btnExteriorColor.setTitle(data, for: .normal)
        }
        else if(type == "ColorName"){
            btnColorName.setTitle(data, for: .normal)
        }
    }
}

extension CarColorTableViewController : SelectionVCDelegate{
    // Recieve data
    func didSelect(_ viewController: SelectionViewController, data: String, type: String) {
        selectedCarColor.carColor = ColorDataMock.getCarColor(colorName: data)
        bindingCarColor(data: data, type: type)
    }
}
