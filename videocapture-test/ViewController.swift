//
//  ViewController.swift
//  videocapture-test
//
//  Created by Rakeeb Hossain on 2019-06-18.
//  Copyright © 2019 Rakeeb Hossain. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

public class ViewController: UIViewController, FrameExtractorDelegate {
    
    var frameExtractor: FrameExtractor!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func flipButton(_ sender: UIButton) {
        frameExtractor.flipCamera()
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        frameExtractor = FrameExtractor()
        frameExtractor.delegate = self
    }
    
    func captured(image: UIImage) {
        // begin image processing here on image: UIImage 
        imageView.image = image
    }
    
}

