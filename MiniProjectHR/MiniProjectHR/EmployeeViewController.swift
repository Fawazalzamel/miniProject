//
//  EmployeeViewController.swift
//  MiniProjectHR
//
//  Created by Fawaz Alzamel on 29/02/2024.
//

import UIKit
import SnapKit
class EmployeeViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let fullNameLabel = UILabel()
    let salaryLabel = UILabel()
    let emailLabel = UILabel()
    let phoneNumberLabel = UILabel()
    let ibanLabel = UILabel()
    
    var recivePicture:String?
    var reciveFullName:String?
    var reciveSalary:String?
    var reciveEmail:String?
    var recivePhoneNumber:String?
    var reciveIban:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Employee Details"
        
        view.addSubview(profileImageView)
        view.addSubview(fullNameLabel)
        view.addSubview(salaryLabel)
        view.addSubview(emailLabel)
        view.addSubview(phoneNumberLabel)
        view.addSubview(ibanLabel)
        view.backgroundColor = .white
        setUpUI()
        setupNavigationBar()
        
    }
    
    func setUpUI(){
        
        profileImageView.image = UIImage(named: recivePicture ?? "")
        profileImageView.contentMode = .scaleToFill
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview().offset(0)
            
        }
        
        
        
        
        fullNameLabel.text = "Full Name: \( reciveFullName ?? "")"
        
        fullNameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview().offset(0)
            make.width.height.equalTo(20)
            
        }
        
        salaryLabel.text = "Salary: \(reciveSalary ?? "")"
        
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview().offset(0)
            make.width.height.equalTo(20)
        }
        
        
        emailLabel.text = "Email: \(reciveEmail ?? "")"
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview()
            make.width.height.equalTo(20)
        }
        
        phoneNumberLabel.text = "Phone Number: \(recivePhoneNumber ?? "")"
        
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
            make.width.height.equalTo(20)
        }
        
        ibanLabel.text = "IBAN: \(reciveIban ?? "")"
        
        ibanLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
            make.width.height.equalTo(20)
        }
      
    }
    
    func setupNavigationBar() {
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "lasso"),
            style: .plain,
            target: self,
            action: #selector(instructionsTapped)
        )
        navigationItem.rightBarButtonItem?.tintColor = UIColor.red
    }
    

    
    @objc func instructionsTapped() {
        let thirdVC = InstructionsViewController()
        thirdVC.modalPresentationStyle = .popover
        self.present(thirdVC, animated: true, completion: nil)
    }

}
