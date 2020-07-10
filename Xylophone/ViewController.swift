//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

     
   
    @IBAction func keyPressed(_ sender: UIButton) {
        
        //parameter goes intp the sound function and the name is based on the sender title from the button being pressed
       
        playSound(soundName: sender.currentTitle!)
    }
    

//enter an in put paramter called soundName - with a datatype of String
    
//make sure to add the input parameter to the url Resource
    
    func playSound(soundName: String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()

        }
    
}

