//
//  ViewController.swift
//  ClassExercise1
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blockToAnimate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view.
        
//        let viewToAnimate = UIView(frame: CGRect(x: 0, y: 0, width: 75, height: 75))
//        viewToAnimate.backgroundColor = UIColor.blue
//        view.addSubview(viewToAnimate)


       animateX()
        //animateY()
        
        
        
        
        
    
        
        
        
        
    }

    private func constructPositionAnimation(startingPoint: CGPoint, endPoint: CGPoint, animationDuration: Double, position: String) -> CABasicAnimation {
        let positionAnimation = CABasicAnimation(keyPath: position)
        positionAnimation.fromValue = NSValue(cgPoint: startingPoint)
        positionAnimation.toValue = NSValue(cgPoint: endPoint)
        positionAnimation.duration = animationDuration
//        positionAnimation.autoreverses = true
//        positionAnimation.repeatCount = 1
        positionAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        return positionAnimation
    }
    
    
    func animateX()
    {
        let startPoint = CGPoint(x: self.view.frame.minX + 30, y: self.view.frame.minY + 30)
               let endPoint = CGPoint(x:self.view.frame.minX + 30 , y: (self.view.frame.maxY - 30))
               let duration: Double = 4.0

        let positionAnimation = constructPositionAnimation(startingPoint: startPoint, endPoint: endPoint, animationDuration: duration, position: "position")

               //viewToAnimate.layer.add(positionAnimation, forKey: "position")
               blockToAnimate.layer.add(positionAnimation, forKey: "position")
        animateY()
        
    }
    func animateY()
    {
        let endPoint1 = CGPoint(x: self.view.frame.maxX - 30, y: self.view.frame.maxY - 30)
        let startPoint1 = CGPoint(x:self.view.frame.minX + 30 , y: (self.view.frame.maxY - 30))
        let duration1: Double = 4.0
        
        let positionAnimation1 = constructPositionAnimation(startingPoint: startPoint1, endPoint: endPoint1, animationDuration: duration1,position: "position1")
        
        blockToAnimate.layer.add(positionAnimation1, forKey: "position")
    }
}

