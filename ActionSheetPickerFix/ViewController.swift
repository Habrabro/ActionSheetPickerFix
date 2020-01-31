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
    
    @IBAction func actionSheetStringPickerButtonDidTapped(_ sender: Any) {
        let picker = ActionSheetStringPicker(
            title: "String Picker",
            rows: ["Many", "Many more", "Infinite"],
            initialSelection: 2,
            target: nil, successAction: nil, cancelAction: nil, origin: sender)
        stylePicker(picker)
        picker?.show()
    }
    
    @IBAction func actionSheetMultipleStringPickerButtonDidTapped(_ sender: Any) {
        let picker = ActionSheetMultipleStringPicker(
            title: "Multiple String Picker",
            rows: [
                ["One", "Two", "A lot"],
                ["Many", "Many more", "Infinite"]
            ],
            initialSelection: [2, 2],
            target: nil, successAction: nil, cancelAction: nil, origin: sender)
        stylePicker(picker)
        picker?.show()
    }
    
    @IBAction func actionSheetLocalePickerButtonDidTapped(_ sender: Any) {
        let picker = ActionSheetLocalePicker(
            title: "Locale Picker",
            initialSelection: TimeZone.current,
            target: nil, successAction: nil, cancelAction: nil, origin: sender)
        stylePicker(picker)
        picker?.show()
    }
    
    @IBAction func actionSheetDistancePickerButtonDidTapped(_ sender: Any) {
        let picker = ActionSheetDistancePicker(title: "ActionSheetDistancePicker", bigUnitString: "1", bigUnitMax: 1, selectedBigUnit: 2, smallUnitString: "3", smallUnitMax: 4, selectedSmallUnit: 5, target: nil, action: nil, origin: sender, cancelAction: nil)
        stylePicker(picker)
        picker?.show()
    }
    
    private func stylePicker(_ picker: AbstractActionSheetPicker?) {
        picker?.pickerBackgroundColor = .black
        picker?.toolbarBackgroundColor = .black
        picker?.setTextColor(.white)
    }
    
}
