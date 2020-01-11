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
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
            {
                self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
            },
            completion:
           { finished in
//            if self.sLeft == true
//            {
//                self.moveLeft()
//            }
            
            
    })
    
    }
    
//    //function to move right
//    func moveRight()
//    {
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
//                    {
//                        let guide = self.view.safeAreaLayoutGuide
//                        let widht = guide.layoutFrame.size.width
//                        self.blockToAnimate.frame.origin.x = widht - 35
//
//                    }, completion: { finished in
//                        if self.sRight == true{
//                        self.moveUp()
//                        }
//                        if self.sLeft == true
//                        {
//                        self.moveDown()
//                        }
//                    })
//    }
//
//    //function to move up
//    func moveUp()
//    {
//
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
//            {
//                self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.bottom
//            },
//            completion: { finished in
//                if self.sRight == true{
//                self.moveLeft()
//                }
//                if self.sLeft == true
//                {
//                self.moveRight()
//                }
//
//            })
//    }
//
//    //function to move left
//    func moveLeft()
//    {
//
//        //self.blockToAnimate.frame.origin.x = self.view.bounds.maxX - 40
//
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
//            {
//                        self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
//
//
//
//            },
//                       completion: { finished in
//                        if self.sRight == true
//                       {
//                       self.moveDown()
//                       }
////                        else
////                        {
////                            if self.sRight == true
////                            {
////                            self.moveUp()
////                            }
////                        }
//
//
//
//
//            })
//        }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer) {
        
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            sRight  = true
            sLeft = false
//            print("right swipe")
//            self.count = 0
//            //self.moveRight()
            self.rotateAnticlockwise()
           //self.rotateLeft()
        case UISwipeGestureRecognizer.Direction.left:
            sLeft = true
            sRight = false
//            print("left swipe")
//            self.count = 1
            self.rotateClockwise()
            //self.rotateLeft()
            //self.rotateRight()
        default:
            break
        }
    }
    
 func rotateClockwise()
 {
    
    //rotateAnticlockwise()
     func moveDown()
       {
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                {
                    self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
                },
                completion:
               { finished in
//                if self.sLeft == true
//                {
                    moveLeft()
//                }
                
                
        })
        
        }
        
        //function to move right
        func moveRight()
        {
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                        {
                            let guide = self.view.safeAreaLayoutGuide
                            let widht = guide.layoutFrame.size.width
                            self.blockToAnimate.frame.origin.x = widht - 35
        
                        }, completion: { finished in
//                            if self.sRight == true{
//                            self.moveUp()
//                            }
//                            if self.sLeft == true
//                            {
                            moveDown()
                            //}
                        })
        }
        
        //function to move up
        func moveUp()
        {
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                {
                    self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.bottom
                },
                completion: { finished in
//                    if self.sRight == true{
//                    self.moveLeft()
//                    }
//                    if self.sLeft == true
//                    {
                    moveRight()
//                    }
                    
                })
        }
        
        //function to move left
        func moveLeft()
        {
            
            //self.blockToAnimate.frame.origin.x = self.view.bounds.maxX - 40
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                {
                            self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                        
                            
            
                },
                           completion: { finished in
                            self.rotateAnticlockwise()
//                            if self.sRight == true
//                           {
//                           self.moveDown()
//                           }
    //                        else
    //                        {
    //                            if self.sRight == true
    //                            {
    //                            self.moveUp()
    //                            }
    //                        }
                            
                            
                            
                        
                })
            }
    moveUp()
    
    
    }
    
    func rotateAnticlockwise()
    {
        
        
        //rotateClockwise()
         //function to move down
           func moveDown()
           {
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                    {
                        self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
                    },
                    completion:
                   { finished in
                    self.rotateClockwise()
//                    if self.sLeft == true
//                    {
//                        self.moveLeft()
//                    }
                    
                    
            })
            
            }
            
            //function to move right
            func moveRight()
            {
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                            {
                                let guide = self.view.safeAreaLayoutGuide
                                let widht = guide.layoutFrame.size.width
                                self.blockToAnimate.frame.origin.x = widht - 35
            
                            }, completion: { finished in
                                //if self.sRight == true{
                                moveUp()
//                                }
//                                if self.sLeft == true
//                                {
//                                self.moveDown()
//                                }
                            })
            }
            
            //function to move up
            func moveUp()
            {
                
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                    {
                        self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.bottom
                    },
                    completion: { finished in
//                        if self.sRight == true{
                        moveLeft()
//                        }
//                        if self.sLeft == true
//                        {
//                        self.moveRight()
//                        }
                        
                    })
            }
            
            //function to move left
            func moveLeft()
            {
                
                //self.blockToAnimate.frame.origin.x = self.view.bounds.maxX - 40
                
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                    {
                                self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                            
                                
                
                    },
                               completion: { finished in
//                                if self.sRight == true
//                               {
                               moveDown()
                               //}
        //                        else
        //                        {
        //                            if self.sRight == true
        //                            {
        //                            self.moveUp()
        //                            }
        //                        }
                                
                                
                                
                            
                    })
    }
    
    moveRight()
    }
    
    
    
}

