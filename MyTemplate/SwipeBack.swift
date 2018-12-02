//
//  SwipeBack.swift
//  MyTemplate
//
//  Created by 築山朋紀 on 2018/12/02.
//  Copyright © 2018 tomoki. All rights reserved.
//

import UIKit

public protocol SwipeBackable {
    func setSwipeBack()
}

public extension SwipeBackable where Self: UIViewController {
    public func setSwipeBack() {
        let target = self.navigationController?.value(forKey: "_cachedInteractionController")
        let recognizer = UIPanGestureRecognizer(target: target, action: Selector(("handleNavigationTransition:")))
        self.view.addGestureRecognizer(recognizer)
    }
}

extension UIViewController: SwipeBackable {}
