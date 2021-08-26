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
    var model = [String]()
    var sections:[String] = [" "," ","FAVORITES"," "," "]
    var cellTitles:[[String]] = [
        ["Simyo"],
        ["Friends", "Events", "Groups", "CNU", "TownHall", "InstantGames", "See More..."],
        ["muck bang", "K-pop", "Add Favorites..."],
        ["Settings","Privacy Shortcuts", "Help and Support"],
        ["Log Out"]
    ]
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // autoLayout setting
        layout()
        attribute()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ListCell.self, forCellReuseIdentifier: "ListCell")
    }

    func layout() {
        view.addSubview(tableView)
        //tableView.frame = view.bounds
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    func attribute(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ListCell")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        cell.title.text = "test"
        cell.subtitle.text = "test2"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(80)
    }
    
}

