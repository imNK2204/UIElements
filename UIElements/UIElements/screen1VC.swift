//
//  screen1VC.swift
//  UIElements
//
//  Created by srk on 20/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen1VC: UIViewController {
    
    private let Label1:UILabel = {
        let label = UILabel()
        label.text = "Sign Up Here!"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    private let Label2:UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let NameTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Enter Your Name"
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        textView.layer.cornerRadius = 20
        return textView
    }()
    
    private let Label3:UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let PasswordTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        textField.borderStyle = .roundedRect
//        textField.backgroundColor = #colorLiteral(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        return textField
    }()
    
    private let Label4:UILabel = {
        let label = UILabel()
        label.text = "Date Of Birth"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let DatePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = #colorLiteral(red: 0.9637209141, green: 0.9637209141, blue: 0.9637209141, alpha: 1)
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
//        datePicker.addTarget(self, action: #selector(takeDate), for: .valueChanged)
        return datePicker
    }()
    
    private let ProgressView:UIProgressView = {
        let progressView = UIProgressView()
        progressView.setProgress(0.0, animated: true)
        return progressView
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0) {
            self.ProgressView.setProgress(1.0, animated: true)
        }
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
        let vc = screen2VC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.143452806, green: 0.1553194879, blue: 0.1725588291, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
//        view.backgroundColor = #colorLiteral(red: 0.08141656091, green: 0.08141656091, blue: 0.08141656091, alpha: 1)
        title = "Sign Up"
        view.addSubview(Label1)
        view.addSubview(Label2)
        view.addSubview(NameTextView)
        view.addSubview(Label3)
        view.addSubview(PasswordTextField)
        view.addSubview(Label4)
        view.addSubview(DatePicker)
        view.addSubview(ProgressView)
        view.addSubview(Continue)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Label1.frame = CGRect(x: 30, y: 200, width: view.width - 40, height: 50)
        Label2.frame = CGRect(x: 20, y: Label1.bottom + 20, width: view.width - 40, height: 20)
        NameTextView.frame = CGRect(x: 20, y: Label2.bottom + 10, width: view.width - 40, height: 50)
        Label3.frame = CGRect(x: 20, y: NameTextView.bottom + 20, width: view.width - 40, height: 20)
        PasswordTextField.frame = CGRect(x: 20, y: Label3.bottom + 10, width: view.width - 40, height: 50)
        Label4.frame = CGRect(x: 20, y: PasswordTextField.bottom + 20, width: view.width - 40, height: 20)
        DatePicker.frame = CGRect(x: 20, y: Label4.bottom + 10, width: view.width - 40, height: 40)
        ProgressView.frame = CGRect(x: 20, y: DatePicker.bottom + 40, width: view.width - 40, height: 60)
        Continue.frame = CGRect(x: 20, y: ProgressView.bottom + 40, width: view.width - 40, height: 60)
    }
    
//    @objc func takeDate() {
//        print(DatePicker.date)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
