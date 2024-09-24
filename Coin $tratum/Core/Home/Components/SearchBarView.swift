//
//  SearchBarView.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 9/24/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var searchText: String = ""
    var body: some View {
        HStack {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.theme.secondaryText)

            TextField("Search by name or Symbol...", text: $searchText)
                .foregroundColor(searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent)
            
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
        SearchBarView()
    }
}
