//
//  FirstViewController.swift
//  ClockApp
//
//  Created by Paul Maxeiner on 8/17/16.
//  Copyright © 2016 Paul Maxeiner. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(FirstViewController.updateTime), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTime() {
        timeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .ShortStyle, timeStyle: .FullStyle)
    }

}

