//
//  ViewController.swift
//  Dynamic-Cell-Height
//
//  Created by Barrett Breshears on 4/5/15.
//  Copyright (c) 2015 Barrett Breshears. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableview:UITableView!
    var tableViewData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableview.rowHeight = UITableViewAutomaticDimension 
        
        self.tableViewData.append("Bacon ipsum dolor amet venison pork chop beef tri-tip meatball andouille. Biltong cupim turducken turkey pig, picanha shankle porchetta salami ham hock venison. Bresaola salami sausage corned beef jowl meatball spare ribs chuck short loin chicken. Bacon ham hock swine leberkas salami porchetta kielbasa shankle.")
        self.tableViewData.append("Landjaeger ham hock kevin shankle, sirloin bacon jowl meatball tail. Frankfurter ham chicken corned beef meatloaf ground round pork loin turkey tenderloin cow pork filet mignon bacon short ribs jerky. Drumstick bresaola picanha tail. Ribeye tail landjaeger, sausage pork belly biltong flank shank fatback cow meatloaf. Frankfurter short loin pancetta turkey t-bone, pork chop sirloin. Sirloin pork loin boudin spare ribs pastrami. Pig brisket sirloin chuck turkey.")
        self.tableViewData.append("Spare ribs cupim prosciutto hamburger kevin strip steak pastrami bresaola ham turducken pork kielbasa picanha. Cupim strip steak chicken pork belly beef ribs. Pork chop strip steak flank tenderloin short loin bacon corned beef cupim ground round venison doner ham chicken tail beef. Corned beef cupim tenderloin doner prosciutto filet mignon. Tail ham hock ham hamburger shankle landjaeger sirloin, brisket tongue t-bone pork. Beef ribs porchetta alcatra hamburger, chicken filet mignon ground round ham ball tip shank turducken pork chop. Ham hock venison t-bone frankfurter prosciutto, doner drumstick shankle ball tip tenderloin ribeye.")
        self.tableViewData.append("Frankfurter ham spare ribs turducken venison biltong. Tenderloin kevin flank pork loin capicola. Pastrami tenderloin kevin, turducken beef ribs salami cupim short ribs. Pork flank cupim, meatloaf tail leberkas tri-tip filet mignon tenderloin turducken beef salami.")
        self.tableViewData.append("Doner ball tip meatball shoulder tongue shankle chicken. Ground round turducken kielbasa, chicken meatloaf flank corned beef chuck rump hamburger spare ribs. Beef ribs pork belly filet mignon meatloaf, corned beef andouille tri-tip jerky turkey biltong alcatra ham hock. Alcatra meatloaf capicola, drumstick cupim spare ribs boudin meatball kevin cow ribeye porchetta beef ribs. Cupim alcatra beef pork chop pork belly ground round capicola salami turkey shankle tenderloin chicken frankfurter landjaeger. Cow hamburger meatloaf pancetta bacon rump, venison pork belly kielbasa kevin.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as? CustomTableViewCell;
        if cell == nil {
            cell = CustomTableViewCell()
        }
        
        var data:String = self.tableViewData[indexPath.row] as String!
        cell?.label1.text = data
        cell?.label2.text = data
        
        return cell!;
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    

}

