//
//  CardView.swift
//  IATC_homework
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit
import SnapKit

class HouseListView: UIView {
    
    private lazy var hotelImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .darkText
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .lightGray
        
        return label
    }()
    
    private lazy var starImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.image = UIImage.init(named: "star")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textColor = .systemGreen
        
        return label
    }()
    
    private lazy var reviewsLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.textColor = .lightGray
        
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .systemGreen
        
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "/ night"
        
        return label
    }()
    
    private lazy var saveImage: UIImageView = {
        let image = UIImageView()
        self.addSubview(image)
        image.contentMode = .scaleAspectFit
        
        return image
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
        self.backgroundColor = .white
        self.clipsToBounds = true
        self.layer.cornerRadius = 24
        
        self.hotelImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.top.equalToSuperview().offset(8)
            make.bottom.equalToSuperview().offset(-8)
            make.height.width.equalTo(96)
        }
        
        self.titleLabel.snp.makeConstraints { make in
            make.left.equalTo(hotelImage.snp.right).offset(8)
            make.top.equalToSuperview().offset(8)
            make.right.equalTo(priceLabel.snp.left).offset(-8)
        }
        
        self.priceLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-8)
        }
        
        self.titleLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        self.priceLabel.setContentHuggingPriority(.required, for: .horizontal)
        self.priceLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        
        self.timeLabel.snp.makeConstraints { make in
            make.right.equalTo(self.priceLabel.snp.right)
            make.top.equalTo(self.priceLabel.snp.bottom).offset(8)
        }
        
        self.saveImage.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.right.equalTo(self.timeLabel.snp.right)
            make.top.equalTo(self.timeLabel.snp.bottom).offset(8)
        }
        
        self.descriptionLabel.snp.makeConstraints { make in
            make.left.equalTo(hotelImage.snp.right).offset(8)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.right.equalToSuperview().offset(-8)
        }
        
        self.starImage.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.left.equalTo(hotelImage.snp.right).offset(8)
            make.bottom.equalTo(hotelImage.snp.bottom)
            make.width.height.equalTo(16)
        }
        
        self.ratingLabel.snp.makeConstraints { make in
            make.left.equalTo(starImage.snp.right).offset(8)
            make.centerY.equalTo(starImage.snp.centerY)
        }
        
        self.reviewsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(starImage.snp.centerY)
            make.left.equalTo(ratingLabel.snp.right).offset(8)
            make.right.lessThanOrEqualToSuperview().offset(-8)
        }
    }
    
    func setup(hotel: HotelList) {
        self.hotelImage.image = hotel.hotelImage
        self.titleLabel.text = hotel.title
        self.descriptionLabel.text = hotel.description
        self.ratingLabel.text = "\(hotel.rating)"
        self.reviewsLabel.text = "(\(hotel.reviews) reviews)"
        self.priceLabel.text = hotel.price
        self.saveImage.image = hotel.saveImage
    }
}
