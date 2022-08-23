//
//  AnotherVC.swift
//  SwiftDependencyInjectionExample
//
//  Created by Erge Gevher Akova on 23.08.2022.
//

import UIKit

class AnotherVC: UIViewController {
    private let provider: BackgroundProvider?
    
    init(provider: BackgroundProvider?){
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = provider?.backgroundColor ?? .white
    }
    


}
