//
//  LoginSignUpVC.swift
//  FoodRecipe
//
//  Created by mac on 18/05/2021.
//

import UIKit

class LoginSignUpVC: UIViewController {

    // uiView properties
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var signUpBTN: UIButton!
    @IBOutlet weak var dontHaveAccount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setUpProperties()
    }
    //Sets Up the UI Elements
    func setUpProperties(){
        
        // login Button
        let orange = customColor(withFarme: loginBTN.frame).getOrangeColor()
        loginBTN.layer.backgroundColor = orange.cgColor
        loginBTN.layer.cornerRadius = loginBTN.layer.frame.height/2
        
        //Spacing
        let space = 1.5
        let btnAttributed = NSMutableAttributedString(string: (loginBTN.titleLabel?.text)!)
        btnAttributed.addAttribute(kCTKernAttributeName as NSAttributedString.Key, value: space, range: NSMakeRange(0, btnAttributed.length))
        loginBTN.setAttributedTitle(btnAttributed, for: .normal)
       
        let labelAttributed = NSMutableAttributedString(string: (loginBTN.titleLabel?.text)!)
        labelAttributed.addAttribute(kCTKernAttributeName as NSAttributedString.Key, value: space, range: NSMakeRange(0, labelAttributed.length))
        dontHaveAccount.attributedText = labelAttributed
        
        // login Button
        signUpBTN.layer.borderWidth = 2
        signUpBTN.layer.borderColor = orange.cgColor
        signUpBTN.layer.cornerRadius = signUpBTN.layer.frame.height/2

        let signUpAttributedString = NSMutableAttributedString(string: (loginBTN.titleLabel?.text)!)
        signUpAttributedString.addAttribute(kCTKernAttributeName as NSAttributedString.Key, value: space, range: NSMakeRange(0, signUpAttributedString.length))
        signUpBTN.setAttributedTitle(signUpAttributedString, for: .normal)
    }
    
    @IBAction func loginTapped(_ sender: Any) {
    }
    @IBAction func signUpTapped(_ sender: Any) {
    }
    
}
