//
//  ViewController.swift
//  AlertKitExample
//
//  Created by Nathan Tannar on 10/19/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit
import AlertHUDKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .groupTableViewBackground
        
        let a = UIButton()
        a.backgroundColor = .red
        a.setTitle("Show Ping", for: .normal)
        a.addTarget(self, action: #selector(showPing), for: .touchUpInside)
        a.frame = CGRect(origin: CGPoint(x: view.center.x - 100, y: 100), size: CGSize(width: 200, height: 44))
        view.addSubview(a)
        
        let b = UIButton()
        b.backgroundColor = .red
        b.setTitle("Show Toast", for: .normal)
        b.addTarget(self, action: #selector(showToast), for: .touchUpInside)
        b.frame = CGRect(origin: CGPoint(x: view.center.x - 100, y: 150), size: CGSize(width: 200, height: 44))
        view.addSubview(b)
        
        let c = UIButton()
        c.backgroundColor = .red
        c.setTitle("Show DownloadWheel", for: .normal)
        c.addTarget(self, action: #selector(showDownloadWheel), for: .touchUpInside)
        c.frame = CGRect(origin: CGPoint(x: view.center.x - 100, y: 200), size: CGSize(width: 200, height: 44))
        view.addSubview(c)
        
        let d = UIButton()
        d.backgroundColor = .red
        d.setTitle("Show DownloadLine", for: .normal)
        d.addTarget(self, action: #selector(showDownloadLine), for: .touchUpInside)
        d.frame = CGRect(origin: CGPoint(x: view.center.x - 100, y: 250), size: CGSize(width: 200, height: 44))
        view.addSubview(d)
        
        let e = UIButton()
        e.backgroundColor = .red
        e.setTitle("Show ProgressHUD", for: .normal)
        e.addTarget(self, action: #selector(showProgressHUD), for: .touchUpInside)
        e.frame = CGRect(origin: CGPoint(x: view.center.x - 100, y: 300), size: CGSize(width: 200, height: 44))
        view.addSubview(e)
    }
    
    @objc
    func showToast() {
        
        Toast(text: Lorem.paragraph(), actionText: "Undo") {
            print("Undo Selected")
        }.present(self, animated: true, duration: 3)
    }
    
    @objc
    func showPing() {
        
        Ping(text: Lorem.sentence(), style: .success).show()
    }
    
    @objc
    func showDownloadWheel() {
        
        let wheel = DownloadWheel()
        let url = URL(string: "https://edmullen.net/test/rc.jpg")!
//        wheel.dismissOnCompletion = false
        wheel.downloadFile(from: url, completion: nil).present(self, animated: true)
    }
    
    @objc
    func showDownloadLine() {
        
        let line = DownloadLine()
        let url = URL(string: "https://edmullen.net/test/rc.jpg")!
//        line.dismissOnCompletion = false
        line.downloadFile(from: url, completion: nil).present(self, topAnchor: view.safeAreaLayoutGuide.topAnchor, animated: true)
    }
    
    @objc
    func showProgressHUD() {
        
        let url = URL(string: "https://edmullen.net/test/rc.jpg")!
        ProgressHUD(title: "Download Started", subtitle: "Downloading...", image: nil)
            .downloadFile(from: url, completion: { hud, data, error in
            hud.titleLabel.text = error == nil ? "Complete" : "Error"
        }).onProgressUpdate { hud, progress in
            hud.subtitleLabel.text = "\(Int(progress * 100)) %"
        }.present(self, animated: true, duration: .infinity)
    }
}

