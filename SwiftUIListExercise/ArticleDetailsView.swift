//
//  DetailsView.swift
//  SwiftUIListExercise
//
//  Created by Abdelrahman Mohamed on 11.09.2020.
//

import SwiftUI

struct ArticleDetailsView: View {
    
    var article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Group {
                    Text(article.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                    
                    Text("By \(article.author)".uppercased())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(article.content)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDetailsView(article: articles[0])
        }
//        ArticleDetailsView(
//            article:
//                Article(
//                    title: "Vision Framework: Working with Text and Image Recognition",
//
//                    author: "Sai Kambampati",
//
//                    rating: 4,
//
//                    excerpt: "2 years ago, at WWDC 2017, Apple released the Vision framework, an amazing, intuitive framework that would make it easy for developers to add computer vision to their apps.",
//
//                    image: "vision-framework",
//
//                    content: "2 years ago, at WWDC 2017, Apple released the Vision framework, an amazing, intuitive framework that would make it easy for developers to add computer vision to their apps. Everything from text detection to facial detection to barcode scanners to integration with Core ML was covered in this framework.\n\nThis year, at WWDC 2019, Apple released several more new features to this framework that really push the field of computer vision. That’s what we’ll be looking at in this tutorial.\n\nFor many years now, Snapchat has reigned as the popular social media app among teens. With its simple UI and great AR features, high schoolers around the world love to place cat/dog filters themselves. Let’s flip the script!"
//                )
//        )
    }
}
