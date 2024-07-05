//
//  RegisterViewController.swift
//  PetrovZA_HW_8
//
//  Created by zakhar terminal on 4.07.24.
//

import UIKit
import SnapKit

class RegisterViewController: UIViewController {

    lazy var headLabel = UILabel()
    lazy var userLabel = UILabel()
    lazy var passLabel = UILabel()
    lazy var confLabel = UILabel()
    lazy var userTextField = UITextField()
    lazy var passTextField = UITextField()
    lazy var confTextField = UITextField()
    lazy var saveButton = UIButton()
    lazy var imageBack = UIImageView()

  

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageBack)
        view.addSubview(headLabel)
        view.addSubview(userLabel)
        view.addSubview(confLabel)
        view.addSubview(passLabel)
        view.addSubview(userTextField)
        view.addSubview(passTextField)
        view.addSubview(confTextField)
        view.addSubview(saveButton)


        
        headLabel.text = "Registration Form"
        headLabel.font = .systemFont(ofSize: 35)
        headLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(110)
            $0.leading.equalToSuperview().offset(40)
        }
        
        userLabel.text = "Username"
        userLabel.font = .systemFont(ofSize: 15)
        userLabel.snp.makeConstraints{
            $0.top.equalTo(headLabel.snp.bottom).offset(60)
            $0.leading.equalToSuperview().offset(50)
        }
        
        userTextField.text = "Please enter username"
        userTextField.borderStyle = .roundedRect
        userTextField.layer.cornerRadius = 30
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.textColor = .gray
        userTextField.snp.makeConstraints{
            $0.top.equalTo(userLabel.snp.bottom).offset(5)
            $0.leading.trailing.equalToSuperview().inset(50)
        }
        
        passLabel.text = "Password"
        passLabel.font = .systemFont(ofSize: 15)
        passLabel.snp.makeConstraints{
            $0.top.equalTo(userTextField.snp.bottom).offset(50)
            $0.leading.equalToSuperview().offset(50)
        }
            
        passTextField.text = "Please enter password"
        passTextField.borderStyle = .roundedRect
        passTextField.layer.cornerRadius = 30
        passTextField.font = .systemFont(ofSize: 15)
        passTextField.textColor = .gray
        passTextField.snp.makeConstraints{
            $0.top.equalTo(passLabel.snp.bottom).offset(5)
            $0.leading.trailing.equalToSuperview().inset(50)
        }
        
        confLabel.text = "Password"
        confLabel.font = .systemFont(ofSize: 15)
        confLabel.snp.makeConstraints{
            $0.top.equalTo(passTextField.snp.bottom).offset(50)
            $0.leading.equalToSuperview().offset(50)
        }
            
        confTextField.text = "Please enter password"
        confTextField.borderStyle = .roundedRect
        confTextField.layer.cornerRadius = 30
        confTextField.font = .systemFont(ofSize: 15)
        confTextField.textColor = .gray
        confTextField.snp.makeConstraints{
            $0.top.equalTo(confLabel.snp.bottom).offset(5)
            $0.leading.trailing.equalToSuperview().inset(50)
        }
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.darkGray, for: .normal)
        saveButton.backgroundColor = .white
        saveButton.snp.makeConstraints{
            $0.top.equalTo(confTextField.snp.bottom).offset(40)
            $0.centerX.equalTo(view)
        }

        imageBack.image = UIImage(named: "ImageLog")
        imageBack.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
        // Do any additional setup after loading the view.
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
