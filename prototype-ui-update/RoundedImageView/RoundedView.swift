//
//  RoundedView.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/6/20.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    // MARK: IBInspectable properties
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            let maximumCornerRadius = min(frame.width, frame.height) / 2
            layer.cornerRadius = min(cornerRadius, maximumCornerRadius)
            layer.masksToBounds = cornerRadius > 0
            dropShadow()
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }

    @IBInspectable var shadowColor: UIColor = .clear {
        didSet {
            dropShadow()
        }
    }
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            dropShadow()
        }
    }
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            dropShadow()
        }
    }

    private func dropShadow () {
        layer.masksToBounds = false
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = shadowRadius

        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = true ? UIScreen.main.scale : 1
    }

}
