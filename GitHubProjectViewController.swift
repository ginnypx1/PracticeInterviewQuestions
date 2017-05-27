import UIKit

class GitHubProjectViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // project UI
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var completionPercentage: UILabel!
    @IBOutlet weak var openIssues: UILabel!
    @IBOutlet weak var closedIssues: UILabel!
    @IBOutlet weak var allIssuesTable: UITableView!
    @IBOutlet weak var contributorsCollection: UICollectionView!
    
    // new issue UI
    
    @IBOutlet weak var newIssueName: UITextField!
    @IBOutlet weak var newIssueDescription: UITextView!
    @IBOutlet weak var postNewIssueButton: UIButton!
    
    // data model
    
    var issues = [(String, String, String)]()
    var contributors = [(String, String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // [code that makes a network query to load name and completion percentage for a project]
        // [code that makes a network query to load all issues for a project]
        
        allIssuesTable.delegate = self
        allIssuesTable.dataSource = self
        
        contributorsCollection.delegate = self
        contributorsCollection.dataSource = self
        
        newIssueName.hidden = true
        newIssueDescription.hidden = true
        postNewIssueButton.hidden = true
    }
    
    @IBAction func newIssueButtonPressed(sender: AnyObject) {
        newIssueName.hidden = false
        newIssueDescription.hidden = false
        postNewIssueButton.hidden = false
    }
    
    @IBAction func postNewIssueButtonPressed(sender: AnyObject) {
        // [code that makes a network query to post a new issue for a project]
        // [code that makes a network query to load all issue for a project]
        // [code that displays a success/fail alert view]
        // [code that reveals/hides new issue UI]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return issues.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IssueCell") as! IssueCell
        // [code that stylizes the cell]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // [code that makes a network query to load the most recent comments for a issue]
        // [code that pushes a new view controller with comment data]
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contributors.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = contributorsCollection.dequeueReusableCellWithReuseIdentifier("ContributorCell", forIndexPath: indexPath) as! ContributorCell
        // [code that stylizes the cell]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath:NSIndexPath) {
        // [code that makes a network query to load a contributor for a project]
        // [code that pushes a new view controller with contributor data]
    }
}