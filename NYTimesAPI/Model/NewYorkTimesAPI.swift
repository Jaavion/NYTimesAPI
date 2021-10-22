//
//  NewYorkTimesAPI.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/15/21.
//

import Foundation


// results: [
 // title:info
// url:info
//byline:info
//published_data
//]
struct NewYorkTimesAPI:Decodable {
    var results:[Article]
}

struct Article:Decodable {
    var title:String //jaavion
    var url:String //wewewe
    var byline:String 
    var published_date:String
}

