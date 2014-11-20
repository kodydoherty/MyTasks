//
//  AddToDoViewController.swift
//  MyTasks
//
//  Created by Samuel D Doherty on 11/19/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var toDoItem: Todo?

   
  
   
    @IBOutlet weak var textField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(sender: UIBarButtonItem) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    

    
    @IBAction func doneButtonTapped(sender: UIBarButtonItem) {
        if self.textField.text != nil {
            var todo = Todo()
            todo.task = textField.text
            self.toDoItem = todo
        }
        
    self.navigationController?.popViewControllerAnimated(true)
    }
    // get rid of keyboard
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
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
