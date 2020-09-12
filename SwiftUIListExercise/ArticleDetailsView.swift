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
                    .aspectRatio(contentMode: .fit)
                    
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
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    // Navigate to the previous screen
                                }, label: {
                                    Image(systemName: "chevron.left.circle.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                })
        )
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDetailsView(article: articles[0])
        }
    }
}
