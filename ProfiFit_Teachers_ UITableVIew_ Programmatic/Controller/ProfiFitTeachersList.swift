//
//  ProfiFitTeachersList.swift
//  ProfiFit_Teachers_ UITableVIew_ Programmatic
//
//  Created by Sebastian Sciuba on 12/12/2020.
//

import UIKit

class ProfiFitTeachersList : UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var tableView = UITableView()
    var teachers : [TeacherModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = "ProFi-Fitness®Teachers"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureTableView()
        teachers = getTeachers()
        
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.rowHeight = 80
        tableView.register(TeacherCell.self, forCellReuseIdentifier: Cells.teacherCell)
        setUpViewConstreints()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func setUpViewConstreints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(teachers.count)
        return teachers.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: Cells.teacherCell, for: indexPath) as! TeacherCell
        
        let teacher = teachers[indexPath.row]
        cell.teacherImage.image = teacher.image
        cell.teacherLabel.text = teacher.name
        cell.titleLabele.text = teacher.titile
        cell.countryImage.image = teacher.country
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
