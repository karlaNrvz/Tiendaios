//
//  File.swift
//  QuizApp
//
//  Created by Viamatica S.A. on 5/9/21.
//

import UIKit

@IBDesignable extension UITextField{
    
    @IBInspectable var borderWith:CGFloat{
    
    set{
        
        layer.borderWidth  = newValue
    }
    get{
        return layer.borderWidth
        
    }
    
    
    
}

    @IBInspectable var cornerRadius :CGFloat{
        set {
            
            layer.cornerRadius = newValue
        }
        
        get{
            return layer.cornerRadius
        }
    }

    
    @IBInspectable var borderColor : UIColor?{
        
        set{
            
            guard let iColor = newValue else {return}
            layer.borderColor = iColor.cgColor
        }
        
        get {
            
            guard let color = layer.borderColor else{ return nil}
                return UIColor(cgColor: color)
        }
    }
}
@IBDesignable extension UIButton{
    
    @IBInspectable var borderWith:CGFloat{
    
    set{
        
        layer.borderWidth  = newValue
    }
    get{
        return layer.borderWidth
        
    }
    
    
    
}

    @IBInspectable var cornerRadius :CGFloat{
        set {
            
            layer.cornerRadius = newValue
        }
        
        get{
            return layer.cornerRadius
        }
    }

    
    @IBInspectable var borderColor : UIColor?{
        
        set{
            
            guard let iColor = newValue else {return}
            layer.borderColor = iColor.cgColor
        }
        
        get {
            
            guard let color = layer.borderColor else{ return nil}
                return UIColor(cgColor: color)
        }
    }
}

@IBDesignable extension UITextView{
    
    @IBInspectable var borderWith:CGFloat{
    
    set{
        
        layer.borderWidth  = newValue
    }
    get{
        return layer.borderWidth
        
    }
    
    
    
}

    @IBInspectable var cornerRadius :CGFloat{
        set {
            
            layer.cornerRadius = newValue
        }
        
        get{
            return layer.cornerRadius
        }
    }

    
    @IBInspectable var borderColor : UIColor?{
        
        set{
            
            guard let iColor = newValue else {return}
            layer.borderColor = iColor.cgColor
        }
        
        get {
            
            guard let color = layer.borderColor else{ return nil}
                return UIColor(cgColor: color)
        }
    }
}
