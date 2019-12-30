//
//  StretchyHeaderLayout.swift
//  TwitterProfileLayout
//
//  Created by Vibhor Gupta on 8/20/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import Foundation
import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layoutAttributes = super.layoutAttributesForElements(in: rect)

        layoutAttributes?.forEach({ (attributes) in

            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader {

                attributes.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            }


        })

        return layoutAttributes
    }
}
