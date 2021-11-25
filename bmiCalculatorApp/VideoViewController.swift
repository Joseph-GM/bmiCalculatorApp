//
//  VideoViewController.swift
//  bmiCalculatorApp
//
//  Created by Joseph Kim on 11/26/21.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnVidePlay(_ sender: UIButton) {
    
        let file:String? = Bundle.main.path(forResource: "bmiMovie", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
    
}
