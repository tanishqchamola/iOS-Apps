//
//  ViewController.swift
//  Xylophone
//
//  Created by Tanishq Chamola on 27/01/2016.
//  Copyright © 2016 tanishqchamola. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    
    var audioPlayer: AVAudioPlayer!
    var array = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let tag = sender.tag
        playSound(t: tag)
        
    }
    
    func playSound(t: Int){
        let url = Bundle.main.url(forResource: array[t-1], withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        }catch {
            print(error)
        }
        audioPlayer.play()
    }
    
}

