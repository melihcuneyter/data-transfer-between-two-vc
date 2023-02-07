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
    
    // MARK: - Actions
    @IBAction func NextVCTapped(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            vc.delegate = self
            
            transferredDataWithProtocolTF.text = ""
            transferredDataWithNotificationCenterTF.text = ""
            transferredDataWithClosureTF.text = ""
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

// MARK: - Data Transfer Delegate
extension FirstVC: TransferDataDelegate {
    func transferData(_ data: String) {
        transferredDataWithProtocolTF.text = data
    }
}
