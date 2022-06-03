//
//  ViewController.swift
//  Magic Ball
//
//  Created by Valery Keplin on 3.06.22.
//

import UIKit

let arrayOfBalls = [#imageLiteral(resourceName: "Ball_2"), #imageLiteral(resourceName: "Ball_3"), #imageLiteral(resourceName: "Ball_4"), #imageLiteral(resourceName: "Ball_5"), #imageLiteral(resourceName: "Ball_6"), #imageLiteral(resourceName: "Ball_7")]

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ballImage.image = UIImage(imageLiteralResourceName: "Ball_1")
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        ballImage.image = arrayOfBalls.randomElement()
    }
}
