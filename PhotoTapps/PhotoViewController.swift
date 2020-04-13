//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Andrey on 03.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
        
    }
    

    @IBAction func shareAction(_ sender: Any) {
        
        let shared = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shared.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Ok")
            }
        }
        
        present(shared, animated: true, completion: nil)
        
        
    }
    

}
