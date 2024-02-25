//
//  RecipeTableViewCell.swift
//  RC
//
//  Created by Shruti Sachdeva on 24/02/24.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet var recipeImageView: UIImageView!
    
    @IBOutlet var recipeNameLabel: UILabel!
    
    @IBOutlet var recipeNoOfIngredientsLabel: UILabel!
    
    
    @IBOutlet var recipeCookingTimeLabel: UILabel!
    
    
    @IBOutlet var recipeCuisineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with recipe:Recipe){
        recipeImageView.image = UIImage(named: recipe.recipeImageName)
        recipeImageView.contentMode = .scaleAspectFill
        recipeNameLabel.text = recipe.recipeName
        recipeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        recipeNameLabel.numberOfLines = 0
        recipeNameLabel.lineBreakMode = .byWordWrapping
        recipeNoOfIngredientsLabel.text = "# of Ingredients: \(recipe.ingredients.count)"
        recipeCookingTimeLabel.text = "⏰ \(recipe.cookingTime)"
        recipeCuisineLabel.text = "🍽️ \(recipe.cuisine)"
    }

}
