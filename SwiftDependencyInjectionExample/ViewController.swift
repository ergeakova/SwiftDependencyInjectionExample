//
//  ViewController.swift
//  SwiftDependencyInjectionExample
//
//  Created by Erge Gevher Akova on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 75))
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("Open Another VC", for: .normal)
        button.layer.cornerRadius = 20
        button.center = view.center
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(button)
        
    }

    @objc private func buttonClicked(){
    }

}

