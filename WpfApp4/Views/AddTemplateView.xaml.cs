using System.Windows;
using System.Windows.Controls;
using FoodTracker.Models;

namespace FoodTracker
{
    
    public partial class AddTemplateView : Window
    {
        private FoodAppDatabaseContext dbContext;
        public AddTemplateView()
        {
            dbContext = new FoodAppDatabaseContext();
            InitializeComponent();
        }

        private void AddTemplateButton_Click(object sender, RoutedEventArgs e) 
        {
           string mealName = MealNameTextBox.Text;
            if(int.TryParse(KcalTextBox.Text, out int kcal) &&
                decimal.TryParse(ProteinTextBox.Text,out decimal protein) &&
                decimal.TryParse(CarbohydratesTextBox.Text,out decimal carbohydrates) &&
                decimal.TryParse(FatsTextBox.Text,out decimal fats))
            {
                Meal newMeal = new Meal
                {
                    Name = mealName,
                    Calories = kcal,
                    Protein = (double)protein,
                    Carbs = (double)carbohydrates,
                    Fat = (double)fats
                };
                dbContext.Meals.Add(newMeal);
                dbContext.SaveChanges();
                MessageBox.Show("Meal added successfully!");

                this.Close();
            }
            else
            {
                MessageBox.Show("Please enter valid values.");
            }
        }
    }
}
