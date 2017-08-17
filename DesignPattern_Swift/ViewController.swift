//
//  ViewController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/8.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var dataArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "设计模式——Swift"
        dataArray = ["适配器模式","工厂方法模式","抽象工厂模式"];
        createUI();
    }
    
    func createUI(){
        let tb = UITableView.init(frame: CGRect.init(x: 0, y: 64, width: self.view.frame.size.width, height: self.view.frame.size.height - 64), style: .plain)
        tb.delegate = self
        tb.dataSource = self
        self.view.addSubview(tb);
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cellid"
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: cellID)
        cell.textLabel?.text = "\((indexPath as NSIndexPath).row+1)" + ". " + dataArray[(indexPath as NSIndexPath).row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath as NSIndexPath).row {
        case 0:
            self.navigationController?.pushViewController(AdapterPatternController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(FactoryController(), animated: true)
            
        case 2:
            self.navigationController?.pushViewController(AbstractFactoryController(), animated: true)
            
            
        default:
            break;
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

