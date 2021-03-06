//
//  CategoryViewCell.swift
//  SuperBill
//
//  Created by William Hu on 4/5/20.
//  Copyright © 2020 William Hu. All rights reserved.
//

import UIKit

final class CategoryViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryColorView: UIView!
    @IBOutlet weak var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryColorView.layer.cornerRadius = 5.0
    }
    
    func configure(by category: Category) {
        categoryName.text = category.name?.localized
        categoryColorView.backgroundColor = category.color as? UIColor
    }
}
