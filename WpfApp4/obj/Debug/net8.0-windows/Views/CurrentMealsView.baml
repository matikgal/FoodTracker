   M S B A M L   `   `   `  ����F  BFoodTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FoodTracker.ViewsFoodTracker.Views  5      ?$clr-namespace:FoodTracker.ViewModelsFoodTracker.ViewModels  5      (    "FoodTracker.Views.CurrentMealsView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:FoodTracker.Views     5      :	viewModel$clr-namespace:FoodTracker.ViewModels     5      $
��Auto��5      $
��Auto��6,     � 	Resources  5	         RoundedContainerStyle �� 
TargetType �� Property �� Value  RoundedButtonStyle �� 
TargetType �� CornerRadius �� Padding��%  &	        &	 �     �� 5   
   " ��6.   .�5      ��  � �� �#bba7376+   �� 5       �@��CornerRadius$ 10��6-   �� 5       � ��$ 10q�6'   �� 5       �@��Padding$ 30,10q�6(   5      �� 5   
   " ��6+   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� 
���   �$��1q�65   $ 20��6I   $ 10q�6[   
������ ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5      �� 5       � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$
 10,5q�6(   �� 5       � ��$ 10q�6'   5       5!      .��5#      �  � ColumnDefinitions 5$   
   �� 5%      $
��Auto �6   �� 5&      $��* �6   .+�5)   
   �� #��[  6   $	��268��6@   ._�5*      �� .+�5+      �� $��Total��6   $��Center=�6(   $��24(�6L   �� 5,      #��[  6   $
��0,10q�6H   ���#ecedd9._�5-      �� .+�5.      �� $��Total kcal:��6    $��24(�66   �� 5/      -   5        $��AllKcal��5/       $��1��6/   $��24(�6;   50      51      �� 52      #��[  6   $
��0,10q�6H   ���#ecedd9._�53      �� .+�54      �� $��Total protein:��6    $��24(�69   �� 55      -   5        $��
AllProtein��55       $��2��62   $��24(�6>   56      57      �� 58      #��[  6   $
��0,10q�6H   ���#ecedd9._�59      �� .+�5:      �� $��Total carbs:��6    $��24(�67   �� 5;      -   5        $��AllCarbs��5;       $��4��60   $��24(�6<   5<      5=      �� 5>      #��[  6   $
��0,10q�6H   ���#ecedd9._�5?      �� .+�5@      �� $��
Total fat:��6    $��24(�65   �� 5A      -   5        $��AllFat��5A       $��3��6.   $��24(�6:   5B      5C      5D      5E      �� 5H   
   -   5        $��buttonPanel��5H      $��0��6(   $��Bottom=�68   $��
10,0,10,10q�6S   .+�5I      �� -   5        $��Add Meal��5I      #��[ 6(   $	��160��6p   $��45��6|   $��0,0,0,15q�6�   �� 5J      -   5        $��Remove Meal��5J      #��[ 6+   $	��160��6r   $��45��6~   $��0,0,0,30q�6�   5L      &   System.Windows.Controls.DataGrid  5N   
   -   5        $
��grid��5N      $��10q�6   $��1��6+   
�������6;   5P      5Q      