//
//  VideoVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/arts/30.json?api-key=029bb2ef5c76452bac5b2c3ca06893dd"

        let urlvideo = URL(string: ligaVideo)
               
        if let urlvideo = urlvideo {
          let asset = AVAsset(url: urlvideo)
          let item = AVPlayerItem(asset: asset)
          let miPlayer = AVPlayer(playerItem: item)
                    
          self.player = miPlayer
            miPlayer.play()
        }
    
        
        
        
        
    }

    
    

   }
