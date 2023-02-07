//
//  ViewController.swift
//  data-transfer-between-two-vc
//
//  Created by Melih Cüneyter on 6.02.2023.
//

import UIKit

final class FirstVC: UIViewController {
    @IBOutlet weak var transferredDataWithProtocolTF: UITextField!
    @IBOutlet weak var transferredDataWithNotificationCenterTF: UITextField!
    @IBOutlet weak var transferredDataWithClosureTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func NextVCTapped(_ sender: Any) {
        
    }
}
