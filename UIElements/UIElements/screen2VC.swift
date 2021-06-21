//
//  screen2VC.swift
//  UIElements
//
//  Created by srk on 20/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen2VC: UIViewController {

    private let ImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "set2")
        return imageView
    }()
    
    private let Label:UILabel = {
        let label = UILabel()
        label.text = "Rate Us"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        //        label.textAlignment = .center
        return label
    }()
    
    private let Slider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(rateUs), for: .valueChanged)
        return slider
    }()
    
    private let RateTextView:UITextView = {
        let textView = UITextView()
//        textView.text = "Enter Your Name"
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    @objc func rateUs(){
        let rate = Int(Slider.value)
        RateTextView.text = String(rate)
    }
    
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
        let vc = screen3VC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Rate Us"
        view.addSubview(ImageView)
        view.addSubview(Label)
        view.addSubview(Slider)
        view.addSubview(RateTextView)
        view.addSubview(Continue)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ImageView.frame = CGRect(x: 60, y: 200, width: 300, height: 300)
        Label.frame = CGRect(x: 130, y: ImageView.bottom + 40, width: view.width - 40, height: 40)
        Slider.frame = CGRect(x: 20, y: Label.bottom + 40, width: view.width - 40, height: 40)
        RateTextView.frame = CGRect(x: 20, y: Slider.bottom + 40, width: view.width - 40, height: 40)
        Continue.frame = CGRect(x: 20, y: RateTextView.bottom + 40, width: view.width - 40, height: 60)
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
