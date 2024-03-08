//
//  RecipeTableViewController.swift
//  RC
//
//  Created by Shruti Sachdeva on 24/02/24.
//

import UIKit

class RecipesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        var cuisineTypes:[Cuisines] = []
        for recipe in recipes {
            if !cuisineTypes.contains(recipe.cuisine){
                cuisineTypes.append(recipe.cuisine)
            }
            
        }
        print("____Inside func numberOfSections___")
        print(cuisineTypes)
        return cuisineTypes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var sectionWiseRecipes:[Recipe] = []
        for recipe in recipes {
            if recipe.cuisine == Cuisines.element(at: section) {
                sectionWiseRecipes.append(recipe)
            }
            
        }
        print("___Inside func numberOfRowsinSection___\(section)")
        print(sectionWiseRecipes)
        return sectionWiseRecipes.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "\(Cuisines.element(at: section))"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> RecipeTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeTableViewCell
        var recipesForSection:[Recipe] = []
        for recipe in recipes{
            if recipe.cuisine == Cuisines.element(at: indexPath.section){
                recipesForSection.append(recipe)
            }
        }
        let recipe = recipesForSection[indexPath.row]
        cell.update(with: recipe)

        // Configure the cell...

        return cell
    }
    
    
    
    @IBSegueAction func showDetailedRecipe(_ coder: NSCoder, sender: Any?) -> RecipeDetailTableViewController? {
        if let cell = sender as? RecipeTableViewCell, let indexPath = tableView.indexPath(for: cell){
            var recipesForSection:[Recipe] = []
            for recipe in recipes{
                if recipe.cuisine == Cuisines.element(at: indexPath.section){
                    recipesForSection.append(recipe)
                }
            }
            let recipe = recipesForSection[indexPath.row]
            return RecipeDetailTableViewController(coder: coder, recipe: recipe)
        }
        return RecipeDetailTableViewController(coder: coder,recipe: nil)
    }
    
    @IBAction func unwindToRecipes(segue:UIStoryboardSegue){
        guard segue.identifier == "unwindToRecipeList",
              let sourceViewController = segue.source as? RecipeDetailTableViewController,
              let recipe = sourceViewController.recipe else{
            return
        }
           
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            for (index,oneOftheRecipe) in recipes.enumerated() {
                if recipe.recipeName==oneOftheRecipe.recipeName {
                    recipes[index] = recipe
                }
            }
//            recipes[selectedIndexPath.row] = recipe
            print(recipe.favourite)
            tableView.reloadRows(at: [selectedIndexPath], with: .automatic)
        }
        
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
