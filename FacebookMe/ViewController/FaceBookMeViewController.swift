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
    var data = Data()

    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // autoLayout setting
        tableViewLayout()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ProfileCell.self, forCellReuseIdentifier: "ProfileCell")
        tableView.register(ListCell.self, forCellReuseIdentifier: "ListCell")
        
        navigationController?.navigationBar.barTintColor = UIColor(named: "facebookColor")
        self.navigationItem.title = "FaceBook"
        
    }

    private func tableViewLayout() {
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
        return data.sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data.sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.cellTitles[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let profileCell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        
        switch indexPath.section {
        case 0:
            profileCell.title.text = "심효주"
            profileCell.subtitle.text = "스토리보드 없이 개발중"
            profileCell.leftImage.image = UIImage(named: "profileImg")
            return profileCell
            
        default:
            let lastIndex = data.cellTitles[indexPath.section].count-1
            let lastSection = data.cellTitles.count-1
            
            cell.title.text = data.cellTitles[indexPath.section][indexPath.row]
            cell.leftImage.image = UIImage(named: data.images[indexPath.section][indexPath.row])
            
            if indexPath.section == 1 || indexPath.section == 2 {
                if indexPath.row == lastIndex{
                    cell.title.textColor = UIColor(named: "facebookColor")
                }
            }
            
            if indexPath.section == lastSection {
                cell.title.textColor = .red
                cell.title.font = UIFont.boldSystemFont(ofSize: 16)
                cell.title.textAlignment = .center
            }
            
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

