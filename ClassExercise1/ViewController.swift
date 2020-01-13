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
        
        
        let pointDownY = self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
        
        let guide = self.view.safeAreaLayoutGuide
        let widht = guide.layoutFrame.size.width
        let pointRightX  = widht - 35
        
        let pointLeftX = self.view.safeAreaInsets.left + 10
        
        let pointUpY = self.view.safeAreaInsets.bottom
        
        
        
        
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
            
        })
    
    }
    
    
    @objc func swiped(gesture: UISwipeGestureRecognizer) {
        
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            sRight  = true
            sLeft = false
            
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                    {
                        self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
                    },
                    completion:
                   { finished in
                    
                })
                
            //self.rotateAnticlockwise()
          
        case UISwipeGestureRecognizer.Direction.left:
            sLeft = true
            sRight = false
            self.rotateClockwise()
        default:
            break
        }
    }
    
 func rotateClockwise()
 {
    
     func moveDown()
       {
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                {
                    self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - 25
                },
                completion:
               { finished in

                self.count += 1
                print(self.count)
                moveLeft()
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

                            self.count += 1
                             print(self.count)
                            moveDown()
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

                    self.count += 1
                     print(self.count)
                    moveRight()
                    
                })
        }
        
        //function to move left
        func moveLeft()
        {
            
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                {
                            self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                        
                            
            
                },
                           completion: { finished in
                            self.count = 0
                            print(self.count)
                            self.rotateAnticlockwise()

                })
            }
    moveUp()
    
    
    }
    
    func rotateAnticlockwise()
    {
        
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
                                moveUp()
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
                        moveLeft()
                    })
            }
            
            //function to move left
            func moveLeft()
            {
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveEaseOut, animations:
                    {
                                self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                            
                                
                
                    },
                               completion: { finished in
                               moveDown()
 
                    })
    }
    
    moveRight()
    }
    
    
    
}

