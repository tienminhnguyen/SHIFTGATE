//
//  MenuViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/14/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ index : Int32)
}

class MenuViewController: UIViewController {
    
    @IBOutlet weak var btnCloseMenu: UIButton!
    var btnMenu : UIButton!
    var delegate: SlideMenuDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnHomeTapped(_ sender: Any) {
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = mainStoryBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    @IBAction func btnDocumentTapped(_ sender: Any) {
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let docViewController = mainStoryBoard.instantiateViewController(withIdentifier: "DocumentViewController") as! DocumentViewController
        self.navigationController?.pushViewController(docViewController, animated: true)
    }
    
    @IBAction func btnIntroduceTapped(_ sender: Any) {
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let introduceViewController = mainStoryBoard.instantiateViewController(withIdentifier: "IntroduceViewController") as! IntroduceViewController
        self.navigationController?.pushViewController(introduceViewController, animated: true)
    }
    
    @IBAction func btnContractTapped(_ sender: Any) {
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let contractViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ContractViewController") as! ContractViewController
        self.navigationController?.pushViewController(contractViewController, animated: true)
    }
    @IBAction func btnCloseTapped(_ sender: UIButton) {
        
    }
}
