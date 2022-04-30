//
//  ViewController.swift
//  IATC_homework_3
//
//  Created by Nihad Ismayilov on 20.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var toolbarView: ToolbarView = {
        let view = ToolbarView()
        self.view.addSubview(view)
        
        return view
    }()
    
    private lazy var screenScrollView: UIScrollView = {
        let view = UIScrollView()
        self.view.addSubview(view)
        view.backgroundColor = UIColor.init(white: 0.98, alpha: 1.0)
        
        return view
    }()
    
    private lazy var screenStackView: UIStackView = {
        let view = UIStackView()
        self.screenScrollView.addSubview(view)
        view.axis = .vertical
        view.distribution = .equalSpacing
        view.spacing = 16
        
        return view
    }()
    
    private lazy var welcomeView: WelcomeView = {
        let view = WelcomeView()
        self.screenStackView.addArrangedSubview(view)
        
        return view
    }()
    
    private lazy var searchView: SearchView = {
        let view = SearchView()
        self.screenStackView.addArrangedSubview(view)
        
        return view
    }()
    
    private lazy var scrollViewTrends: UIScrollView = {
        let view = UIScrollView()
        self.screenStackView.addArrangedSubview(view)
        view.showsHorizontalScrollIndicator = false
        
        return view
    }()
    
    private lazy var stackViewTrends: UIStackView = {
        let view = UIStackView()
        self.scrollViewTrends.addSubview(view)
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.spacing = 8
        
        return view
    }()
    
    private lazy var hotelRoomHeader: HotelRoomHeader = {
        let view = HotelRoomHeader()
        self.screenStackView.addArrangedSubview(view)
        
        return view
    }()
    
    private lazy var collectionScrollView: UIScrollView = {
        let view = UIScrollView()
        self.screenStackView.addArrangedSubview(view)
        view.showsHorizontalScrollIndicator = false
        
        return view
    }()
    
    private lazy var collectionStackView: UIStackView = {
        let view = UIStackView()
        self.collectionScrollView.addSubview(view)
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.spacing = 16
        
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        self.screenScrollView.addSubview(view)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 16
        
        return view
    }()
    
    private lazy var tabBarStack: UIStackView = {
        let view = UIStackView()
        self.view.addSubview(view)
        view.backgroundColor = .white
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8
        
        return view
    }()
    
    let category: [Category] = [
        Category(categoryLabel: "Recommended", backgroundColor: UIColor.systemGreen, textColor: UIColor.white),
        Category(categoryLabel: "Popular", backgroundColor: UIColor.white, textColor: UIColor.systemGreen),
        Category(categoryLabel: "Trending", backgroundColor: UIColor.white, textColor: UIColor.systemGreen),
        Category(categoryLabel: "New", backgroundColor: UIColor.white, textColor: UIColor.systemGreen),
        Category(categoryLabel: "Top Trends", backgroundColor: UIColor.white, textColor: UIColor.systemGreen)]
    
    let hotelCollection: [HotelCollection] = [
        HotelCollection(hotelImage: UIImage.init(named:"hotel1")!, title: "President Hotel", description: "Paris, France", rating: 4.8, price: "35", saveImage: UIImage.init(named: "ic_bookmark_filled")!),
        HotelCollection(hotelImage: UIImage.init(named:"hotel2")!, title: "Palms Casino", description: "Amsterdam, Netherlands", rating: 4.9, price: "29", saveImage: UIImage.init(named: "ic_white_bookmark")!),
        HotelCollection(hotelImage: UIImage.init(named:"hotel3")!, title: "Palazzo Versace", description: "Rome, Italia", rating: 4.7, price: "36", saveImage: UIImage.init(named: "ic_bookmark_filled")!),
        HotelCollection(hotelImage: UIImage.init(named:"hotel4")!, title: "Bulgari Resort", description: "Istanbul, Turkiye", rating: 4.8, price: "27", saveImage: UIImage.init(named: "ic_white_bookmark")!),
        HotelCollection(hotelImage: UIImage.init(named:"hotel1")!, title: "Martinez Cannes", description: "London, United Kingdom", rating: 4.6, price: "32", saveImage: UIImage.init(named: "ic_white_bookmark")!)]
    
    let hotelList: [HotelList] = [
        HotelList(hotelImage: UIImage.init(named:"hotel1")!, title: "President Hotel", description: "Paris, France", rating: 4.8, reviews: 4378, price: "35", saveImage: UIImage.init(named: "ic_bookmark_filled")!),
        HotelList(hotelImage: UIImage.init(named:"hotel2")!, title: "Palms Casino", description: "Amsterdam, Netherlands", rating: 4.9, reviews: 5283, price: "29", saveImage: UIImage.init(named: "ic_bookmark")!),
        HotelList(hotelImage: UIImage.init(named:"hotel3")!, title: "Palazzo Versace", description: "Rome, Italia", rating: 4.7, reviews: 3277, price: "36", saveImage: UIImage.init(named: "ic_bookmark_filled")!),
        HotelList(hotelImage: UIImage.init(named:"hotel4")!, title: "Bulgari Resort", description: "Istanbul, Turkiye", rating: 4.8, reviews: 4981, price: "27", saveImage: UIImage.init(named: "ic_bookmark")!),
        HotelList(hotelImage: UIImage.init(named:"hotel1")!, title: "Martinez Cannes", description: "London, United Kingdom", rating: 4.6, reviews: 3672, price: "32", saveImage: UIImage.init(named: "ic_bookmark")!)]
    
    let tabList: [Tab] = [
        Tab(tabImage: UIImage(named: "ic_house")!, title: "Home"),
        Tab(tabImage: UIImage(named: "ic_searches")!, title: "Search"),
        Tab(tabImage: UIImage.init(named: "ic_booking")!, title: "Booking"),
        Tab(tabImage: UIImage.init(named: "ic_person")!, title: "Profile")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        toolbarView.snp.makeConstraints { make in
            make.height.equalTo(56)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
        }
        
        screenScrollView.snp.makeConstraints { make in
            make.top.equalTo(toolbarView.snp.bottom)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.tabBarStack.snp.top).offset(-16)
        }
        
        screenStackView.snp.makeConstraints { make in
            make.top.equalTo(screenScrollView.contentLayoutGuide.snp.top)
            make.left.equalTo(screenScrollView.contentLayoutGuide.snp.left)
            make.right.equalTo(screenScrollView.contentLayoutGuide.snp.right)
            make.centerX.equalTo(screenScrollView.snp.centerX)
        }
        
        welcomeView.snp.makeConstraints { make in
            make.height.equalTo(56)
            make.left.equalTo(self.screenStackView.snp.left)
            make.top.equalTo(self.screenStackView.snp.top)
        }
        
        searchView.snp.makeConstraints { make in
            make.height.equalTo(56)
            make.left.equalTo(self.screenStackView.snp.left).offset(16)
            make.top.equalTo(self.welcomeView.snp.bottom).offset(16)
            make.right.equalTo(self.screenStackView.snp.right).offset(-16)
        }
        
        scrollViewTrends.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(124)
            make.top.equalTo(self.searchView.snp.bottom).offset(16)
            make.left.equalTo(self.screenStackView.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.screenStackView.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.collectionScrollView.safeAreaLayoutGuide.snp.bottom).offset(-16)
        }
        
        stackViewTrends.snp.makeConstraints { make in
            make.top.equalTo(self.scrollViewTrends.contentLayoutGuide.snp.top)
            make.left.equalTo(self.scrollViewTrends.contentLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.scrollViewTrends.contentLayoutGuide.snp.right)
            make.centerY.equalTo(self.scrollViewTrends.snp.centerY)
        }
        
        collectionScrollView.snp.makeConstraints { make in
            make.height.equalTo(320)
            make.width.equalTo(200)
            make.top.equalTo(self.scrollViewTrends.snp.bottom)
            make.left.equalTo(self.scrollViewTrends.snp.left)
            make.right.equalTo(self.screenStackView.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.hotelRoomHeader.snp.top).offset(-16)
        }
        
        collectionStackView.snp.makeConstraints { make in
            make.top.equalTo(self.collectionScrollView.contentLayoutGuide.snp.top).offset(8)
            make.left.equalTo(self.collectionScrollView.contentLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.collectionScrollView.contentLayoutGuide.snp.right)
            make.centerY.equalTo(self.collectionScrollView.snp.centerY)
            
        }
        
        hotelRoomHeader.snp.makeConstraints { make in
            make.top.equalTo(self.collectionScrollView.snp.bottom)
            make.left.equalTo(self.collectionScrollView.snp.left).offset(16)
            make.right.equalTo(self.screenStackView.safeAreaLayoutGuide.snp.right).offset(-16)
            make.height.equalTo(40)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(self.hotelRoomHeader.snp.bottom).offset(16)
            make.left.equalTo(self.screenScrollView.contentLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.screenScrollView.contentLayoutGuide.snp.right).offset(-16)
            make.bottom.equalTo(self.screenScrollView.contentLayoutGuide.snp.bottom).offset(-16)
        }
        
        tabBarStack.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(100)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
        self.category.forEach { trend in
            let categoryView = CategoriesView()
            categoryView.setColor(category: trend)
            self.stackViewTrends.addArrangedSubview(categoryView)
        }
        
        self.hotelCollection.forEach { room in
            let hotelView = HouseCollectionView()
            hotelView.getInfo(hotel: room)
            self.collectionStackView.addArrangedSubview(hotelView)
        }
        
        self.hotelList.forEach { room in
            let hotelView = HouseListView()
            hotelView.setup(hotel: room)
            self.stackView.addArrangedSubview(hotelView)
        }
        
        self.tabList.forEach { list in
            let tabView = TabBarView()
            tabView.getTabBar(tab: list)
            self.tabBarStack.addArrangedSubview(tabView)
        }
        
    }
    
}

struct HotelList {
    let hotelImage: UIImage
    let title: String
    let description: String
    let rating: Double
    let reviews: Int
    let price: String
    let saveImage: UIImage
}

struct HotelCollection {
    let hotelImage: UIImage
    let title: String
    let description: String
    let rating: Double
    let price: String
    let saveImage: UIImage
}

struct Category {
    let categoryLabel: String
    let backgroundColor: UIColor
    let textColor: UIColor
}

struct Tab {
    let tabImage: UIImage
    let title: String
}

