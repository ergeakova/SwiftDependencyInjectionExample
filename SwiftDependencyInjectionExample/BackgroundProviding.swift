//
//  BackgroundProviding.swift
//  SwiftDependencyInjectionExample
//
//  Created by Erge Gevher Akova on 23.08.2022.
//

import Foundation
import UIKit

class BackgroundProviding: BackgroundProvider{
    var backgroundColor: UIColor {
        let colors: [UIColor] = [.systemPink, .systemGreen, .systemMint, .systemCyan]
        return colors.randomElement()!
    }
}
