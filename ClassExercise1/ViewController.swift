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
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        moveDown()
    }

   func moveDown()
   {
        self.blockToAnimate.frame.origin.x = self.view.safeAreaInsets.left + 10
        self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.top
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                self.blockToAnimate.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom
            },
            completion:
            { finished in self.moveRight()
            })
    
    }
    
    func moveUp()
    {
        
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.bottom
            },
            completion: { finished in self.moveLeft()
            })
    }
    
    func moveLeft()
    {
        
        self.blockToAnimate.frame.origin.x = self.view.bounds.maxX - 50
        
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
            {
                        self.blockToAnimate.frame.origin.x =  self.view.safeAreaInsets.left + 10
                        
        
            },
            completion: { finished in self.moveDown()
            })
        }
    
    func moveRight()
    {
        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                    {
                        let guide = self.view.safeAreaLayoutGuide
                        let widht = guide.layoutFrame.size.width
                        self.blockToAnimate.frame.origin.x = widht - 50
                        print(self.view.bounds.maxX)
                        print(widht)
                        
        
                }, completion: { finished in
                    self.moveUp()
                }
           
        )
        
    }
    
}

