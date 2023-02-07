//
//  Extension.swift
//  data-transfer-between-two-vc
//
//  Created by Melih Cüneyter on 7.02.2023.
//

import UIKit

extension UIViewController {
    func dismiss() {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    func alertView() {
        let alert = UIAlertController(title: "Alert!", message: "Empty data cannot be transferred!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
