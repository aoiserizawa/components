//
//  ViewController.swift
//  Components
//
//  Created by FFUF Alvin on 29/05/2018.
//  Copyright © 2018 FFUF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        self.view = MainView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(ViewController.viewAction)
        )
        
        self.rootView.myView.isUserInteractionEnabled = true
        self.rootView.myView.addGestureRecognizer(tap)

        self.rootView.myButton.addTarget(
            self,
            action: #selector(ViewController.viewAction),
            for: UIControlEvents.touchUpInside
        )

        self.rootView.secondButton.addTarget(
            self,
            action: #selector(ViewController.stopAction),
            for: UIControlEvents.touchUpInside
        )

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController {
    unowned var rootView: MainView { return self.view as! MainView } // swiftlint:disable:this force_cast
}

// MARK: - Target Actions
extension ViewController {
    @objc func viewAction() {
        print("view is tapped")
    }

    @objc func stopAction() {
        print("yamete!!")
    }
}
