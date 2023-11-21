//
//  BookView.swift
//  MyLibrary
//
//  Created by Isis Silva on 21/11/23.
//

import SwiftUI

struct BookView: View {
  let book: Book
  
  var body: some View {
    VStack(spacing: 16) {
      Text(book.title)
      Image(systemName: book.image.lowercased())
      Text(book.author)
    }
    .padding()
    .frame(width: 150, height: 200)
    .background(
      Image("alice").resizable()
    )
    .cornerRadius(5)
  }
}

#Preview {
  BookView(book: Book(
    title: "Alice in Wonderland",
    author: "Lewis Carroll",
    image: "heart.circle")
  )
}
