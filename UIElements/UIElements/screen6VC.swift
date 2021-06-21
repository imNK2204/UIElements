//
//  screen6VC.swift
//  UIElements
//
//  Created by srk on 21/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class screen6VC: UIViewController {
    
    private let toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        let cancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handleGallery))
        toolBar.items = [cancel, spacer, gallery]
        return toolBar
    }()
    
    @objc private func handleCancel() {
        print("cancel called")
        self.dismiss(animated: true)
    }
    
    @objc private func handleGallery() {
        print("gallery called")
        imagePicker.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.imagePicker, animated: true)
        }
    }
    
    private let tabBar:UITabBar = {
        let tabBar = UITabBar()
        let history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabBar.items = [history, downloads]
        return tabBar
    }()
    
    private let ImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "set4")
        return imageView
    }()
    
    private let imagePicker:UIImagePickerController = {
        let imgpicker = UIImagePickerController()
        imgpicker.allowsEditing = true
        return imgpicker
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Choose Your Profile Here"
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private let Continue:UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Set Profile"
        view.addSubview(toolBar)
        view.addSubview(tabBar)
        view.addSubview(ImageView)
        view.addSubview(myLabel)
        view.addSubview(Continue)
        tabBar.delegate = self
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let toolBarHeight:CGFloat = view.safeAreaInsets.top + 40
        toolBar.frame = CGRect(x: 0, y: 0, width: view.width, height: toolBarHeight)
        
        let tabBarHeight:CGFloat = view.safeAreaInsets.bottom + 49
        tabBar.frame = CGRect(x: 0, y: view.height - tabBarHeight, width: view.width, height: tabBarHeight)
        
        ImageView.frame = CGRect(x: 90, y: toolBar.bottom + 40, width: 200, height: 200)
        
        myLabel.frame = CGRect(x: 20, y: ImageView.bottom + 20, width: view.width - 40, height: 40)
        Continue.frame = CGRect(x: 20, y: myLabel.bottom + 40, width: view.width - 40, height: 60)
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
extension screen6VC: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}

extension screen6VC:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[.originalImage] as? UIImage {
            ImageView.image = selectedImage
        }
        
        picker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
