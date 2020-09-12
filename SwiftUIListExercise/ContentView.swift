//
//  ContentView.swift
//  SwiftUIListExercise
//
//  Created by Abdelrahman Mohamed on 7.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedArticle: Article?
    
    var body: some View {
        
        NavigationView {
            
            List(articles) { article in
                ArticleRow(article: article)
                    .onTapGesture {
                        self.selectedArticle = article
                    }
            }
            .sheet(item: self.$selectedArticle, content: { articles in
                ArticleDetailView(article: articles)
            })
//            .sheet(isPresented: self.$showDetailView, content: {
//
//                if self.selectedArticle != nil {
//                    ArticleDetailView(article: self.selectedArticle!)
//                }
//            })
            
            .navigationBarTitle("Your Reading")
        }
        
        //        NavigationView {
        //
        //            List(articles) { article in
        //
        //                ZStack {
        //
        //                    ArticleRow(article: article)
        //
        //                    NavigationLink(destination: ArticleDetailView(article: article)) {
        //
        //                        EmptyView()
        //                    }
        //                }
        //            }
        //            .navigationBarTitle("Your Reading")
        //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ArticleRow: View {
    
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom, 0)
            
            Text("By \(article.author)".uppercased())
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.bottom, 0)
            
            HStack(spacing: 3) {
                ForEach(1...(article.rating), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }
            
            Text(article.excerpt)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
    }
}
