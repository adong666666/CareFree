//
//  writeDiaryCell.swift
//  CareFree
//
//  Created by 张驰 on 2019/6/7.
//  Copyright © 2019 张驰. All rights reserved.
//

import UIKit


protocol WriteDiaryDelegate:NSObjectProtocol {
    //func selectPhoto()
}

class writeDiaryCell: UIView {
    
    var jump: (() -> Void)?
    
    weak var delegate:WriteDiaryDelegate?
    var ans = 0
    
    var arrayData = [1]
    

    
    lazy var backgroundView:UIView = {
        let vi = UIView()
        //vi.backgroundColor = UIColor.cyan
        return vi
    }()
    
    lazy var backBtn:UIButton = {
        let btn = UIButton()
        btn.setTitle("×", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "PingFangSC-Regular", size: 40)
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    lazy var saveBtn:UIButton = {
        let btn = UIButton()
        btn.setTitle("完成", for: .normal)
        btn.setTitleColor(UIColor.cyan, for: .normal)
        btn.titleLabel?.font = UIFont(name: "PingFangSC-Regular", size: 20)
        btn.setTitleColor(.cyan, for: .normal)
        return btn
    }()
    
    lazy var deleteBtn:UIButton = {
        let btn = UIButton()
        btn.setTitle("删除", for: .normal)
        btn.setTitleColor(UIColor.cyan, for: .normal)
        btn.titleLabel?.font = UIFont(name: "PingFangSC-Regular", size: 20)
        btn.setTitleColor(.cyan, for: .normal)
        return btn
    }()
    
    
    lazy var Title:UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = "今天"
        label.font = UIFont(name: "PingFangSC-Regular", size: 20)
        
        return label
    }()
    
    lazy var diaryWirte : UITextView = {
        let tv = UITextView()
        tv.backgroundColor = UIColor.clear
        tv.font = UIFont.systemFont(ofSize: 20)
        tv.textColor = UIColor.white
        tv.text = "快记录一下吧~"
        return tv
    }()
    
//    lazy var photoCollection:UICollectionView = {
//        let layout = UICollectionViewFlowLayout.init()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        layout.minimumInteritemSpacing = 0
//        layout.minimumLineSpacing = 0
//        layout.itemSize = CGSize(width: 120, height:120)
//        
//        let collection = UICollectionView.init(frame:CGRect(x:100, y:50, width:265, height:180), collectionViewLayout: layout)
//        collection.backgroundColor = UIColor.clear
//        collection.register(UINib(nibName: "diaryPhotoCell", bundle: nil), forCellWithReuseIdentifier: "diaryPhotoCell")
//        collection.showsVerticalScrollIndicator = false
//        return collection
//    }()
    
    init(){
        super.init(frame: .zero)
        configUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configUI(){

        addSubview(backgroundView)
        
        backgroundView.snp.makeConstraints{(make) in
            make.left.bottom.right.equalTo(self)
            make.top.equalTo(self)
        }
        addSubview(backBtn)
        addSubview(Title)
        addSubview(saveBtn)
        addSubview(deleteBtn)
        
        backBtn.snp.makeConstraints{(make) in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(60)
            make.width.height.equalTo(30)
        }
        Title.snp.makeConstraints{(make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(backBtn.snp.centerY)
            make.width.equalTo(60)
            make.height.equalTo(30)
        }
        saveBtn.snp.makeConstraints{(make) in
            make.right.equalTo(self).offset(-20)
            make.centerY.equalTo(backBtn.snp.centerY)
            make.width.equalTo(60)
            make.height.equalTo(30)
        }
        deleteBtn.snp.makeConstraints{(make) in
            make.right.equalTo(self).offset(-90)
            make.centerY.equalTo(backBtn.snp.centerY)
            make.width.equalTo(60)
            make.height.equalTo(30)
        }
        
        addSubview(diaryWirte)
        diaryWirte.snp.makeConstraints{(make) in
            make.left.equalTo(self).offset(27)
            make.top.equalTo(backBtn.snp.bottom).offset(20)
            make.height.equalTo(250)
            make.right.equalTo(self).offset(-27)
        }
//        addSubview(photoCollection)
//        photoCollection.delegate = self
//        photoCollection.dataSource = self
//
//        photoCollection.snp.makeConstraints{(make) in
//            make.left.equalTo(self).offset(27)
//            make.top.equalTo(diaryWirte.snp.bottom).offset(5)
//            make.bottom.equalTo(self).offset(5)
//            make.right.equalTo(self).offset(-27)
//        }
        
        
    }
    func updateUI(){
//        for v in subviews{
//            v.removeFromSuperview()
//            print(v)
//            print("删除")
//        }
//        print("更新uI")
//        configUI()
//        photoCollection.reloadData()
    }

}
//extension writeDiaryCell:UICollectionViewDelegate,UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return itemArray!.count + 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "diaryPhotoCell", for: indexPath) as! diaryPhotoCell
//        if indexPath.row == 0 {
//            let selectTap = UITapGestureRecognizer(target: self, action: #selector(self.selectPhoto))
//            cell.addGestureRecognizer(selectTap)
//            cell.photo.image = UIImage(named: "img_hand_addpic")
//            print("选取按钮")
//        }
//        else {
//            //cell.backgroundColor  = .red
//            cell.photo.image = UIImage(named: "userImg")
//        }
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
////    @objc func selectPhoto(){
////        delegate?.selectPhoto()
////    }
//
//}

