//
//  UIArray.swift
//  Demo
//
//  Created by 築山朋紀 on 2018/12/02.
//  Copyright © 2018 tomoki. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    @discardableResult
    public mutating func remove(element: Element) -> Index? {
        guard let index = index(of: element) else { return nil }
        remove(at: index)
        return index
    }
    
    @discardableResult
    public mutating func remove(elements: [Element]) -> [Index] {
        return elements.compactMap { remove(element: $0) }
    }
}
