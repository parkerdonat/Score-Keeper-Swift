//
//  ScoreViewController.swift
//  Score-Keeper-Swift
//
//  Created by Parker Donat on 9/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var scrollView: UIScrollView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "ScoreKepper"
        
        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.height))
        self.view.addSubview(scrollView!)
        
        self.addScrollView()
        
    }
    
    func addScrollView() {
        
        var view = UIView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        
        var textFieldName = UITextField (frame: CGRectMake(2, 8, 100, 30))
        textFieldName.backgroundColor = UIColor.redColor()
        textFieldName.placeholder = "Game Name"
        view.addSubview(textFieldName)
    
        var labelScore = UILabel (frame: CGRectMake(210, 8, 100, 30))
        labelScore.backgroundColor = UIColor.redColor()
        view.addSubview(labelScore)
        
        var scoreKeeper = UIStepper (frame: CGRectMake(110, 8, 40, 30))
        scoreKeeper.backgroundColor = UIColor.greenColor()
        scoreKeeper.maximumValue = 1000
        scoreKeeper.minimumValue = -1000
        view.addSubview(scoreKeeper)
        
        scrollView?.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
