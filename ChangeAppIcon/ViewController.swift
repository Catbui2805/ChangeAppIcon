//
//  ViewController.swift
//  ChangeAppIcon
//
//  Created by Nguyen Tran Cong on 3/13/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btAppIcon1: UIButton = {
        let bt = UIButton()
        bt.tag = 1
        bt.frame = .init(x: 20, y: 100, width: 300, height: 100)
        bt.backgroundColor = .lightGray
        bt.setTitle("set App Icon 1", for: .normal)
        bt.setImage(UIImage(named: "Icon-1"), for: .normal)
        return bt
    }()
    
    let btAppIcon2: UIButton = {
        let bt = UIButton()
        bt.tag = 2
        bt.frame = .init(x: 20, y: 300, width: 300, height: 100)
        bt.backgroundColor = .lightGray
        bt.setTitle("set App Icon 2", for: .normal)
        bt.setImage(UIImage(named: "Icon-2"), for: .normal)
        return bt
    }()
    
    let btAppIcon3: UIButton = {
        let bt = UIButton()
        bt.tag = 3
        bt.frame = .init(x: 20, y: 500, width: 300, height: 100)
        bt.backgroundColor = .lightGray
        bt.setTitle("set App Icon 3", for: .normal)
        bt.setImage(UIImage(named: "Icon-3"), for: .normal)
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(btAppIcon1)
        btAppIcon1.addTarget(self, action: #selector(setAppIcon(_:)), for: .touchUpInside)
        
        view.addSubview(btAppIcon2)
        btAppIcon2.addTarget(self, action: #selector(setAppIcon(_:)), for: .touchUpInside)
        
        view.addSubview(btAppIcon3)
        btAppIcon3.addTarget(self, action: #selector(setAppIcon(_:)), for: .touchUpInside)
        
    }
    
    @objc func setAppIcon(_ sender: UIButton) {
        if UIApplication.shared.supportsAlternateIcons {
            // let the user choose a new icon
            var name = ""
            switch sender.tag {
            case 1:
                name = "AppIcon-1"
            case 2:
                name = "AppIcon-2"
            case 3:
                name = "AppIcon-3"
            default:
                name = "AppIcon-1"
            }
            
            UIApplication.shared.setAlternateIconName(name) { error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("Success!")
                    print(UIApplication.shared.alternateIconName ?? "Primary")
                }
            }
        }
    }
    
}

