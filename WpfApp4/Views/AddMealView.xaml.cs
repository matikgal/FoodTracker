using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using FoodTracker.Models;
using System.Collections.Generic;

namespace FoodTracker
{
    public partial class AddMealView : Window
    {
        private FoodAppDatabaseContext dbContext;

        public AddMealView()
        {
            InitializeComponent();
            dbContext = new FoodAppDatabaseContext();
            LoadMeals();
        }

        private void LoadMeals()
        {
            List<Meal> meals = dbContext.Meals.ToList();
            MealComboBox.ItemsSource = meals;
            MealComboBox.DisplayMemberPath = "Name";
            MealComboBox.SelectedValuePath = "Id";
        }

        private void MealComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (MealComboBox.SelectedItem is Meal selectedMeal)
            {
                MealNameTextBox.Text = selectedMeal.Name;
                KcalTextBox.Text = selectedMeal.Calories.ToString();
                ProteinTextBox.Text = selectedMeal.Protein.ToString();
                CarbohydratesTextBox.Text = selectedMeal.Carbs.ToString();
                FatsTextBox.Text = selectedMeal.Fat.ToString();
            }
        }

        private void AddMealButton_Click(object sender, RoutedEventArgs e)
        {
            string mealName = MealNameTextBox.Text;
            if (decimal.TryParse(MealWeightTextBox.Text, out decimal mealWeight) &&
                int.TryParse(KcalTextBox.Text, out int kcal) &&
                decimal.TryParse(ProteinTextBox.Text, out decimal protein) &&
                decimal.TryParse(CarbohydratesTextBox.Text, out decimal carbohydrates) &&
                decimal.TryParse(FatsTextBox.Text, out decimal fats))
            {
                MealHistory newMeal = new MealHistory
                {
                    MealName = mealName,
                    MealWeight = mealWeight,
                    Kcal = kcal,
                    Protein = protein,
                    Carbohydrates = carbohydrates,
                    Fats = fats,
                    DateAdded = DateOnly.FromDateTime(DateTime.Today)
                };

                dbContext.MealHistories.Add(newMeal);
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
