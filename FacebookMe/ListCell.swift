//
//  ListCell.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/19.
//  이 파일은 뷰로 봐야한다 UITableViewCell이기 때문에

import UIKit

class ListCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var addBtn: UIButton!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    func configure(item: configureInfo){
//        icon.image = item.image
//        title.tintColor = item.color
//    }
    // cell에서 정보를 받아서 여기서 그려질것
    // 컨트롤러는 데이터를 받아서 뷰에 던져주고
    // 모델을 뷰한테 ! 이 활동만 하기
    // 이 작업이 안되면 뷰 컨트롤러의 사이즈가 계속 커질 것.
}
