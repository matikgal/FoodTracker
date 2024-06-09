using Microsoft.EntityFrameworkCore;
using System.Windows;
using System.Windows.Input;
using FoodTracker.Models;
using System.Linq;
using System.Collections.Generic;
using FoodTracker.Views;

namespace FoodTracker
{
    public partial class MainWindow : Window
    {
       
        public MainWindow()
        {
            InitializeComponent();
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
            
        }

        

        

        private void CtrlBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
            {
                WindowState = WindowState.Maximized;
            }
            else WindowState = WindowState.Normal;
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
       
    }
}
