//
//  ContentView.swift
//  SwiftUI_API_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var randomUserViewModel = RandomUserViewModel()
  
    var body: some View {
      
      List(randomUserViewModel.randomUsers) {
        aRandomUser in RandomUserRowView(aRandomUser)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
