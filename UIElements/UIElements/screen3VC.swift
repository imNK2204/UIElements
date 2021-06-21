//
//  screen3VC.swift
//  UIElements
//
//  Created by srk on 20/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen3VC: UIViewController {
    
    private let ImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "set3")
        return imageView
    }()
    
    private let Label:UILabel = {
        let label = UILabel()
        label.text = "Turn On Your Notifications!"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private let Switch:UISwitch = {
        let switcher = UISwitch()
        return switcher
    }()
    
    private let Continue:UIButton = {
        let button = UIButton()
        button.setTitle("Continue...", for: .normal)
        button.addTarget(self, action: #selector(moveTo), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func moveTo() {
        let vc = screen4VC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notification Setting"
        view.addSubview(ImageView)
        view.addSubview(Label)
        view.addSubview(Switch)
        view.addSubview(Continue)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ImageView.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        Label.frame = CGRect(x: 30, y: ImageView.bottom + 40, width: view.width - 40, height: 40)
        Switch.frame = CGRect(x: 180, y: Label.bottom + 20, width: view.width - 160, height: 40)
        Continue.frame = CGRect(x: 20, y: Switch.bottom + 60, width: view.width - 40, height: 60)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
