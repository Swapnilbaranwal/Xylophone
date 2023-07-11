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
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle ?? "no sound")
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 2.0
          }
    }
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource:soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}

