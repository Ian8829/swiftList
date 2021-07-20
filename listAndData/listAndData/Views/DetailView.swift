//
//  DetailView.swift
//  listAndData
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct DetailView: View {
	let book: Book
	
	var body: some View {
		Book.Image(title: book.title)
		
		Spacer()
	}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
			DetailView(book: .init())
    }
}
