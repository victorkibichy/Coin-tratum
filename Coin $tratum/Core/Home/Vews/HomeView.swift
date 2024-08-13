//
//  HomeView.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/13/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            
            //backgroundlayer
            Color.theme.background
                .ignoresSafeArea()
            
            //content layer
            VStack{
                
                HStack{
                    CircleButtonView(iconName: "info")
                    
                    Spacer()
                    
                    Text("Live Prices")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.theme.accent)
                    Spacer()
                    
                    CircleButtonView(iconName: "chevron.right")


                    
                }
                
                Spacer(minLength: 0)
                  
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
