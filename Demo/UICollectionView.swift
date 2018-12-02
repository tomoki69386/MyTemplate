//
//  UICollectionView.swift
//  Demo
//
//  Created by 築山朋紀 on 2018/12/02.
//  Copyright © 2018 tomoki. All rights reserved.
//

import Foundation
import UIKit

public extension UICollectionView {
    public func register(cellType: UICollectionViewCell.Type, bundle: Bundle? = nil) {
        let className = cellType.className
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: className)
    }
    
    public func register(cellTypes: [UICollectionViewCell.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { register(cellType: $0, bundle: bundle) }
    }
    
    public func register(reusableViewType: UICollectionReusableView.Type,
                         ofKind kind: String = UICollectionView.elementKindSectionHeader,
                         bundle: Bundle? = nil) {
        let className = reusableViewType.className
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    public func register(reusableViewTypes: [UICollectionReusableView.Type],
                         ofKind kind: String = UICollectionView.elementKindSectionHeader,
                         bundle: Bundle? = nil) {
        reusableViewTypes.forEach { register(reusableViewType: $0, ofKind: kind, bundle: bundle) }
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type,
                                                             for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }
    
    public func dequeueReusableView<T: UICollectionReusableView>(with type: T.Type,
                                                                 for indexPath: IndexPath,
                                                                 ofKind kind: String = UICollectionView.elementKindSectionHeader) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.className, for: indexPath) as! T
    }
}
