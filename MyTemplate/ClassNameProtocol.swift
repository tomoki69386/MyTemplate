//
//  ClassNameProtocol.swift
//  Demo
//
//  Created by 築山朋紀 on 2018/12/02.
//  Copyright © 2018 tomoki. All rights reserved.
//

import Foundation

public protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

public extension ClassNameProtocol {
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameProtocol {}
