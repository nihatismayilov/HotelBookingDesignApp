//
//  SearchView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 21.04.22.
//

import UIKit
import SnapKit

class SearchView: UIView {
    
    private lazy var glassImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_search")
        
        return image
    }()
    
    private lazy var searchField: UITextField = {
        let search = UITextField()
        self.addSubview(search)
        search.placeholder = "Search"
        
        return search
    }()
    
    private lazy var sortImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_sort")
        
        return image
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
        
        self.layer.cornerRadius = 16
        self.backgroundColor = UIColor.init(white: 0.94, alpha: 1.0)
        
        glassImage.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(16)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            make.centerY.equalTo(self.safeAreaLayoutGuide.snp.centerY)
        }
        
        searchField.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.centerY.equalTo(glassImage.snp.centerY)
            make.left.equalTo(glassImage.snp.right).offset(8)
        }
        
        sortImage.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.centerY.equalTo(searchField.snp.centerY)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right).offset(-8)
        }
        
        
        
    }
    
    
}
