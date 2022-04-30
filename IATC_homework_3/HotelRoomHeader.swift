//
//  ToolbarView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class HotelRoomHeader: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .darkText
        label.textAlignment = .left
        label.text = "Recently booked"
        
        return label
    }()
    
    private lazy var showAllLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .systemGreen
        label.text = "See All"
        
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
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(8)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            make.right.equalTo(showAllLabel.snp.left).offset(-16)
        }
        
        showAllLabel.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel.snp.centerY)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right).offset(-16)
        }
    }
    
}
