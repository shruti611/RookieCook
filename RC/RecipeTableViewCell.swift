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
    
    @IBOutlet var favouriteButton: UIButton!
    
    
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
        if recipe.favourite {
            let largeConfig = UIImage.SymbolConfiguration(pointSize: 12, weight: .bold, scale: .large)
                   
            let largeBoldDoc = UIImage(systemName: "heart.fill", withConfiguration: largeConfig)
            favouriteButton.setImage(largeBoldDoc, for: .normal)
            favouriteButton.tintColor = .red
        }
        else{
//            let largeConfig = UIImage.SymbolConfiguration(pointSize: 12, weight: .bold, scale: .large)
//
//            let largeBoldDoc = UIImage(systemName: "", withConfiguration: largeConfig)
//            favouriteButton.setImage(largeBoldDoc, for: .normal)
            favouriteButton.isHidden = true
            
        }
    }
    

}
