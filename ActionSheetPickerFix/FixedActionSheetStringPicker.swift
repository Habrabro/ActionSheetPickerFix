//
//  FixedActionSheetStringPicker.swift
//  ActionSheetPickerFix
//
//  Created by admin on 31/01/2020.
//  Copyright © 2020 Anton Karpushko. All rights reserved.
//

import UIKit

class FixedActionSheetStringPicker: ActionSheetStringPicker {
    
    let data: [Any]
    
    override init(title: String!, rows strings: [Any]!, initialSelection index: Int, doneBlock: ActionStringDoneBlock!, cancel cancelBlockOrNil: ActionStringCancelBlock!, origin: Any!) {
        data = strings
        super.init(title: title, rows: strings, initialSelection: index, doneBlock: doneBlock, cancel: cancelBlockOrNil, origin: origin)
    }
    
    override func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        super.pickerView(pickerView, viewForRow: row, forComponent: component, reusing: view)
        
        pickerView.subviews[1].backgroundColor = UIColor.white
        pickerView.subviews[2].backgroundColor = UIColor.white
        
        guard let reusableView = view else {
            let view: UILabel = {
                let view = UILabel()
//                view.text = data[row]
                view.textColor = .white
                view.textAlignment = .center
                view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
                return view
            }()
            return view
        }
        return reusableView
    }
}
