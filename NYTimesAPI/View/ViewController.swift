//
//  ViewController.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/15/21.
//




import UIKit


class ViewController: UIViewController {
    let aVM = ArticleViewModel()
    
    @IBOutlet var tblView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib.init(nibName: "CustomCell", bundle: nil)
        self.tblView.register(nib, forCellReuseIdentifier: "cell")
        self.tblView.delegate = self
        self.tblView.dataSource  = self
        aVM.getNewYorkApi()
        aVM.completionHander = {
            DispatchQueue.main.async {
                self.tblView.reloadData()
            }
        }
        
    }

}

extension ViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return aVM.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomCell
        print(aVM.getDate(index: indexPath.row))
        print(aVM.getAuthor(index: indexPath.row))
        cell?.newYorkArticleTitle.numberOfLines = 0;
        cell?.newYorkArticleTitle.text = aVM.getTitle(index:indexPath.row)
        cell?.newYorkArticleDate.text = aVM.getDate(index: indexPath.row)
        cell?.newYorkArticleAuthor.text = aVM.getAuthor(index: indexPath.row)
//        cell?.setNewYorkApiLbl(title: article_title, date: aVM.getDate(index: indexPath.row), author: aVM.getDate(index: indexPath.row))

        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let story = UIStoryboard.init(name: "Main", bundle: nil);
        let webKitVC = story.instantiateViewController(identifier: "WebKitViewController") as! WebKitViewController
        let article_url = aVM.getUrl(index: indexPath.row)
        webKitVC.url = article_url
        self.navigationController?.pushViewController(webKitVC, animated: true);
        

        
        
    }
    
    
}
