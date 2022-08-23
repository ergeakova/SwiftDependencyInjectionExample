//
//  ViewController.swift
//  SwiftDependencyInjectionExample
//
//  Created by Erge Gevher Akova on 23.08.2022.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    
    //Swinject
    let container: Container = {
        let container = Container()
        container.register(BackgroundProviding.self) { resolver in
            return BackgroundProviding()
        }
        
        container.register(AnotherVC.self) { resolver in
            let vc = AnotherVC(provider: resolver.resolve(BackgroundProviding.self))
            return vc
        }
        
        
        return container
    }()
    

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
        if let viewController = container.resolve(AnotherVC.self){
            present(viewController, animated: true)
        }
    }

}

