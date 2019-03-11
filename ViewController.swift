//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Bruno Magalhães on 01/11/18.
//  Copyright © 2018 Cybernetic Company of Milky Way. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex : Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateBallImage()
        
    }
    
    func updateBallImage() {
        
        //randomBallIndex = Int.random(in: 0 ... 4)
        randomBallIndex = Int.random(in: 1 ... 5)
        
        //ballImageView.image = UIImage(named: ballArray[randomBallIndex])
        //print(randomBallIndex)
        ballImageView.image = UIImage(named: "ball\(randomBallIndex)")
        
    }
}

