   M S B A M L   `   `   `  ����F  BFoodTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FoodTracker.ViewsFoodTracker.Views  5      ?$clr-namespace:FoodTracker.ViewModelsFoodTracker.ViewModels  5      '    !FoodTracker.Views.MealHistoryView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:FoodTracker.Views     5      :	viewModel$clr-namespace:FoodTracker.ViewModels     5      $
��Auto��5      $
��Auto��6,     � DataContext  5
      1   +FoodTracker.ViewModels.MealHistoryViewModel  5   
    � 	Resources 5         RoundedButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Padding��%�  &	        �� 5   
   " ��6+   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� 
���   �$��1q�65   $ 20��6I   $ 10q�6[   
������ ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5      �� 5       � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$
 10,5q�6(   �� 5       � ��$ 10q�6'   5      5      .��5!      �  � ColumnDefinitions 5"   
   �� 5#      $��1* �6   �� 5$      $��4* �6   .+�5(   
   �� $	��Top=�6   $��20q�6-   .+�5)      (  "System.Windows.Controls.DatePicker  -   5        	  Name$	 
DataPicker��5)      $��0,0,0,20q�6b   5*      &   System.Windows.Controls.DataGrid  5-   
   -   5        $
��grid��5-      $��10q�6   $��1��6+   
�������6;   5.      5/      