//
//  PathView.swift
//  PathDrawingDemo
//
//  Created by Ahmed Khalaf on 1/2/20.
//  Copyright © 2020 com.ahmedkhalaf. All rights reserved.
//

import UIKit

class PathView: UIView {
    
    func set(path: UIBezierPath, fillColor: UIColor, strokColor: UIColor, lineWidth: CGFloat) {
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = fillColor.cgColor
        shapeLayer.strokeColor = strokColor.cgColor
        shapeLayer.lineWidth = lineWidth
        
        animateFillColor()
        animateStrokeEnd()
    }
    
    private func animateFillColor() {
        let animation = CABasicAnimation(keyPath: "fillColor")
        animation.duration = 1
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        shapeLayer.add(animation, forKey: "fillAnimation")
    }
    private func animateStrokeEnd() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 1
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        shapeLayer.add(animation, forKey: "strokeAnimation")
    }
    
    private var shapeLayer: CAShapeLayer {
        return layer as! CAShapeLayer
    }
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
}
