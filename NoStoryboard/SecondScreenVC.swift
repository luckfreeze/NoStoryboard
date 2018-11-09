//
//  SecondScreenVC.swift
//  NoStoryboard
//
//  Created by lucas.v.moraes on 09/11/2018.
//  Copyright © 2018 lucas.v.moraes. All rights reserved.
//

import UIKit

class SecondScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: self, action: nil)
    }
}
