//
//  WelcomeView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class WelcomeView: UIView {
    
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textColor = .darkText
        label.text = "Hello, Nihad"
        
        return label
    }()
    
    private lazy var handImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "ic_waving_hand")
        
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
        
        helloLabel.snp.makeConstraints { make in
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(16)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
        }
        
        handImage.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.centerY.equalTo(helloLabel.snp.centerY)
            make.left.equalTo(helloLabel.snp.right).offset(8)
        }
        
    }
}
