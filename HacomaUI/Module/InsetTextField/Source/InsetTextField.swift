//
//  InsetTextField.swift
//  InsetTextField
//
//  Created by hacoma on 2020/10/11.
//

import UIKit

public class InsetTextField: UITextField {
    
    @IBInspectable
    public var top: CGFloat = 0
    
    @IBInspectable
    public var left: CGFloat = 0
    
    @IBInspectable
    public var bottom: CGFloat = 0
    
    @IBInspectable
    public var right: CGFloat = 0
    
    private var insets: UIEdgeInsets {
        return UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public convenience init(frame: CGRect, insets: UIEdgeInsets) {
        self.init(frame: frame)
        top = insets.top
        left = insets.left
        bottom = insets.bottom
        right = insets.right
    }
    
    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    public override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
}
