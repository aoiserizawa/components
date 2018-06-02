//
//  GhostFormView.swift
//  Components
//
//  Created by alvin joseph valdez on 02/06/2018.
//  Copyright © 2018 FFUF. All rights reserved.
//

import UIKit
import Alacrity

public class GhostFormView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public static func makeTextField(tintColor: UIColor, secure: Bool = false, placeHolder: String = "") -> UITextField {
        let textField: UITextField = UITextField().acy
            .font(UIFont(name: "AvenirNext-Regular", size: 17.0)!)
            .textColor(tintColor)
            .backgroundColor(UIColor.clear)
            .cornerRadius(5.0)
            .placeholder(placeHolder)
            .apply({ (textField: UITextField) -> Void in
                textField.layer.borderColor = UIColor.white.cgColor
                textField.layer.borderWidth = 1.0
                textField.tintColor = UIColor.white
                textField.setLeftPaddingPoints(10.0)
                textField.isSecureTextEntry = secure
            })
            .view
        
        return textField
    }
    
    public static func makeButton(title: String, tintColor: UIColor, background: UIColor = UIColor.clear) -> UIButton {
        
        let button: UIButton = UIButton().acy
            .setTitle(title, for: UIControlState.normal)
            .setTitleColor(tintColor, for: UIControlState.normal)
            .backgroundColor(background)
            .cornerRadius(5.0)
            .apply({ (button: UIButton) -> Void in
                button.layer.borderColor = tintColor.cgColor
                button.layer.borderWidth = 1.0
                button.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 17.0)
            })
            .view
        
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
