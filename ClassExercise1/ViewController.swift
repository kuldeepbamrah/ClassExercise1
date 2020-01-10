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
    
    var count = 0
    var sRight = false
    var sLeft = false
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        moveDown()
    }

    //function to move down
   func moveDown()
   {
//        self.blockToAnimate.frame.origin.x = self.view.safeAreaInsets.left + 10
//        self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.top
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom
            },
            completion:
           { finished in
            if self.count == 1
            {
                self.moveLeft()
            }
            })
    
    }
    
    //function to move right
    func moveRight()
    {
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                    {
                        let guide = self.view.safeAreaLayoutGuide
                        let widht = guide.layoutFrame.size.width
                        self.blockToAnimate.frame.origin.x = widht - 50
    
                    }, completion: { finished in
                        if self.count == 0{
                        self.moveUp()
                        }
                        else
                        {
                        self.moveDown()
                        }
                    })
    }
    
    //function to move up
    func moveUp()
    {
        
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.bottom
            },
            completion: { finished in
                if self.count == 0{
                self.moveLeft()
                }
                else
                {
                self.moveRight()
                }
            })
    }
    
    //function to move left
    func moveLeft()
    {
        
        self.blockToAnimate.frame.origin.x = self.view.bounds.maxX - 50
        
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                        self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                        
        
            },
                       completion: { finished in
                        if self.count == 0
                       {
                       self.moveDown()
                       }
                        else
                        {
                            if self.sRight == true
                            {
                            self.moveUp()
                            }
                        }
                    
            })
        }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer) {
        
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            sRight  = true
            sLeft = false
            print("right swipe")
            self.count = 0
            self.moveRight()
        case UISwipeGestureRecognizer.Direction.left:
            sLeft = true
            sRight = false
            print("left swipe")
            self.count = 1
            self.moveUp()
        default:
            break
        }
    }
    
    
    
    
    
    
}

