//
//  CarColorTableViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class CarColorTableViewController: UITableViewController {

    @IBOutlet weak var txtOriginalColor: UITextField!
    @IBOutlet weak var txtInteriorColor: UITextField!
    @IBOutlet weak var txtColorName: UITextField!
    @IBOutlet weak var txtExteriorColor: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        txtOriginalColor.renderDropdowmImage()
        txtInteriorColor.renderDropdowmImage()
        txtColorName.renderDropdowmImage()
        txtExteriorColor.renderDropdowmImage()
    }
}
