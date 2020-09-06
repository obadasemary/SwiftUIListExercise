//
//  Article.swift
//  SwiftUIListExercise
//
//  Created by Abdelrahman Mohamed on 7.09.2020.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}
