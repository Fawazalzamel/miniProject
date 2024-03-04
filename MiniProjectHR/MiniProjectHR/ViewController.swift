//
//  ViewController.swift
//  MiniProjectHR
//
//  Created by Fawaz Alzamel on 29/02/2024.
//

import UIKit
import SnapKit


class HomeViewController: UIViewController {
    

    let myTextField = UITextField()
    let myButton = UIButton(type: .system)
    
    
    let fullNameTextField = UITextField()
    let employeeSalaryTextField = UITextField()
    let emailTextField = UITextField()
    let phoneNumberTextField = UITextField()
    let iBANTextField = UITextField()
    
    var selectedImage = ""
    var selectedFullName = ""
    var selectedSalary = ""
    var selectedEmail = ""
    var selectedPhoneNumber = ""
    var selectedIBAN = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Enter Employee Details"

        view.backgroundColor = .white

        view.addSubview(myTextField)
        view.addSubview(fullNameTextField)
        view.addSubview(employeeSalaryTextField)
        view.addSubview(emailTextField)
        view.addSubview(phoneNumberTextField)
        view.addSubview(iBANTextField)
        view.addSubview(myButton)
        setUp()
        buttonsAction()
        
    }
    
    func buttonsAction(){
        
        myButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
    }
    
    func setUp(){
        fullNameTextField.placeholder = "Enter Full Name"
       
        fullNameTextField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        employeeSalaryTextField.placeholder = "Enter Salary"
       
        employeeSalaryTextField.snp.makeConstraints { make in
            make.top.equalTo(fullNameTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        emailTextField.placeholder = "Enter Email"
       
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(employeeSalaryTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        
        phoneNumberTextField.placeholder = "Enter Phone Number"
        
        phoneNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        iBANTextField.placeholder = "Enter IBAN"
        
        iBANTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        myTextField.placeholder = "Enter image name here"

        myTextField.snp.makeConstraints { make in
            make.top.equalTo(iBANTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        
        myButton.setTitle("Save Details", for: .normal)

        myButton.snp.makeConstraints { make in
            make.top.equalTo(myTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
        
        
        

    
    }
    
    @objc func saveButtonTapped() {
        
        //1- connection with 2nd VC
        //2-  make sure there are var's in 2nd VC to hold the data
        //3- transfer to 2nd VC
        
        let secondVC = EmployeeViewController()
        
        selectedImage = myTextField.text ?? ""
        selectedFullName = fullNameTextField.text ?? ""
        selectedSalary = employeeSalaryTextField.text ?? ""
        selectedEmail = emailTextField.text ?? ""
        selectedPhoneNumber =  phoneNumberTextField.text ?? ""
        selectedIBAN = iBANTextField.text ?? ""
        
        secondVC.recivePicture = selectedImage
        secondVC.reciveFullName = selectedFullName
        secondVC.reciveSalary = selectedSalary
        secondVC.reciveEmail = selectedEmail
        secondVC.recivePhoneNumber = selectedPhoneNumber
        secondVC.reciveIban = selectedIBAN
        
        self.navigationController?.pushViewController(secondVC, animated: true)
      }
}
