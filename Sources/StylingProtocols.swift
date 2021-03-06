/*
 |  _   ____   ____   _
 | | |‾|  ⚈ |-| ⚈  |‾| |
 | | |  ‾‾‾‾| |‾‾‾‾  | |
 |  ‾        ‾        ‾
 */

import UIKit

// MARK: - Naming protocols

public protocol BackgroundColorNameable {
    var backgroundColorName: String? { get set }
}

public extension BackgroundColorNameable where Self: UIView {
    
    func applyBackgroundColorName() {
        backgroundColor = UIColor(withName: backgroundColorName)
    }
    
}

public protocol TintColorNameable {
    var tintColorName: String? { get set }
}

public extension TintColorNameable where Self: UIView {
    
    func applyTintColorName() {
        tintColor = UIColor(withName: tintColorName)
    }
    
}

public protocol BorderColorNameable {
    var borderColorName: String? { get set }
}

public extension BorderColorNameable where Self: UIView {
    
    func applyBorderColorName() {
        borderColor = UIColor(withName: borderColorName)
    }
    
}

public protocol ShadowColorNameable {
    var shadowColorName: String? { get set }
}

public extension ShadowColorNameable where Self: UIView {
    
    func applyShadowColorName() {
        shadowColor = UIColor(withName: shadowColorName)
    }
    
}

public protocol FontNameable: class {
    var fontName: String? { get set }
    var displayFont: UIFont? { get set }
}

public extension FontNameable {
    
    func applyFontName() {
        if let fontName = fontName {
            displayFont = UIFont.with(name: fontName)
        }
    }
    
}

// MARK: - Circular view

protocol CircularView {
    var circular: Bool { get set }
}

extension CircularView where Self: UIView {
    
    func applyCircularStyleIfNeeded() {
        guard circular else { return }
        let minSideSize = min(frame.size.width, frame.size.height)
        let newRadius = minSideSize / 2.0
        guard layer.cornerRadius != newRadius else { return }
        layer.cornerRadius = newRadius
    }
    
}
