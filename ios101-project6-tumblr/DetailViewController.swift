//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Henry Ingraham on 10/24/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var posterImageView: UIImageView!

    @IBOutlet weak var summaryLabel: UITextView!
    
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        summaryLabel.text = post.caption
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: posterImageView)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
