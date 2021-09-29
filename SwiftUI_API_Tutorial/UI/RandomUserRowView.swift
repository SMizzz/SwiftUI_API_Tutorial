//
//  RandomUserRowView.swift
//  SwiftUI_API_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import Foundation
import SwiftUI

struct RandomUserRowView: View {
  
  var randomUser: RandomUser
  
  init(_ randomUser: RandomUser) {
    self.randomUser = randomUser
  }
  
  var body: some View {
    HStack {
      ProfileImageView(imageUrl: randomUser.profileImgUrl)
      Text("\(randomUser.description)")
        .fontWeight(.heavy)
        .font(.system(size: 25))
        .lineLimit(2)
        .minimumScaleFactor(0.5)
    }.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: 50, maxHeight: 50, alignment: .leading).padding(.vertical)
  }
}

struct RandomUserRowView_Previews: PreviewProvider {
    static var previews: some View {
      RandomUserRowView(RandomUser.getDummy())
    }
}
