using FontAwesome.Sharp;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using FoodTracker.ViewModels;

namespace FoodTracker.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private ViewModelBase _currentChildView;
        private string _name;
        private IconChar _icon;
        

        public ViewModelBase CurrentChildView
        {
            get 
            { 
                return _currentChildView; 
            }
            set 
            { 
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }
        public string Name
        {
            get 
            { 
                return _name; 
            }
            set 
            { 
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }
        public IconChar Icon
        {
            get 
            { 
                return _icon;
            }
            set 
            { 
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }
        public ICommand ShowEditViewCommand {  get; }
        public ICommand ShowAllViewCommand { get; }
        public ICommand ShowStatsViewCommand { get; }
        public MainViewModel()
        {
            ShowEditViewCommand = new ViewModelCommand(ExecuteShowEditViewCommand);
            ShowAllViewCommand = new ViewModelCommand(ExecuteShowAllViewCommand);
            ShowStatsViewCommand = new ViewModelCommand(ExecuteShowStatsViewCommand);

            ExecuteShowAllViewCommand(null);

        }

        private void ExecuteShowAllViewCommand(object obj)
        {
            CurrentChildView = new CurrentMealsViewModel();
        }
        

        private void ExecuteShowStatsViewCommand(object obj)
        {
            CurrentChildView = new MealHistoryViewModel();
        }
        private void ExecuteShowEditViewCommand(object obj)
        {
            CurrentChildView = new EditMealsViewModel();
        }

    }
}
