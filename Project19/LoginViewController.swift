//
//  LoginViewController.swift
//  Project19
//
//  Created by Noah Woodward on 11/19/18.
//  Copyright © 2018 Paul Hudson. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
   
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        self.addSubviews()
        self.layoutButton()
        self.navigationController?.title = "Login"
        // Do any additional setup after loading the view.
    }
    
    func layoutButton(){
        loginButton.backgroundColor = UIColor.green
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 80).isActive = true
        loginButton.addTarget(self, action: #selector(self.loginButtonPressed(sender:)), for: .touchUpInside)
        
        
    }
    
    func addSubviews(){
        view.addSubview(loginButton)
    }
    
    @objc func loginButtonPressed(sender: UIButton){
       let mapViewController = ViewController()
       self.navigationController?.pushViewController(mapViewController, animated: true)
    }


}
