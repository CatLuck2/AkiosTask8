//
//  ViewController.swift
//  AkiosTask8
//
//  Created by Nekokichi on 2020/08/07.
//  Copyright © 2020 Nekokichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.delegate = self
    }

    @IBAction private func slider(_ sender: UISlider) {
        valueLabel.text = "\(sender.value)"
    }
    
}

extension ViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let vc2 = viewController as? ViewController2 {
            vc2.slider.value = slider.value
            vc2.valueLabel.text = "\(slider.value)"
        }
    }
}

