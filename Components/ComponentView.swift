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

public class ComponentView: UIView {

    public let aView: UIView = UIView().avd
        .backgroundColor(UIColor.red)
        .cornerRadius(50.0)
        .isUserInteractionEnabled(true)
        .view

    public let button: UIButton = UIButton().acy
        .setTitle("Sample", for: UIControlState.normal)
        .setTitleColor(UIColor.blue, for: UIControlState.normal)
        .backgroundColor(UIColor.clear)
        .cornerRadius(5.0)
        .view

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public func show(size: Float) {
        self.aView.snp.remakeConstraints { (make: ConstraintMaker) -> Void in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(size)
            make.width.equalTo(self.aView.snp.height)
        }
        let halfSize: Float = size / 2
        self.aView.avd.cornerRadius(CGFloat(halfSize))
    }

    public func makeButton(title: String, tintColor: UIColor) -> UIButton {

        let button: UIButton = UIButton().acy
            .setTitle("Sample", for: UIControlState.normal)
            .setTitleColor(UIColor.blue, for: UIControlState.normal)
            .backgroundColor(UIColor.clear)
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

