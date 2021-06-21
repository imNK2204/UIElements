//
//  mainVC.swift
//  UIElements
//
//  Created by srk on 19/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class mainVC: UIViewController {
    
    private let ImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "set1")
        return imageView
    }()
    
    private let Label1:UILabel = {
        let label = UILabel()
        label.text = "Hello!"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 40)
//        label.textAlignment = .center
        return label
    }()
    
    private let Label2:UILabel = {
        let label = UILabel()
        label.text = "Let's Get"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        //        label.textAlignment = .center
        return label
    }()
    
    private let Label3:UILabel = {
        let label = UILabel()
        label.text = "Started"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        //        label.textAlignment = .center
        return label
    }()
    
    private let SignUp:UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.addTarget(self, action: #selector(moveTo), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func moveTo() {
        let vc = screen1VC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.05821686248, green: 0.05879326706, blue: 0.05879326706, alpha: 1)
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.addSubview(ImageView)
        view.addSubview(SignUp)
        view.addSubview(Label1)
        view.addSubview(Label2)
        view.addSubview(Label3)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ImageView.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        Label1.frame = CGRect(x: 30, y: ImageView.bottom + 60, width: view.width - 40, height: 40)
        Label2.frame = CGRect(x: 30, y: Label1.bottom + 10, width: view.width - 40, height: 40)
        Label3.frame = CGRect(x: 30, y: Label2.bottom + 10, width: view.width - 40, height: 40)
        SignUp.frame = CGRect(x: 20, y: Label3.bottom + 30, width: view.width - 40, height: 60)
    }
    
}

