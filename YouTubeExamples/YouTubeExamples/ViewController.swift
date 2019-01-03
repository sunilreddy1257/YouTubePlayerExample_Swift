//
//  ViewController.swift
//  YouTubeExamples
//
//  Created by Sunil on 03/01/19.
//  Copyright © 2019 Sunil. All rights reserved.
//

import UIKit

import youtube_ios_player_helper

class ViewController: UIViewController, YTPlayerViewDelegate {

    @IBOutlet weak var playerView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let playsValue = ["playsinline" : 1]
        self.playerView.load(withVideoId: "uYu9VwlQldQ", playerVars: playsValue)
        self.playerView.delegate = self

    }

    func playerView(_ playerView: YTPlayerView, didChangeTo state: YTPlayerState) {
        switch state {
        case YTPlayerState.playing:
             print("Playing")
        case YTPlayerState.paused:
            print("Paused")
        case YTPlayerState.unstarted:
            print("UnStarted")
        case YTPlayerState.ended:
            print("Ended")
        default:
            print("Hello")
        }
    }

    @IBAction func stopAction(_ sender: Any) {
         self.playerView.stopVideo()
    }
    @IBAction func playAction(_ sender: Any) {
        self.playerView.playVideo()
    }

}

