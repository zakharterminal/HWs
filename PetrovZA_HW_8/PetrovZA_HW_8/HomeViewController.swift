//
//  HomeViewController.swift
//  PetrovZA_HW_8
//
//  Created by zakhar terminal on 4.07.24.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    lazy var headLabel = UILabel()
    lazy var secLabel = UILabel()
    lazy var homeLabel = UILabel()
    lazy var lightsLabel = UILabel()
    lazy var doorLabel = UILabel()
    lazy var acLabel = UILabel()
    lazy var tempLabel = UILabel()
    lazy var lightsSwich = UISegmentedControl(items: [ "On" , "Off" ])
    lazy var doorSwich = UISegmentedControl(items: [ "Lock" , "Unlock" ])
    lazy var acSwich = UISegmentedControl(items: [ "Auto" , "On" , "Off" ])
    lazy var tempSlider = UISlider()
    lazy var alarmButton = UIButton()
    lazy var imageBack = UIImageView()
    lazy var tempSliderLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageBack)
        view.addSubview(headLabel)
        view.addSubview(secLabel)
        view.addSubview(homeLabel)
        view.addSubview(lightsLabel)
        view.addSubview(lightsSwich)
        view.addSubview(doorLabel)
        view.addSubview(acLabel)
        view.addSubview(tempLabel)
        view.addSubview(doorSwich)
        view.addSubview(acSwich)
        view.addSubview(tempSlider)
        view.addSubview(alarmButton)
        view.addSubview(tempSliderLabel)
        
        
        headLabel.text = "Welcome, user12314"
        headLabel.font = .systemFont(ofSize: 30)
        headLabel.snp.makeConstraints{
            $0.top.equalTo(view).offset(70)
            $0.leading.equalToSuperview().offset(30)
        }
        
        secLabel.text = "Appartment control page"
        secLabel.font = .systemFont(ofSize: 20)
        secLabel.snp.makeConstraints{
            $0.top.equalTo(headLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
        }
        
        homeLabel.text = "🏠"
        homeLabel.font = .systemFont(ofSize: 20)
        homeLabel.snp.makeConstraints{
            $0.top.equalTo(secLabel.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(30)
        }
        
        lightsLabel.text = "Lights"
        lightsLabel.font = .systemFont(ofSize:15)
        lightsLabel.snp.makeConstraints{
            $0.top.equalTo(homeLabel.snp.bottom).offset(23)
            $0.leading.equalToSuperview().offset(30)
        }
        
        lightsSwich.snp.makeConstraints{
            $0.top.equalTo(lightsLabel.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(30)
        }
        
        doorLabel.text = "Door"
        doorLabel.font = .systemFont(ofSize:15)
        doorLabel.snp.makeConstraints{
            $0.top.equalTo(lightsSwich.snp.bottom).offset(17)
            $0.leading.equalToSuperview().offset(30)
        }
        
        doorSwich.snp.makeConstraints{
            $0.top.equalTo(doorLabel.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(30)
        }
        
        doorLabel.text = "Door"
        doorLabel.font = .systemFont(ofSize:15)
        doorLabel.snp.makeConstraints{
            $0.top.equalTo(lightsSwich.snp.bottom).offset(17)
            $0.leading.equalToSuperview().offset(30)
        }
        
        doorSwich.snp.makeConstraints{
            $0.top.equalTo(doorLabel.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(30)
        }
        
        acLabel.text = "A/C"
        acLabel.font = .systemFont(ofSize:15)
        acLabel.snp.makeConstraints{
            $0.top.equalTo(doorSwich.snp.bottom).offset(17)
            $0.leading.equalToSuperview().offset(30)
        }
        
        acSwich.snp.makeConstraints{
            $0.top.equalTo(acLabel.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(30)
        }
        
        tempLabel.text = "Temperature"
        tempLabel.font = .systemFont(ofSize:15)
        tempLabel.snp.makeConstraints{
            $0.top.equalTo(acSwich.snp.bottom).offset(17)
            $0.leading.equalToSuperview().offset(30)
        }
        
        tempLabel.text = "Temperature"
        tempLabel.textColor = .black
        tempSlider.minimumValue = -30
        tempSlider.maximumValue = 30
        tempSlider.isContinuous = true
        tempSlider.tintColor = .gray
        tempSlider.maximumTrackTintColor = .darkGray
        tempSlider.value = 0
        
        tempSlider.translatesAutoresizingMaskIntoConstraints = false
        tempSlider.topAnchor.constraint(equalTo: tempLabel.bottomAnchor, constant: 10).isActive = true
        tempSlider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        tempSlider.widthAnchor.constraint(equalToConstant: 150).isActive = true
        tempSlider.minimumValue = -30
        tempSlider.maximumValue = 30
        tempSlider.isContinuous = true
        tempSlider.tintColor = .gray
        tempSlider.maximumTrackTintColor = .darkGray
        tempSlider.value = 0
        tempSlider.addTarget(self, action: #selector(self.sliderValueChanged(_:)), for: .valueChanged)
                
        tempSliderLabel.translatesAutoresizingMaskIntoConstraints = false
        tempSliderLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor, constant: 10).isActive = true
        tempSliderLabel.leadingAnchor.constraint(equalTo: tempSlider.trailingAnchor, constant: 10).isActive = true
        tempSliderLabel.text = "0 ℃"
        
        imageBack.image = UIImage(named: "ImageLog")
        imageBack.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func sliderValueChanged(_ sender: UISlider!){
            tempSliderLabel.text = String(format: "%.0f ℃", sender.value)
            
        }
    @objc public func pressedButton(){
            print("Button is push")
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
