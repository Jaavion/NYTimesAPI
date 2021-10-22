//
//  ApiNetworkManger.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/15/21.
//

import Foundation


class ApiManager {
    var completionHandler:((NewYorkTimesAPI)->())?
    func getArticleApi(url:String) {
        let newYorkTimesUrl = URL.init(string: url)
        
        URLSession.shared.dataTask(with: newYorkTimesUrl!) { data, response, error in
            let jsonDecoder = JSONDecoder.init()
            let model = try! jsonDecoder.decode(NewYorkTimesAPI.self, from: data!)
            print(model)
            self.completionHandler?(model)
            
        }.resume()
    }
}
