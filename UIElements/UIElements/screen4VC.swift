//
//  screen4VC.swift
//  UIElements
//
//  Created by srk on 21/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen4VC: UIViewController {

    private let Label1:UILabel = {
        let label = UILabel()
        label.text = "More Details..."
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        //        label.textAlignment = .center
        return label
    }()
    
    private let Label2:UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let SegmentedControl:UISegmentedControl = {
        let segControl = UISegmentedControl()
        segControl.insertSegment(withTitle: "Male", at: 0, animated: true)
        segControl.insertSegment(withTitle: "Female", at: 1, animated: true)
        return segControl
    }()
    
    private let Label3:UILabel = {
        let label = UILabel()
        label.text = "Height"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let TextView:UITextView = {
        let textView = UITextView()
        textView.text = ""
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    private let Stepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(takeHeight), for: .valueChanged)
        return stepper
    }()
    
    @objc func takeHeight(){
        let height = Stepper.value
        TextView.text = String(height)
        ActivityIndicatorView.isHidden = true
        ActivityIndicatorView.stopAnimating()
        Continue.isHidden = false
    }
    
    private let ActivityIndicatorView:UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.color = UIColor.black
        activity.startAnimating()
        return activity
    }()
    
    private let Continue:UIButton = {
        let button = UIButton()
        button.setTitle("Continue...", for: .normal)
        button.addTarget(self, action: #selector(moveTo), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        button.isHidden = true
        return button
    }()
    
    @objc func moveTo() {
        let vc = screen5VC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Personal Details"
        view.backgroundColor = UIColor.white
        view.addSubview(Label1)
        view.addSubview(Label2)
        view.addSubview(SegmentedControl)
        view.addSubview(TextView)
        view.addSubview(Label3)
        view.addSubview(Stepper)
        view.addSubview(ActivityIndicatorView)
        view.addSubview(Continue)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Label1.frame = CGRect(x: 30, y: 120, width: view.width - 40, height: 50)
        Label2.frame = CGRect(x: 20, y: Label1.bottom + 20, width: view.width - 40, height: 20)
        SegmentedControl.frame = CGRect(x: 20, y: Label2.bottom + 20, width: view.width - 40, height: 40)
        Label3.frame = CGRect(x: 20, y: SegmentedControl.bottom + 30, width: view.width - 40, height: 20)
        TextView.frame = CGRect(x: 20, y: Label3.bottom + 20, width: view.width - 160, height: 40)
        Stepper.frame = CGRect(x: 300, y: 350, width: view.width - 40, height: 50)
        ActivityIndicatorView.frame = CGRect(x: 30, y: Stepper.bottom + 20, width: view.width - 40, height: 40)
        Continue.frame = CGRect(x: 20, y: ActivityIndicatorView.bottom + 40, width: view.width - 40, height: 60)
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
