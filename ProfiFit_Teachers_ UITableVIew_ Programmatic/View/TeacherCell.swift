//
//  TeacherCell.swift
//  ProfiFit_Teachers_ UITableVIew_ Programmatic
//
//  Created by Sebastian Sciuba on 12/12/2020.
//
//


import UIKit

class TeacherCell : UITableViewCell {
    
    let containerView:UIView = {
        let view = UIView()
        view.clipsToBounds = true
        return view
    }()
    
    let teacherImage : UIImageView = {
        var image = UIImageView(image: #imageLiteral(resourceName: "AdamPtak"))
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 35
        image.clipsToBounds = true
        return image
    }()
    
    let teacherLabel: UILabel = {
        var label = UILabel()
        label.text = "Name&Sername"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        
        return label
    }()
    
    let titleLabele : UILabel = {
        var label = UILabel()
        label.text = "Teacher"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.backgroundColor = .red
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true

        return label
    }()
    
    let countryImage : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "be"))
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier:String? ){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func setupViewConstraint() {
        contentView.addSubview(teacherImage)
        teacherImage.translatesAutoresizingMaskIntoConstraints = false
        teacherImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        teacherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10).isActive = true
        teacherImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        teacherImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        contentView.addSubview(containerView)
//        containerView.backgroundColor = .red
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: teacherImage.trailingAnchor,constant: 10).isActive = true
        containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        containerView.addSubview(teacherLabel)
        teacherLabel.translatesAutoresizingMaskIntoConstraints = false
        teacherLabel.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        teacherLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        teacherLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        
        containerView.addSubview(titleLabele)
        titleLabele.translatesAutoresizingMaskIntoConstraints = false
        titleLabele.topAnchor.constraint(equalTo: self.teacherLabel.bottomAnchor).isActive = true
        titleLabele.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor).isActive = true
        
        contentView.addSubview(countryImage)
        countryImage.translatesAutoresizingMaskIntoConstraints = false
        countryImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        countryImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        countryImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        countryImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        
    }
    
}
