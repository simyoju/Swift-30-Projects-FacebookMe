//
//  MyPageController.swift
//  FacebookMe
//
//  Created by simyo on 2021/08/19.
//

import UIKit

struct configureInfo {
    let image: UIImage
    let color: UIColor
    let text: String
}
// 모델 부분 -> 모델링 : 반복되는 데이터를 정형화. 모델링 깔금하게 하면 얼매나 좋게요?
// 모델링 많이 해보기!
// 1. 노가다 ㅜㅜㅜㅜ 2. 반복되는 작업 -> 모델링 3. 이렇게 프로젝트를 정리하면 MVC 패턴으로 됨

class MyPageController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = #colorLiteral(red: 0.231372549, green: 0.3490196078, blue: 0.5960784314, alpha: 1)
        navigationController?.navigationBar.standardAppearance = appearance
        // 왜 viewWillAppear에 넣어야 네비게이션 색이 바뀌는가에 대해 알아오기 !
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
        // 섹션 헤더를 색 내기용으로 썼는데 과연 그것이 맞는 경우인가? 에 대해 찾아보기 (물론 안됨)
        // viewForSupplementaryElementOfKind
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 2 {
            return "FAVORITES"
        } else {
            return " "
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0,4:
            return 1
        case 1:
            return 7
        case 2, 3:
            return 3
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PROFILE_CELL") as! ProfileCell
            cell.img.image = UIImage(named: "profileImg")
            cell.name.text = "심효주"
            cell.name.font = UIFont.boldSystemFont(ofSize: 18)
            cell.shortIntroduction.text = "풀스택 앱개발자가 되고 싶어요"
            
            
            return cell
        }
        else if indexPath.section == 1 {
            let configureList:[configureInfo] = [configureInfo(image: UIImage(systemName: "person.2.fill")!,color: .black,text: "Friends"),
                configureInfo(image: UIImage(systemName: "person.2.fill")!,color: .black,        text: "Friends")]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIST_CELL") as! ListCell
            cell.configure(item: configureList[indexPath.row])
            
            switch indexPath.row {
            case 0:
//                cell?.imageView?.image = UIImage(systemName: "person.2.fill")
//                cell?.imageView?.tintColor = .black
//                cell?.textLabel?.text = "Friends"
                let configure1 = configureInfo(image: UIImage(systemName: "person.2.fill")!,
                                               color: .black,
                                               text: "Friends")
                cell.configure(item: configure1)
                // viewController가 cell안에 뭐가 들어가는지 알 필요가 없다. 
                // configure type array 생성 후 접근하면 더 간단?
            case 1:
                cell?.imageView?.image = UIImage(systemName: "calendar")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Events"
            case 2:
                cell?.imageView?.image = UIImage(systemName: "person.3.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Groups"
            case 3:
                cell?.imageView?.image = UIImage(systemName: "graduationcap.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "CNU"
            case 4:
                cell?.imageView?.image = UIImage(systemName: "house.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Town Hall"
            case 5:
                cell?.imageView?.image = UIImage(systemName: "gamecontroller.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Instant Games"
            default:
                cell?.textLabel?.text = "See more..."
                cell?.textLabel?.textColor = #colorLiteral(red: 0.231372549, green: 0.3490196078, blue: 0.5960784314, alpha: 1)
                cell?.accessoryType = .none
            }
            return cell!
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIST_CELL")
            switch indexPath.row {
            case 0:
                cell?.textLabel?.text = "mukbang"
            case 1:
                cell?.textLabel?.text = "K-pop"
            case 2:
                cell?.textLabel?.text = "Add Favorites..."
                cell?.textLabel?.textColor = #colorLiteral(red: 0.231372549, green: 0.3490196078, blue: 0.5960784314, alpha: 1)
                cell?.accessoryType = .none
            default:
                ()
            }
            return cell!
        } else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIST_CELL")
            switch indexPath.row {
            case 0:
                cell?.imageView?.image = UIImage(systemName: "gearshape.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Settings"
            case 1:
                cell?.imageView?.image = UIImage(systemName: "lock.fill")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Privacy Shortcuts"
            case 2:
                cell?.imageView?.image = UIImage(systemName: "questionmark")
                cell?.imageView?.tintColor = .black
                cell?.textLabel?.text = "Help and Support"
            default:
                ()
            }
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADD_CELL")
            cell?.textLabel?.text = "Log Out"
            cell?.textLabel?.textColor = .red
            cell?.textLabel?.textAlignment = .center
            cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            
            cell?.accessoryType = .none
            return cell!
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
