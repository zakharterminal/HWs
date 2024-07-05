//
//  LogInViewController.swift
//  PetrovZA_HW_8
//
//  Created by zakhar terminal on 3.07.24.
//

import UIKit
import SnapKit

class LogInViewController: UIViewController {

    lazy var headLabel = UILabel()
    lazy var userLabel = UILabel()
    lazy var passLabel = UILabel()
    lazy var userTextField = UITextField()
    lazy var passTextField = UITextField()
    lazy var logButton = UIButton()
    lazy var regButton = UIButton()
    lazy var imageBack = UIImageView()
  

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageBack)
        view.addSubview(headLabel)
        view.addSubview(userLabel)
        view.addSubview(userTextField)
        view.addSubview(passLabel)
        view.addSubview(passTextField)
        view.addSubview(logButton)
        view.addSubview(regButton)


        
        headLabel.text = "My Home Control"
        headLabel.font = .systemFont(ofSize: 35)
        headLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(110)
            $0.centerX.equalTo(view)
        }
        
        userLabel.text = "Username"
        userLabel.font = .systemFont(ofSize: 15)
        userLabel.snp.makeConstraints{
            $0.top.equalTo(headLabel.snp.bottom).offset(110)
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
        
        logButton.setTitle("Log in", for: .normal)
        logButton.setTitleColor(.darkGray, for: .normal)
        logButton.backgroundColor = .white
        logButton.snp.makeConstraints{
            $0.top.equalTo(passTextField.snp.bottom).offset(40)
            $0.centerX.equalTo(view)
        }

        regButton.setTitle("register", for: .normal)
        regButton.setTitleColor(.gray, for: .normal)
        regButton.backgroundColor = .white
        regButton.snp.makeConstraints{
            $0.bottom.equalToSuperview().offset(-40)
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
