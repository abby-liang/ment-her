//
//  ViewController.swift
//  ment-her
//  Created by abby on 1/30/21.

import UIKit

class Section {
    let title: String
    let options: [String]
    var isOpened = false
    
    init(title: String,
        options: [String],
        isOpened: Bool = false )
        {
            self.title = title
            self.options = options
            self.isOpened = isOpened
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        
        return tableView
    }()
    
    private var sections = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections = [
            Section(title: "🎨 Art", options: ["Bullet Journal", "Calligraphy", "Ceramics", "Painting"]),
            Section(title: "🧁 Food", options: ["Breakfast", "Lunch", "Dinner", "Desserts", "Snacks"]),
            Section(title: "🎶 Miscellaneous", options: ["Music", "Meditation", "Skin Care", "Reading"]),
            Section(title: "🛼 Sports", options: ["Biking", "Hiking/Walking", "Skating", "Stretching", "Workouts", "Yoga"]),
        ]

        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = view.bounds
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        
        if section.isOpened {
            return section.options.count + 1
        }
        
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = sections[indexPath.section].title
        }
        else {
            cell.textLabel?.text = sections[indexPath.section].options[indexPath.row - 1] // Not include title
            cell.backgroundColor = UIColor(red: 187/250, green:156/250, blue: 217/250, alpha:0.27)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
            tableView.reloadSections([indexPath.section], with: .none)
        }
        else {
            print("Sub-cell")
        }
    }

}

