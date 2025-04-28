////
////  ContentView.swift
////  Coin $tratum
////
////  Created by  Bouncy Baby on 8/11/24.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//                    ZStack {
//                        VStack {
//                            TextField ("Enter your address", text:.constant(""))
//                               .padding()
//                               .background(Color.gray.opacity(0.2))
//                               .cornerRadius(10)
//                            SecureField("Enter your password", text:.constant(""))
//                               .padding()
//                               .background(Color.gray.opacity(0.2))
//                               .cornerRadius(10)
//                            NavigationLink(destination: HomeView()) {
//                                Text("Login")
//                                   .font(.headline)
//                                   .foregroundColor(.white)
//                                   .padding()
//                                   .background(Color.blue)
//                                   .cornerRadius(10)
//                            }
//                        }
//                    }
//                   .padding()
//                }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .environmentObject(HomeViewModel())
//    }
//}
