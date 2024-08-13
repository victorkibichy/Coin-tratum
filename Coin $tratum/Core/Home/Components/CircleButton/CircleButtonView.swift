//
//  CircleButtonView.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/13/24.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
