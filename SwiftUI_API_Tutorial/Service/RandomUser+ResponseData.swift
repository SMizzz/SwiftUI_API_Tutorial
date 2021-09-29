//
//  RandomUser+ResponseData.swift
//  SwiftUI_API_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import Foundation

struct RandomUser: Codable, Identifiable, CustomStringConvertible {
  var id = UUID()
  var name: Name
  var picture: Picture
  private enum CodingKeys: String, CodingKey {
    case name
    case picture
  }
  static func getDummy() -> Self {
    print(#fileID, #function, #line, "")
    return RandomUser(name: Name.getDummy(), picture: Picture.getDummy())
  }
  
  var profileImgUrl: URL {
    get {
      URL(string: picture.medium)!
    }
  }
  
  var description: String {
    return name.description
  }
}

struct Name: Codable, CustomStringConvertible {
  var title: String
  var first: String
  var last: String
  
  var description: String {
    return "[\(title)] \(last), \(first)"
  }
  
  static func getDummy() -> Self {
    print(#fileID, #function, #line, "")
    return Name(title: "IOS Developoer", first: "Shin", last: "Mizy")
  }
}

struct Picture: Codable {
  var large: String
  var medium: String
  var thumbnail: String
  
  static func getDummy() -> Self {
    print(#fileID, #function, #line, "")
    return Picture(large: "https://randomuser.me/api/portraits/women/48.jpg",
                   medium: "https://randomuser.me/api/portraits/women/48.jpg",
                   thumbnail: "https://randomuser.me/api/portraits/women/48.jpg")
  }
}

struct Info: Codable {
  var seed: String
  var resultsCount: Int
  var page: Int
  var version: String
  
  private enum CodingKeys: String, CodingKey {
    case seed
    case resultsCount = "results"
    case page
    case version
  }
}

struct RandomUserResponse: Codable, CustomStringConvertible {
  var results: [RandomUser]
  var info: Info
  
  private enum CodingKeys: String, CodingKey {
    case results
    case info
  }
  
  var description: String {
    return "results.count: \(results.count) / info : \(info.seed)"
  }
}
