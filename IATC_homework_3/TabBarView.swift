//
//  TabBarView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 21.04.22.
//

import UIKit
import SnapKit

class TabBarView: UIView {
    
    private lazy var tabImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        
        return image
    }()
    
    private lazy var tabLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .lightGray
        
        return label
    }()
    
    
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
        
        tabImage.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(4)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(24)
        }
        
        tabLabel.snp.makeConstraints { make in
            make.top.equalTo(tabImage.snp.bottom).offset(4)
            make.centerX.equalTo(tabImage.snp.centerX)
        }
    }
    
    func getTabBar(tab: Tab) {
        tabImage.image = tab.tabImage
        tabLabel.text = tab.title
    }
}
