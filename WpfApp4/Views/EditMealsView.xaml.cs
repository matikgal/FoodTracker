using FoodTracker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FoodTracker.Views
{
    
    public partial class EditMealsView : UserControl
    {
        private FoodAppDatabaseContext dbContext;
        public EditMealsView()
        {
            InitializeComponent();
            dbContext = new FoodAppDatabaseContext();
            InitializeData();
        }
        private void InitializeData() 
        { 
        List<Meal> meals = dbContext.Meals.ToList();
        grid.ItemsSource = meals;
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e) 
        {
            var selectedMeal = grid.SelectedItem as Meal;
            if (selectedMeal != null)
            {
                dbContext.Meals.Remove(selectedMeal);
                dbContext.SaveChanges();
                InitializeData();
            }
            else 
            {
                MessageBox.Show("siema co tam","Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void AddButton_Click(Object sender, RoutedEventArgs e) 
        {
            AddTemplateView addTemplateView = new AddTemplateView();
            addTemplateView.ShowDialog();
            InitializeData();
        }
    }
}
