//
//  RandomCollectionVC + WaterfallLayout.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 06.06.2022.
//

import Foundation
import CHTCollectionViewWaterfallLayout

extension RandomCollectionVC: CHTCollectionViewDelegateWaterfallLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.frame.width
        let cellWidth = collectionWidth / 2.0
        
        let photoWidth: CGFloat = CGFloat(photos[indexPath.item].width)
        let photoHeight: CGFloat = CGFloat(photos[indexPath.item].height)

        let aspectRatio = photoHeight / photoWidth
        
        let cellHeight = cellWidth * aspectRatio
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
