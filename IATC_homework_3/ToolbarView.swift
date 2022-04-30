//
//  ToolbarVieww.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class ToolbarView: UIView {
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_logo")
        image.backgroundColor = .systemGreen
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        
        return image
    }()
    
    private lazy var toolbarLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .darkText
        label.text = "Helia"
        
        return label
    }()
    
    private lazy var notificationImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_notification")
        
        return image
    }()
    
    private lazy var saveImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_bookmark")
        
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
        
        logoImage.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(16)
        }
        
        toolbarLabel.snp.makeConstraints { make in
            make.centerY.equalTo(logoImage.snp.centerY)
            make.left.equalTo(logoImage.snp.right).offset(16)
        }
        
        saveImage.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.centerY.equalTo(logoImage.snp.centerY)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right).offset(-16)
        }
        
        notificationImage.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.centerY.equalTo(saveImage.snp.centerY)
            make.right.equalTo(saveImage.snp.left).offset(-16)
        }
        
    }
    
}
