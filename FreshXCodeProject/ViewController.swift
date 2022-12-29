//
//  ViewController.swift
//  FreshXCodeProject
//
//  Created by nm on 21/12/2022.
//

import UIKit

private let customCellReuseIdentifier = "customCell"

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let sentences = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in felis leo. Praesent non lorem id justo ultrices pellentesque. Aliquam venenatis quam vel odio auctor finibus hendrerit in elit.","Maecenas facilisis quam a elit faucibus fermentum. Suspendisse potenti. Ut augue augue, tincidunt dictum rhoncus at, tincidunt sit amet erat. Duis vel accumsan ante. Suspendisse lacinia vitae massa eleifend lobortis. Nunc arcu tortor, vehicula convallis mollis id, feugiat eget enim.","Cras pulvinar accumsan ante, vitae tempor eros egestas in. Nulla facilisi.","Mauris eget finibus erat. Proin lacinia leo nec turpis vulputate, non aliquet leo ullamcorper. Cras tristique quam lectus, quis luctus purus tincidunt lobortis. Phasellus facilisis nec tellus eu interdum.","Nulla pharetra quis turpis at ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse pellentesque dapibus vehicula.","Cras tristique vehicula ullamcorper. Proin sed eros lobortis, sodales diam non, varius nisi. Proin metus nibh, viverra et viverra sit amet, vehicula at urna. Nam nunc mi, condimentum sit amet nunc non, posuere sagittis lorem. Vivamus quis ligula id turpis accumsan semper eu eget nisi. Nulla mollis non nunc eget ultricies."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
        print("test 123...")
        
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: customCellReuseIdentifier)
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row) was selected!")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sentences.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = self.myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        //cell.textLabel?.text = self.sentences[indexPath.row]
        //return cell
        
        let customCell = self.myTableView.dequeueReusableCell(withIdentifier: customCellReuseIdentifier, for: indexPath) as! CustomCell
        customCell.lblSentence.text = self.sentences[indexPath.row]
        return customCell
        
    }
    
}
