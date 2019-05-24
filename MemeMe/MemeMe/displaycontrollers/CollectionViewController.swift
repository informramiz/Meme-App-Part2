//
//  CollectionViewController.swift
//  MemeMe
//
//  Created by Apple on 19/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    private static let showMemeSegueIdentifier = "ShowMeme"
    
    private var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(onAddClick))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
    @objc private func onAddClick() {
        performSegue(withIdentifier: CollectionViewController.showMemeSegueIdentifier, sender: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let memeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.row]
        memeCell.memeImageView.image = meme.memedImage
        return memeCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: CollectionViewController.showMemeSegueIdentifier, sender: memes[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let meme = sender as? Meme
        
        if let meme = meme {
            let destination = segue.destination as! CreateMemeViewController
            destination.meme = meme
        }
    }
}
