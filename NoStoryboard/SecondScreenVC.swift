//
//  SecondScreenVC.swift
//  NoStoryboard
//
//  Created by lucas.v.moraes on 09/11/2018.
//  Copyright © 2018 lucas.v.moraes. All rights reserved.
//

import UIKit

class SecondScreenVC: UIViewController {

    let imagelogo = UIImageView()
    let swiftImage = UIImage(named: "swiftLogo.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: self, action: nil)
        configComponents()
    }
    
    func configComponents() {
        
        imagelogo.image = swiftImage
        imagelogo.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(imagelogo)
        configConstraintsOfComponents()
    }
    
    func configConstraintsOfComponents() {
        
        imagelogo.translatesAutoresizingMaskIntoConstraints = false
        imagelogo.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imagelogo.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imagelogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imagelogo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
