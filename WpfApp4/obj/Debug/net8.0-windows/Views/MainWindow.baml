   M S B A M L   `   `   `  ����F  BFoodTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FoodTracker.ViewsFoodTracker.Views  5   	   ?$clr-namespace:FoodTracker.ViewModelsFoodTracker.ViewModels  5   	       FoodTracker.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   +localclr-namespace:FoodTracker.Views  5   	   4	viewModel$clr-namespace:FoodTracker.ViewModels  5   	     � Title$  
MainWindow��5
   	   $	��800��6   $
��1300��6)    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 
ResizeMode$ CanResizeWithGrip=�6#    � DataContext 5      *   $FoodTracker.ViewModels.MainViewModel  5   
    � 	Resources 5         RoundedButtonStyle �� 
TargetType �� Property �� Value  
menuButton	 �� 
TargetType
 �� CornerRadius �� Orientation �� DataType2   ,FoodTracker.ViewModels.CurrentMealsViewModel(   "FoodTracker.Views.CurrentMealsView/   )FoodTracker.ViewModels.EditMealsViewModel%   FoodTracker.Views.EditMealsView1   +FoodTracker.ViewModels.MealHistoryViewModel'   !FoodTracker.Views.MealHistoryView��%�  &	        &	 �     (�� 	    51      *, +)(�� ;    55      *, +)(�� m    58      *, +)�� 5   
   " ��6+   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��$ 3,3,3,0q�6'   5      �� 5   
   " 	�6#   .�5      ��  � �� 5      �� 5      "	 	�6&   .R�5      �� 
������ 
������ $��0q�6T   $
 20��6h   ._�5       �� $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   .+�5!   "   �� $��Center=�63   $��Center=�6P   5"      5#      5$      5&      �� 5'       � ��$
 10,5q�6(   �� 5(       � ��$ 10q�6'   �� 5)       � ��
 ���� 6+   �� 5*       � ��
 �����6+   �� 5+       � ��$ 18(�6)   �� 5,       � ��$
 Bold"�6+   �� 5-       � ��$
 Left=�64   �� 5.       � ��$ Center=�62   5/      �� 51   
   "  6   .R�52        53      �� 55   
   "  6   .R�56        57      �� 58   
   "  6   .R�59        5:      5;      .��5=      �� $
 10��6   
������ ._�5?   
   �  � ColumnDefinitions 5@      �� 5A      $	��240 �6#   �� 5B      $��* �6#   .+�5E      �� $
 	10,0,0,10��6   $��0��6.     colorbg1#��[ 6>   ._�5F      �� .+�5G      �� $ 
Horizontal=�6!   $��40��6:   $��25q�6F   .+�5H      �� $��/Loga/book_logo.png��6    $��40��6=   $��40��6I   �� 5I      $��Lorem ��6$   $��40��62   $��30(�6>    
 colort#��[ 6L   $��20,0,0,0q�5J   $   $��Bottom=�66   $��	Monserrat)�6Q   $��Medium"�6h   5K      �� 5M      .+�5O      	� #��[ 6&    
 color2
 � Tag# [ 6J   ��5P   &   �� *ShowAllViewCommand+.��5Q      �� $ 
Horizontal=�6)   .+�5R   "   !  FontAwesome.Sharp.IconImage  �	  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]] 	  Icon$ Burger=�6/     menuButtonIcon#��[ 6=   �� 5S   "   $
��Menu��6,     menuButtonText#��[ 68   5T      5U      	� 5V      #��[ 6&   # [ 6J   ��5W   &   �� *ShowEditViewCommand+.��5X      �� $ 
Horizontal=�6)   .+�5Y   "     $ PenToSquare=�6/   #��[ 6B   �� 5Z   "   $��Make a dish��6,   #��[ 6?   5[      5\      	� 5]      #��[ 6&   # [ 6J   ��5^   &   �� *ShowStatsViewCommand+.��5_      �� $ 
Horizontal=�6)   .+�5`   "     $ ChartSimple=�6/   #��[ 6B   �� 5a   "   $��History��6,   #��[ 6;   5b      5c      5d      5e      5f      �� 5h      $
 	0,10,10,0��6   $��1��6.     colorbg2#��[ 6>   ._�5i      �  � RowDefinitions 5j      �� 5k      $��35 �6(   �� 5l      $��* �6(   .+�5p      �� -   5         ��Name$ CtrlBar��5p   !   $��0��62   $ 
Horizontal=�6?   $��RightToLeft=�6X   #��[ 5q   !   .+�5r      �� -   5         ��Name$ btnClose��5r   !   #��[  6J   .��5s        $ Close=�6+   5t      �� 5u      -   5        $ btnMaximize��5u   !   #��[  6P   .��5v        $ Maximize=�6+   5w      �� 5x      -   5        $ btnMinimize��5x   !   #��[  6P   .��5y        $ Minimize=�6+   5z      5{      �� 5~      $��1��6J   ��6%   �� *CurrentChildView+6J   5      5�      5�      5�      5�      