//
//  ComponentView.swift
//  Components
//
//  Created by FFUF Alvin on 29/05/2018.
//  Copyright © 2018 FFUF. All rights reserved.
//

import UIKit
import Alacrity
import SnapKit

public class FormView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public static func makeTextField(tintColor: UIColor) -> UITextField {
        let textField: UITextField = UITextField().acy
            .font(UIFont(name: "AvenirNext-Regular", size: 17.0)!)
            .textColor(tintColor)
            .backgroundColor(UIColor.clear)
            .cornerRadius(5.0)
            .apply({ (textField) -> Void in
                textField.layer.borderColor = UIColor.white.cgColor
                textField.layer.borderWidth = 1.0
                textField.tintColor = UIColor.white
            })
            .view

        textField.setLeftPaddingPoints(10.0)
        textField.isSecureTextEntry = true
        return textField
    }

    public static func makeButton(title: String, tintColor: UIColor, background: UIColor = UIColor.clear) -> UIButton {

        let button: UIButton = UIButton().acy
            .setTitle("Sample", for: UIControlState.normal)
            .setTitleColor(UIColor.blue, for: UIControlState.normal)
            .backgroundColor(background)
            .cornerRadius(5.0)
            .apply({ (button) -> Void in
                button.layer.borderColor = tintColor.cgColor
            })
            .view

        button.layer.borderWidth = 1.0
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(tintColor, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 17.0)

        return button
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
