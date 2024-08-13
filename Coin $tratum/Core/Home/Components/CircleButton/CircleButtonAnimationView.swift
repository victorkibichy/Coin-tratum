//
//  CircleButtonAnimationView.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/13/24.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @State private var animate: Bool = false
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            .onAppear {
                animate.toggle()
            }
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView()
    }
}
