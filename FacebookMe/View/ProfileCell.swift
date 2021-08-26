//
//  ProfileCell.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/26.
//

import UIKit

class ProfileCell : UITableViewCell {
    let identifier = "ProfileCell"
    
    let leftImage = UIImageView()
    let title = UILabel()
    let subtitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        //cell의 style 종류는 뭐뭐 있을까?
    
        leftImage.backgroundColor = .purple
        //title.backgroundColor = .green
        //subtitle.backgroundColor = .blue
            
        subtitle.font = UIFont.systemFont(ofSize: 12)
            
        addSubview(leftImage)
        addSubview(title)
        addSubview(subtitle)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
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
    
}
