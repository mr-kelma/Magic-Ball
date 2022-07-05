//
//  AnimationManager.swift
//  Magic Ball
//
//  Created by Valery Keplin on 5.07.22.
//

import UIKit

struct AnimationManager {
    let arrayOfBalls = [#imageLiteral(resourceName: "Ball_2"), #imageLiteral(resourceName: "Ball_3"), #imageLiteral(resourceName: "Ball_4"), #imageLiteral(resourceName: "Ball_5"), #imageLiteral(resourceName: "Ball_6"), #imageLiteral(resourceName: "Ball_7")]
    
    func animation(ballImage: UIImageView) {
        ballImage.animationDuration = 1.5
        ballImage.animationImages = arrayOfBalls.shuffled()
        ballImage.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            ballImage.stopAnimating()
        }
    }
}
