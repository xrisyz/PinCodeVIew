//
//  UIView_Extensions.swift
//  PinCode
//
//  Created by Chris Karani on 30/09/2018.
//  Copyright © 2018 Chris Karani. All rights reserved.
//

import UIKit

public extension UIView {
    /**
     Initializes a UIView object read for autoLayout
     return : Self
     */
    static func autoLayout() -> Self {
        let it = self.init()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }
    
    
    /**
     round the corners of the view
     - Parameter radius: THe rasous at which to curve the conrer
 */
    public func round(_ radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
    }

   
    
    /**
     Prepares the View for autolayout User
 */
    func autoLayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    /**
     Create and return a Random Color
     */
    func randomBackgroundColor() {
        let red = CGFloat.random(in: 1...255)
        let green = CGFloat.random(in: 1...255)
        let blue = CGFloat.random(in: 1...255)
        let alpha = CGFloat.random(in: 0.4...0.8)
        let color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
        self.backgroundColor = color
    }
    
    /**
     center this view inside its superView
     */
    
    func center() {
        if let view = superview {
            NSLayoutConstraint.activate([
                centerXAnchor.constraint(equalTo: view.centerXAnchor),
                centerYAnchor.constraint(equalTo: view.centerYAnchor),
                widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2),
                heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2)
                ])
        }
    }
}

public extension UIImage {
    static var asterix: UIImage {
        return UIImage(named: "asterisk")!
    }
}


