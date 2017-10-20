//
//  ViewController.swift
//  AlertKitExample
//
//  Created by Nathan Tannar on 10/19/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit
import AlertKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let a = UIButton()
        a.backgroundColor = .red
        a.setTitle("Show Ping", for: .normal)
        a.addTarget(self, action: #selector(showPing), for: .touchUpInside)
        a.frame = CGRect(origin: CGPoint(x: 16, y: 100), size: CGSize(width: 200, height: 44))
        view.addSubview(a)
        
        let b = UIButton()
        b.backgroundColor = .red
        b.setTitle("Show Toast", for: .normal)
        b.addTarget(self, action: #selector(showToast), for: .touchUpInside)
        b.frame = CGRect(origin: CGPoint(x: 16, y: 200), size: CGSize(width: 200, height: 44))
        view.addSubview(b)
    }
    
    @objc
    func showToast() {
        
        Toast(text: Lorem.paragraph(), actionText: "Undo") {
            print("Selected")
        }.present(self, animated: true, duration: 10)
        
        Toast(text: Lorem.paragraph()).present(self, animated: true, duration: 10)
    }
    
    @objc
    func showPing() {
        
        Ping(text: Lorem.sentence(), style: .success).show()
    }
}

