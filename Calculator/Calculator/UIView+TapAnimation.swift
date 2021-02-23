//
//  UIView+TapAnimation.swift
//  Calculator
//
//  Created by Ольга Ботанова on 21.02.2021.
//

import UIKit

extension UIView {
    
    func tapAnimation(_ completionBlock: (() -> Void)? = nil) {
        
        isUserInteractionEnabled = false
        
        UIView.animate(withDuration: 0.1) {[weak self] in
            self?.transform = .init(scaleX: 0.95, y: 0.95)
        }
        
        UIView.animate(withDuration: 0.1,
                       delay: 0.1) {  [ weak self ] in
            self?.isUserInteractionEnabled = true
            self?.transform = .init(scaleX: 1, y: 1)
            completionBlock?()
        }
    }
}
