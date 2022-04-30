//
//  HouseCollectionView.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class HouseCollectionView: UIView {
    
    private lazy var roomImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.clipsToBounds = true
        image.layer.cornerRadius = 24
        
        return image
    }()
    
    private lazy var ratingView: UIView = {
        let view = UIView()
        roomImage.addSubview(view)
        view.clipsToBounds = true
        view.layer.cornerRadius = 14
        view.backgroundColor = .systemGreen
        
        return view
    }()
    
    private lazy var starImage: UIImageView = {
        let image = UIImageView()
        ratingView.addSubview(image)
        image.image = UIImage.init(named: "ic_white_star")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        ratingView.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        roomImage.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 1
        label.textColor = .white
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        roomImage.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        roomImage.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        roomImage.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .white
        label.text = "/ night"
        
        return label
    }()
    
    private lazy var saveImage: UIImageView = {
        let image = UIImageView()
        roomImage.addSubview(image)
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    //private lazy var ratingView: UIView
    
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
        
        roomImage.snp.makeConstraints { make in
            make.width.equalTo(232)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(8)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(8)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right).offset(-8)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(-8)
        }
        
        ratingView.snp.makeConstraints { make in
            make.width.equalTo(72)
            make.height.equalTo(28)
            make.top.equalTo(roomImage.snp.top).offset(24)
            make.right.equalTo(roomImage.snp.right).offset(-16)
        }
        
        starImage.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.centerY.equalTo(ratingView.snp.centerY)
            make.top.equalTo(ratingView.snp.top).offset(8)
            make.left.equalTo(ratingView.snp.left)
        }
        
        ratingLabel.snp.makeConstraints { make in
            make.centerY.equalTo(starImage.snp.centerY)
            make.left.equalTo(starImage.snp.right)
            make.right.equalTo(ratingView.snp.right).offset(-8)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(roomImage.snp.left).offset(16)
            make.top.equalTo(roomImage.snp.top).offset(190)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.left.equalTo(titleLabel.snp.left)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.left.equalTo(descriptionLabel.snp.left)
            make.top.equalTo(descriptionLabel.snp.bottom).offset(8)
        }
        
        timeLabel.snp.makeConstraints { make in
            make.left.equalTo(priceLabel.snp.right).offset(4)
            make.bottom.equalTo(priceLabel.snp.bottom).offset(-4)
        }
        
        saveImage.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.centerY.equalTo(priceLabel.snp.centerY)
            make.right.equalTo(roomImage.snp.right).offset(-16)
        }
        
    }
    
    func getInfo(hotel : HotelCollection) {
        self.roomImage.image = hotel.hotelImage
        self.titleLabel.text = hotel.title
        self.descriptionLabel.text = hotel.description
        self.priceLabel.text = "$\(hotel.price)"
        self.saveImage.image = hotel.saveImage
        self.ratingLabel.text = String(hotel.rating)
    }
    
}
