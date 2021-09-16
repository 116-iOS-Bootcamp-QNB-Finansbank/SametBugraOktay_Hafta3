//
//  SliderCell.swift
//  BannerSlider
//
//  Created by Samet Bugra Oktay on 15.09.2021.
//

import UIKit

class SliderCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    


    var image: UIImage! {
        didSet {
            imageView.image = image
        }
    }
    
}
