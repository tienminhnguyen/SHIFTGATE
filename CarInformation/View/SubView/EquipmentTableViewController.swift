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

    // Button Action
    @IBAction func btnOdoNotClearAction(_ sender: UIButton) {
    }
    @IBAction func btnOdoYesAction(_ sender: UIButton) {
    }
    @IBAction func btnOdoNoAction(_ sender: UIButton) {
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
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
}
