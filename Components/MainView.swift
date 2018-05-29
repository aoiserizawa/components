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

class MainView: UIView {

    public let viewComponent: ComponentView = {
        return ComponentView()
    }()

    lazy var myView: UIView = self.viewComponent.aView

    lazy var myButton: UIButton = self.viewComponent.makeButton(title: "Click Me", tintColor: UIColor.white)

    lazy var secondButton: UIButton = self.viewComponent.makeButton(title: "Oniichan", tintColor: UIColor.white)

    public override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = UIColor.gray

        self.avd.subviews(forAutoLayout: [self.myView, self.myButton, self.secondButton])

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

    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
