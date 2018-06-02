//
//  MainView.swift
//  Components
//
//  Created by FFUF Alvin on 29/05/2018.
//  Copyright © 2018 FFUF. All rights reserved.
//

import UIKit
import Alacrity
import SnapKit

public class MainView: UIView {

    public let myButton: UIButton = GhostFormView.makeButton(
        title: "Click Me",
        tintColor: UIColor.white
    )

    public let secondButton: UIButton = GhostFormView.makeButton(
        title: "Oniichan",
        tintColor: UIColor.white,
        background: UIColor.black
    )

    public let textView: UITextField = GhostFormView.makeTextField(tintColor: UIColor.white)

    public override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = UIColor.gray

        self.avd.subviews(forAutoLayout: [
                self.myButton, self.secondButton,
                self.textView
            ]
        )
        /*
        self.myButton.snp.remakeConstraints { (make: ConstraintMaker) -> Void in
            make.top.equalToSuperview().offset(20.0)
            make.width.equalTo(100.0)
            make.centerX.equalToSuperview()
        }

        self.secondButton.snp.remakeConstraints { (make: ConstraintMaker) -> Void in
            make.top.equalTo(self.myButton.snp.bottom).offset(20.0)
            make.width.equalTo(100.0)
            make.centerX.equalToSuperview()
        }
        */

        self.textView.snp.remakeConstraints { (make: ConstraintMaker) -> Void in
            make.top.equalToSuperview().offset(20.0)
            make.width.equalTo(200.0)
            make.height.equalTo(40.0)
            make.centerX.equalToSuperview()
        }

    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
