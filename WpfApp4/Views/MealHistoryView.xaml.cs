using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Controls;
using FoodTracker.Models;

namespace FoodTracker.Views
{
    public partial class MealHistoryView : UserControl
    {
        private FoodAppDatabaseContext dbContext;

        public MealHistoryView()
        {
            dbContext = new FoodAppDatabaseContext();
            InitializeComponent();
            InitializeData(); // Load initial data
        }

        private void InitializeData(DateOnly? selectedDate = null)
        {
            if (!selectedDate.HasValue)
            {
                selectedDate = DateOnly.FromDateTime(DateTime.Today);
            }

            List<MealHistory> mealHistoryList = dbContext.MealHistories
                .Where(x => x.DateAdded.HasValue && x.DateAdded.Value == selectedDate.Value)
                .ToList();

            grid.ItemsSource = mealHistoryList;
        }

        private void DataPicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DataPicker.SelectedDate.HasValue)
            {
                DateOnly selectedDate = DateOnly.FromDateTime(DataPicker.SelectedDate.Value);
                InitializeData(selectedDate);
            }
        }
    }
}
