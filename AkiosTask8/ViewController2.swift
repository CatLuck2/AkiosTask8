//
//  ViewController2.swift
//  AkiosTask8
//
//  Created by Nekokichi on 2020/08/07.
//  Copyright © 2020 Nekokichi. All rights reserved.
//
/*
  もう一方の画面に渡す方法
 １、UserDefault(viewWillAppearでラベルとスライダーを更新)
 ２、遷移時の受け渡し
 */

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.delegate = self
    }
    
    @IBAction func slider(_ sender: UISlider) {
        valueLabel.text = "\(sender.value)"
    }
    
}

extension ViewController2: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let vc = viewController as? ViewController {
            vc.slider.value = slider.value
            vc.valueLabel.text = "\(slider.value)"
        }
    }
}
