//
//  ViewController.swift
//  Lesson8
//
//  Created by Владимир Рузавин on 9/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    var animator: UIViewPropertyAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.animate()
    }
    
    private func animate() {
        let animator = UIViewPropertyAnimator(
            duration: 1, curve: .easeInOut) {
            self.animationView.transform = .init(translationX: 0, y: -100)
        }
        self.animator = animator
        self.animator?.pauseAnimation()
    }
    
    @IBOutlet weak var onValueChanged(_ sender: UISlider) {
    self.animate?.fractionComplete = CGFloat(sender.value)
    }
}
       /* UIView.animateKeyframes(withDuration: 2, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.3) {self.animationView.transform = .init(scaleX: 0.5, y: 0.5)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 1) {
                self.animationView.frame.origin.y += 100
            }
        }, completion: nil)
    }
    
    private func animate() {
    let animation = CABasicAnimation(keyPath: "opacity")
        animation.beginTime = CACurrentMediaTime() + 1
        animation.duration = 1
        animation.fromValue = 0.5
        animation.toValue = 0
        animation.fillMode = .removed
        animation.isRemovedOnCompletion = false
        
        self.animationView.layer.add(animation,forKey: nil)
    }
    
    @IBAction func unButtonPressed(_ sender: Any) {
        self.animate()
    }
    
}
 */
