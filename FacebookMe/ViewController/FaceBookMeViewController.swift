//
//  FaceBookMeViewController.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/24.
//

import UIKit

class FaceBookMeViewController: UIViewController {
    /*
     controller는 데이터를 받아야함
     */
//    var model = [String]()
    var sections:[String] = [" "," ","FAVORITES"," "," "]
    var cellTitles:[[String]] = [
        ["Simyo"],
        ["Friends", "Events", "Groups", "CNU", "TownHall", "InstantGames", "See More..."],
        ["muck bang", "K-pop", "Add Favorites..."],
        ["Settings","Privacy Shortcuts", "Help and Support"],
        ["Log Out"]
    ]
    var images = [
        ["profileImg"],
        ["fb_friends", "fb_events", "fb_groups", "fb_education", "fb_town_hall", "fb_games",  ""],
        ["fb_placeholder", "fb_placeholder", "fb_placeholder"],
        ["fb_settings", "fb_privacy_shortcuts", "fb_help_and_support"],
        ["fb_placeholder"]
    ]
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // autoLayout setting
        layout()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ProfileCell.self, forCellReuseIdentifier: "ProfileCell")
        tableView.register(ListCell.self, forCellReuseIdentifier: "ListCell")
        
        navigationController?.navigationBar.barTintColor = UIColor(named: "facebookColor")
        self.navigationItem.title = "FaceBook"
        
    }

    private func layout() {
        view.addSubview(tableView)
        //tableView.frame = view.bounds
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
}

extension FaceBookMeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell
            cell.title.text = "심효주"
            cell.subtitle.text = "스토리보드 없이 개발중"
            cell.leftImage.image = UIImage(named: "profileImg")
            return cell

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
//            if indexPath.row == cellTitles[indexPath.section].count-1 {
//                cell.title.tintColor = .blue
//            }
            if indexPath.row == 6 { cell.title.tintColor = UIColor.blue}
            cell.title.text = cellTitles[indexPath.section][indexPath.row]
            cell.leftImage.image = UIImage(named: images[indexPath.section][indexPath.row])
            return cell
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return CGFloat(80)
        } else {
            return CGFloat(40)
        }
    }
    
}

