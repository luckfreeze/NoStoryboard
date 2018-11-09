//
//  FirstScreenViewController.swift
//  NoStoryboard
//
//  Created by lucas.v.moraes on 08/11/2018.
//  Copyright © 2018 lucas.v.moraes. All rights reserved.
//

import UIKit

class FirstScreenVC: UIViewController {

    // First, declare your UI components
    var nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        navigationController?.navigationBar.topItem?.title = "View Code !"
        
        // Second, call the configurator
        configNextButton()
    }
    
    // Third, configure the UI
    func configNextButton() {
        nextButton.backgroundColor = UIColor.white
        nextButton.layer.cornerRadius = 5
        nextButton.setTitle("Press Me !", for: UIControl.State.normal)
        nextButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        nextButton.addTarget(self, action: #selector(handleNextButton), for: UIControl.Event.touchUpInside)
        
        view.addSubview(nextButton)
        configConstraintsNextButton()
    }
    
    // Fourth, configure the constraints
    func configConstraintsNextButton() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
    }
    
    // Fiveh, handle action of yout UI components
    @objc func handleNextButton() {
        print("Button Pressed")
        let vc = SecondScreenVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
