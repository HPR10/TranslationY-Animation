//
//  ViewController.swift
//  TranslationY Animation
//
//  Created by Hugo Pinheiro on 06/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // ImageView with Image
        let imageV = UIImageView(frame: CGRect(x: 50, y: 100, width: 150, height: 100))
        imageV.center = view.center
        imageV.image = UIImage(named: "devImage", in: Bundle(for: type(of: self)), compatibleWith: nil)
        view.addSubview(imageV)

        // Scaling

        UIView.animate(withDuration: 1, delay: 0.0, options: [.autoreverse, .repeat], animations: {
            imageV.transform = CGAffineTransform(translationX: 0, y: 25)

        }) { (complete) in
            UIView.animate(withDuration: 1, animations: {
                imageV.transform = CGAffineTransform(translationX: 0, y: 25)
            })
            
            
        }

    }

}
