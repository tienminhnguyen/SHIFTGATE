//
//  SelectionViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/20/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

protocol SelectionVCDelegate {
    func didSelect(_ viewController: SelectionViewController, data: String, type: String)
}

class SelectionViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    var delegate: SelectionVCDelegate?
    
    var data: [String] = []
    var type : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SelectionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carInforCell", for: indexPath)
        let carView = data[indexPath.row]
        cell.textLabel!.text = carView
        cell.textLabel!.font = UIFont.boldSystemFont(ofSize: 16.0)
        return cell
    }
}

extension SelectionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Send data
        delegate?.didSelect(self, data: data[indexPath.row], type: type)
        self.navigationController?.popViewController(animated: true)
    }
}
