//
//  ViewController.swift
//  Media
//
//  Created by Jose Luis Romero on 12/13/18.
//  Copyright © 2018 Jose Luis Romero. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playVideo(_ sender: AnyObject) {
        // TODO - play video code here
        // 1.- define the source -> URL with the video
        guard let url = URL(string: "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8") else {
            // This is not valid as it is not streaming
//        guard let url = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4") else {
            return
        }
        
        // 2.- Get an instance of player with the source
        let player = AVPlayer(url: url)

        // 3.- Inscate of video player controller to play our player with our content
        let controller = AVPlayerViewController()
        controller.player = player
        
        // 4 .- Present the video player on screen with a modal
        present(controller, animated: true) {
            player.play()
        }
        
    }
    


}

