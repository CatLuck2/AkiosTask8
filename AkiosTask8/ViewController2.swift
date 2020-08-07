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

    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    private let ud = UserDefaults.standard
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let sliderValue = ud.object(forKey: "slider.value") as? Float else {
            valueLabel.text = "\(0.5)"
            ud.set(0.5, forKey: "slider.value")
            return
        }
        valueLabel.text = "\(sliderValue)"
        slider.value = sliderValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func slider(_ sender: UISlider) {
        valueLabel.text = "\(sender.value)"
        ud.set(sender.value, forKey: "slider.value")
    }
    
}
