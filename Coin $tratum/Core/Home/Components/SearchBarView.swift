//
//  SearchBarView.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 9/24/24.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String 
    var body: some View {
        HStack {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.theme.secondaryText)

            TextField("Search by name or Symbol...", text: $searchText)
                .foregroundColor(searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                    .padding()
                    .offset(x: 10)
                    .foregroundColor(Color.theme.accent)
                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    .onTapGesture {
                        UIApplication.shared.endEditing()
                        searchText = ""
                    }
                    , alignment: .trailing
                )
               
            
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
        .fill(Color.theme.background)
        .shadow(
            color: Color.theme.accent.opacity(0.15), radius: 10, x: 0, y: 0)
        
        )
        
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
