//
//  CarSoundViewController.swift
//  CarSounds
//
//  Created by scott on 5/12/16.
//  Copyright © 2016 scott. All rights reserved.
//

import UIKit
import AVFoundation

class CarSoundViewController: UIViewController {
    
    var car: Car?
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var carPicture: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            if let bundle = NSBundle.mainBundle().pathForResource(car?.carsound, ofType: "mp3") {
                let alertSound = NSURL(fileURLWithPath: bundle)
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                audioPlayer = try AVAudioPlayer(contentsOfURL: alertSound)
                audioPlayer.prepareToPlay()
            }
        } catch {
            print(error)
        }
        carName.text = car?.carname
        
        carPicture.image = UIImage(named: (car?.carpicture)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func playSound(sender: UIButton) {
        audioPlayer.play()
    }
}

