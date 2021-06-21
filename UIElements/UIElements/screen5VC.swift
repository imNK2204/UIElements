//
//  screen5VC.swift
//  UIElements
//
//  Created by srk on 21/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen5VC: UIViewController {
    
    private let Label1:UILabel = {
        let label = UILabel()
        label.text = "Select Your Destination"
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private let PickerView = UIPickerView()
    private let pickerData = ["Varachha", "Vesu", "Udhana", "Adajan", "Muglisarai"]
    
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
        let vc = screen6VC()
        navigationController?.pushViewController(vc, animated: true)
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Destination"
        view.backgroundColor = UIColor.white
        view.addSubview(Label1)
        view.addSubview(PickerView)
        view.addSubview(Continue)
        PickerView.dataSource = self
        PickerView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Label1.frame = CGRect(x: 20, y: 120, width: view.width - 40, height: 40)
        PickerView.frame = CGRect(x: 20, y: Label1.bottom + 20, width: view.width - 40, height: 50)
        Continue.frame = CGRect(x: 20, y: PickerView.bottom + 40, width: view.width - 40, height: 60)
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

extension screen5VC: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
}
