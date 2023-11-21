//
//  BooksCountView.swift
//  MyLibrary
//
//  Created by Isis Silva on 21/11/23.
//

import SwiftUI

struct BooksCountView: View {
  let count: Int
  
  var body: some View {
    HStack {
      Image(systemName: "book")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Number of books: \(count)")
    }
    .padding(.horizontal)
  }
}

#Preview {
  BooksCountView(count: 2)
}
