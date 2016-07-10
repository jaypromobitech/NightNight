//
//  ViewController.swift
//  NightNight
//
//  Created by Draveness on 06/18/2016.
//  Copyright (c) 2016 Draveness. All rights reserved.
//

import UIKit
import NightNight

class ViewController: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.mixedBackgroundColor = MixedColor(normal: 0xfafafa, night: 0x222222)

        label.frame = view.frame
        label.text = "NightNight"

//        let attributedString = NSMutableAttributedString(string: "NightNight")
//        attributedString.setNightAttributes([NNForegroundColorAttributeName: MixedColor(normal: 0x000000, night: 0xfafafa)], range: NSRange(location: 0, length: 9))
//        label.attributedText = attributedString

        label.textAlignment = .Center
        label.mixedTextColor = MixedColor(normal: 0x000000, night: 0xfafafa)
        view.addSubview(label)

        navigationItem.title = "NightNight"
        navigationController?.navigationBar.titleTextAttributes = [NNForegroundColorAttributeName: MixedColor(normal: 0x000000, night: 0xfafafa)]
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Normal",
                                                           style: .Done,
                                                           target: self,
                                                           action: #selector(changeToNormal))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Night",
                                                            style: .Done,
                                                            target: self,
                                                            action: #selector(changeToNight))
        navigationController?.navigationBar.mixedBarTintColor = MixedColor(normal: 0xffffff, night: 0x222222)
        navigationController?.navigationBar.mixedTintColor = MixedColor(normal: 0x0000ff, night: 0xfafafa)
    }

    func changeToNormal() {
        NightNight.theme = .NORMAL
    }

    func changeToNight() {
        NightNight.theme = .NIGHT
    }

}

