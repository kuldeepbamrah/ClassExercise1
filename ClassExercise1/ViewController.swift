//
//  ViewController.swift
//  ClassExercise1
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let viewToAnimate = UIView(frame: CGRect(x: 75, y: 75, width: 75, height: 75))
        viewToAnimate.backgroundColor = UIColor.blue
        view.addSubview(viewToAnimate)
        
        
        let startPoint = CGPoint(x: 0, y: 0)
        let endPoint = CGPoint(x: 0, y: 900)
        let duration: Double = 6.0
        
        let positionAnimation = constructPositionAnimation(startingPoint: startPoint, endPoint: endPoint, animationDuration: duration)
        
        viewToAnimate.layer.add(positionAnimation, forKey: "position")
    }

    private func constructPositionAnimation(startingPoint: CGPoint, endPoint: CGPoint, animationDuration: Double) -> CABasicAnimation {
        let positionAnimation = CABasicAnimation(keyPath: "position")
        positionAnimation.fromValue = NSValue(cgPoint: startingPoint)
        positionAnimation.toValue = NSValue(cgPoint: endPoint)
        positionAnimation.duration = animationDuration
        positionAnimation.autoreverses = true
        positionAnimation.repeatCount = Float.infinity
        positionAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        return positionAnimation
    }
}

