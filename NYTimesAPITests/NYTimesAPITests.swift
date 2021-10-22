//
//  NYTimesAPITests.swift
//  NYTimesAPITests
//
//  Created by Jaavion Davis on 10/21/21.
//

import XCTest
@testable import NYTimesAPI
class NYTimesAPITests: XCTestCase {
    let apiManager = ApiManager()
    var viewModel: ArticleViewModel?
    override func setUp() {
        viewModel = ArticleViewModel()
        let objArticle = Article(title: "Joe Biden", url: "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=aDFfPYP6tsmCYHNdOPUcNqPCvus1O4Ed", byline: "Joe Biden", published_date: "08/19/2003")
        
        
        viewModel?.newYorkResults = [objArticle]
    }
    override func tearDown() {
        viewModel = nil
    }
    
    func testGetNewYorkAPI() {
        let objArticle = Article(title: "Joe Biden", url: "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=aDFfPYP6tsmCYHNdOPUcNqPCvus1O4Ed", byline: "Joe Biden", published_date: "08/19/2003")
        
        
        viewModel?.newYorkResults = [objArticle]
       let count = viewModel?.newYorkResults?.count
        XCTAssertEqual(count, 1)
    }
    func testGetCount() {
        let count = viewModel?.getCount();
        XCTAssertEqual(count, 1);
        
    }
    
    func testGetTitle(){
        let title = viewModel?.getTitle(index: 0);
        XCTAssertEqual(title, "Joe Biden")
    }
    func testGetDate() {
        let date = viewModel?.getDate(index: 0);
        XCTAssertEqual(date, "08/19/2003")
    }
    func testGetAuthor() {
        let author = viewModel?.getAuthor(index: 0);
        XCTAssertEqual(author, "Joe Biden")

        
        
    }
    func testGetUrl() {
        let url =  viewModel?.getUrl(index:0);
        
        XCTAssertEqual(url, "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=aDFfPYP6tsmCYHNdOPUcNqPCvus1O4Ed")
        

    }

}
 
