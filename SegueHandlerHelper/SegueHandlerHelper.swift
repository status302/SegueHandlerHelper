//
//  SegueHandlerHelper.swift
//  SegueHandlerHelper
//
//  Created by yolo on 2017/2/8.
//  Copyright © 2017年 Qiun Cheng. All rights reserved.
//

import UIKit
import Foundation

public protocol SegueHandlerHelper {
    associatedtype SegueIdentifierType: RawRepresentable
}

public extension SegueHandlerHelper where Self: UIViewController,
    SegueIdentifierType.RawValue == String {
    
    public func performSegue(with identifierType: SegueIdentifierType, sender: Any?) {
        performSegue(withIdentifier: identifierType.rawValue, sender: sender)
    }
    
    public func identifier(for segue: UIStoryboardSegue) -> SegueIdentifierType {
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifierType(rawValue: identifier) else {
            fatalError("Invalid identifier: \(String(describing: segue.identifier))")
        }
        return segueIdentifier
    }
}
