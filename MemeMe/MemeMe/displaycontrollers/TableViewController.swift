//
//  TableViewController.swift
//  MemeMe
//
//  Created by Apple on 18/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(onAddClick))
    }
    
    @objc private func onAddClick() {
        performSegue(withIdentifier: "ShowMeme", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let memeCell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell") as! TableViewCell
        let meme = memes[indexPath.row]
        memeCell.memeImageView.image = meme.memedImage
        memeCell.label.text = meme.topText + ", " + meme.bottomText
        return memeCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
