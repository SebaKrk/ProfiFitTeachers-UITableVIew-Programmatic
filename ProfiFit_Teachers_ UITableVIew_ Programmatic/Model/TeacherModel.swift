//
//  TeacherModel.swift
//  ProfiFit_Teachers_ UITableVIew_ Programmatic
//
//  Created by Sebastian Sciuba on 12/12/2020.
//

import UIKit

struct TeacherModel {
    var image: UIImage
    var name: String
    var titile : String
    var country: UIImage
}


func getTeachers() -> [TeacherModel] {
    let teacher1 = TeacherModel(image: Images.teacherImage1, name: "Adam Ptak", titile: "Mentor", country: CountryFlags.countryFlagGb)
    let teacher2 = TeacherModel(image: Images.teacherImage2, name: "Adrian Markowicz", titile: "Master", country: CountryFlags.countryFlagPl)
    let teacher3 = TeacherModel(image: Images.teacherImage3, name: "Agnieszka Jargas", titile: "Teacher", country: CountryFlags.countryFlagPl)
    let teacher4 = TeacherModel(image: Images.teacherImage4, name: "Agnieszka Wietrzynska", titile: "Teacher", country: CountryFlags.countryFlagPl)
    let teacher5 = TeacherModel(image: Images.teacherImage5, name: "Alekssandro Muo", titile: "International", country: CountryFlags.countryFlagBr)
    let teacher6 = TeacherModel(image: Images.teacherImage6, name: "Alicja Kralkowska", titile: "Master", country: CountryFlags.countryFlagSp)
    let teacher7 = TeacherModel(image: Images.teacherImage7, name: "Alicjka Sieracka", titile: "Teacher", country: CountryFlags.countryFlagPl)
    let teacher8 = TeacherModel(image: Images.teacherImage8, name: "Andrei Kohut", titile: "International", country: CountryFlags.countryFlagAu)
    let teacher9 = TeacherModel(image: Images.teacherImage9, name: "Aneta Ziolkowska", titile: "Teacher", country: CountryFlags.countryFlagAr)
    let teacher10 = TeacherModel(image: Images.teacherImage10, name: "Bartlomiej Czarnecki", titile: "Teacher", country: CountryFlags.countryFlagPl)
    let teacher11 = TeacherModel(image: Images.teacherImage11, name: "Bartlomiej Samp", titile: "International", country: CountryFlags.countryFlagSp)
    let teacher12 = TeacherModel(image: Images.teacherImage12, name: "Bartosz Szostak", titile: "Teacher", country: CountryFlags.countryFlagPl)
    return [teacher1,teacher2,teacher3,teacher4,teacher5,teacher6,teacher7,teacher8,teacher9,teacher10,teacher11,teacher12]
}
