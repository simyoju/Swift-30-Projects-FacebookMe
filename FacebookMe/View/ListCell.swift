//
//  ListCell.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/19.
//  이 파일은 뷰로 봐야한다 UITableViewCell이기 때문에

import UIKit

class ListCell: UITableViewCell {
    let identifier = "ListCell"
    
    let leftImage = UIImageView()
    let title = UILabel()
    let subtitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        //cell의 style 종류는 뭐뭐 있을까?
    
        leftImage.backgroundColor = .purple
        title.backgroundColor = .black
        subtitle.backgroundColor = .blue
        
        addSubview(leftImage)
        addSubview(title)
        addSubview(subtitle)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        leftImage.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        
        
        //title.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
            leftImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            leftImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            leftImage.heightAnchor.constraint(equalToConstant: 60),
            leftImage.widthAnchor.constraint(equalToConstant: 60),
            
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            title.leadingAnchor.constraint(equalTo: self.leftImage.trailingAnchor, constant: 10),
            
            subtitle.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 5),
            subtitle.leadingAnchor.constraint(equalTo: self.leftImage.trailingAnchor, constant: 10)
            
            
        ])
    }
    
    /*
    컨트롤러는 데이터를 받아서 뷰에 던져주고
     모델을 뷰한테 ! 이 활동만 하기
     이 작업이 안되면 뷰 컨트롤러의 사이즈가 계속 커질 것.
     */
}
