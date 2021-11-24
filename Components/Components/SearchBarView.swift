//
//  SearchBarView.swift
//  Components
//
//  Created by Sezer Tunca on 18/11/2021.
//
import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.white)
            TextField("Search by name or a symbol...", text: $searchText)
                .foregroundColor(
                    searchText.isEmpty ? Color.white : Color.white
                )
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.orange)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            searchText = ""
                        }
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .shadow(color: Color.white.opacity(0.15), radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
    }
}
