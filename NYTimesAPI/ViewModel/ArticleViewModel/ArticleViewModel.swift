//
//  ArticleViewModel.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/15/21.
//

import Foundation
class ArticleViewModel {
    var completionHander:(()->())?
    var apimanager = ApiManager()
    var newYorkArray: NewYorkTimesAPI?
    var newYorkResults:[Article]?
    
    func getNewYorkApi() {
        apimanager.getArticleApi(url: "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=aDFfPYP6tsmCYHNdOPUcNqPCvus1O4Ed")
        apimanager.completionHandler = { data in
            self.newYorkArray = data
            //create a variable inside of a function?
            // access this property within the list
            // array of results then become new york results
            //inside of new york results
            self.newYorkResults = self.newYorkArray?.results
            self.completionHander?()
            
        }

    }
    
    
//[]
    
    

    func getCount() -> Int {
        return newYorkResults?.count ?? 0

    }

    func getTitle(index:Int) -> String?{
        if let _  = newYorkResults{
            return newYorkResults?[index].title
        }
        return nil
    }
    func getDate(index:Int) -> String?{
        if let _  = newYorkResults{
            return newYorkResults?[index].published_date
        }
        return nil
    }
    func getAuthor(index:Int) -> String? {
        if let _  = newYorkResults{
            return newYorkResults?[index].byline
        }
        return nil
    }
    func getUrl(index:Int) -> String? {
        if let _  = newYorkResults{
            return newYorkResults?[index].url
        }
        return nil
    }

}
