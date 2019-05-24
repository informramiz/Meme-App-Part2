//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Apple on 25/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    @IBOutlet weak var  imageView: UIImageView!
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = meme.memedImage
    }
}
