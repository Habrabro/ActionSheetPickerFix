//
//  ViewController.swift
//  ActionSheetPickerFix
//
//  Created by admin on 31/01/2020.
//  Copyright © 2020 Anton Karpushko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showActionPickerButtonDidTapped(_ sender: Any) {
        
        let picker = ActionSheetStringPicker(
            title: "Multiple String Picker",
            rows: ["Many", "Many more", "Infinite"],
            initialSelection: 2,
            target: nil, successAction: nil, cancelAction: nil, origin: sender)
        picker?.pickerBackgroundColor = .black
        picker?.toolbarBackgroundColor = .black
        picker?.setTextColor(.white)
        picker?.show()
    }
    
}
