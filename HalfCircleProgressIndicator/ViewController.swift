//
//  ViewController.swift
//  HalfCircleProgressIndicator
//
//  Created by Alexander Nikolaychuk on 09.05.2020.
//  Copyright © 2020 AlexAlmostEngineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progress1: HalfCircleIndicator!
    var progress2: HalfCircleIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress1 = HalfCircleIndicator(frame: CGRect(x: 100, y: 100, width: 200, height: 100), isInnerCircleExist: true)
        progress2 = HalfCircleIndicator(frame: CGRect(x: 150, y: 250, width: 100, height: 50))
        self.view.addSubview(progress1)
        self.view.addSubview(progress2)
    }
    
    @IBAction func addAction(_ sender: Any) {
        progress1.updateProgress(percent: progress1.value + 0.1)
        progress2.updateProgress(percent: progress2.value + 0.1)
    }
    
    
    @IBAction func subtractAction(_ sender: Any) {
        progress1.updateProgress(percent: progress1.value - 0.1)
        progress2.updateProgress(percent: progress2.value - 0.1)
    }

}
