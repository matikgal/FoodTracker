using Microsoft.EntityFrameworkCore;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using FoodTracker.ViewModels;
using FoodTracker.Models;
using System.Data.Linq;

namespace FoodTracker.Views
{
    public partial class CurrentMealsView : UserControl
    {
        private CurrentMealsViewModel viewModel;
        private ICollectionView _collectionView;
        private FoodAppDatabaseContext dbContext;


        public CurrentMealsView()
        {
            InitializeComponent();
            viewModel = new CurrentMealsViewModel();
            dbContext = new FoodAppDatabaseContext(); // Tworzenie instancji kontekstu EF
            InitializeData();

        }

        private void InitializeData()
        {
            DateOnly dzis = DateOnly.FromDateTime(DateTime.Today);
            List<MealHistory> mealHistoryList = dbContext.MealHistories
                                                    .Where(x => x.DateAdded.HasValue && x.DateAdded.Value == dzis)
                                                    .ToList();

            grid.ItemsSource = mealHistoryList;
            decimal sumKcal = (int)mealHistoryList.Sum(x => (x.Kcal * x.MealWeight) / 100);
            AllKcal.Content = sumKcal.ToString();
            decimal sumCarbs = (int)mealHistoryList.Sum(x => (x.Carbohydrates * x.MealWeight) / 100);
            AllCarbs.Content = sumCarbs.ToString();
            decimal sumProtein = (int)mealHistoryList.Sum(x => (x.Protein * x.MealWeight) / 100);
            AllProtein.Content = sumProtein.ToString();
            decimal sumFat = (int)mealHistoryList.Sum(x => (x.Fats * x.MealWeight) / 100);
            AllFat.Content = sumFat.ToString();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            // Pobranie zaznaczonego elementu z DataGrid
            var selectedMeal = grid.SelectedItem as MealHistory;
            if (selectedMeal != null)
            {
                // Usunięcie elementu z bazy danych
                dbContext.MealHistories.Remove(selectedMeal);
                dbContext.SaveChanges();

                // Odświeżenie danych w DataGrid
                InitializeData();
            }
            else
            {
                MessageBox.Show("Nie wybrano żadnego elementu do usunięcia.", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void AddMealButton_Click(object sender, RoutedEventArgs e)
        {
            AddMealView addMealWindow = new AddMealView();
            addMealWindow.ShowDialog();

            // Odśwież dane po zamknięciu okna dodawania posiłku
            InitializeData();
        }



    }
}
