//
//  AnimationView.swift
//  Lesson8
//
//  Created by Владимир Рузавин on 9/30/21.
//

import UIKit

class AnimationView: UIView {
    
    var shapeLayer: CAShapeLayer?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: .init(x: 90, y: 10))
        path.addLine(to: .init(x: 90, y: 90))
        path.close()
        path.stroke()
        self.addShapeLayer(path: path)
    }
    
    func animate() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 1.5
        animation.repeatCount = .infinity
        animation.timingFunction = .some(.init(controlPoints: 1, 0, 1, 0))
        self.shapeLayer?.add(animation, forKey: nil)
    }
    
    private func addShapeLayer(path: UIBezierPath) {
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.strokeColor = UIColor.yellow.cgColor
        layer.strokeStart = 0.1
        layer.strokeEnd = 0.7
        layer.lineWidth = 5
        layer.fillColor = .none
        self.layer.addSublayer(layer)
        self.shapeLayer = layer
    }
}
