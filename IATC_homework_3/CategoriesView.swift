//
//  CategoriesView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class CategoriesView: UIView {
    
    private lazy var categoryLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.isUserInteractionEnabled = true
        label.textAlignment = .center
        label.textColor = .systemGreen
        
        return label
    }()
    
    
    //initWithFrame to init view from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    //common func to init our view
    private func setupView() {
        
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 20
        self.layer.borderColor = UIColor.systemGreen.cgColor
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(selectCategory))
        categoryLabel.addGestureRecognizer(gesture)
        
        categoryLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.center.equalTo(self.snp.center)
            make.top.equalToSuperview().offset(8)
            make.height.equalTo(32)
            make.width.equalTo(128)
        }
        
    }
    
    @objc func selectCategory() {
        if categoryLabel.textColor == .systemGreen {
            categoryLabel.textColor = .white
            self.backgroundColor = .systemGreen
        } else {
            categoryLabel.textColor = .systemGreen
            self.backgroundColor = .white
        }
        
    }
    
    func setColor(category: Category) {
        self.categoryLabel.text = category.categoryLabel
        self.categoryLabel.textColor = category.textColor
        self.backgroundColor = category.backgroundColor
    }
}
