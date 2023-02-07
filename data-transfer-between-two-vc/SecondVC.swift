//
//  SecondVC.swift
//  data-transfer-between-two-vc
//
//  Created by Melih Cüneyter on 7.02.2023.
//

import UIKit

protocol TransferDataDelegate: UIViewController {
    func transferData(_ data: String)
}

final class SecondVC: UIViewController {
    @IBOutlet weak var enterDataForProtocolTF: UITextField!
    @IBOutlet weak var enterDataForNotificationCenterTF: UITextField!
    @IBOutlet weak var enterDataForClosureTF: UITextField!
    
    weak var delegate: TransferDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func postNotification() {
        NotificationCenter.default.post(name: NSNotification.Name(notificationCenterPassDataKey),
                                        object: enterDataForNotificationCenterTF.text)
    }
    
    @IBAction func transferDataWithProtocolTapped(_ sender: Any) {
        if enterDataForProtocolTF.text!.isEmpty {
            alertView()
            return
        }
        
        delegate?.transferData(enterDataForProtocolTF.text!)
        dismiss()
    }
    
    @IBAction func transferDataWithNotificationCenterTapped(_ sender: Any) {
        if enterDataForNotificationCenterTF.text!.isEmpty {
            alertView()
            return
        }
        
        postNotification()
        dismiss()
    }
    
    @IBAction func transferDataWithClosureTapped(_ sender: Any) {
        
    }
}
