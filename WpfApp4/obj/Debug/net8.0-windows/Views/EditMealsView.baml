   M S B A M L   `   `   `  ����F  BFoodTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FoodTracker.ViewsFoodTracker.Views  5      %    FoodTracker.Views.EditMealsView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:FoodTracker.Views     5      $
��Auto��5      $
��Auto��6,     � 	Resources  5         RoundedContainerStyle �� 
TargetType �� Property �� Value  RoundedButtonStyle �� 
TargetType �� CornerRadius �� Padding��%�  &	        &	 �     �� 5	   
   " ��6.   .�5
      ��  � �� �#bba7376+   �� 5       �@��CornerRadius$ 10��6-   �� 5       � ��$ 10q�6'   �� 5       �@��Padding$ 30,10q�6(   5      �� 5   
   " ��6+   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� 
���   �$��1q�65   $ 20��6I   $ 10q�6[   
������ ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5      �� 5       � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$
 10,5q�6(   �� 5       � ��$ 10q�6'   �� 5       � ��$	 120��6&   5      5       .��5"      �  � ColumnDefinitions 5#   
   �� 5%      $
��Auto �6   �� 5&      $��* �6   .+�5*   
   �� #��[  6   $��0��6@   $	��268��6P   5,      &   System.Windows.Controls.DataGrid  5/   
   -   5        $
��grid��5/      $��10q�6   $��1��6+   
�������6;   �� 52   
   $	��Top=�6   $��20q�6-   $��0��69   .+�53      �� -   5        $	��Add��53      #��[ 6#   $	��160��6h   $��45��6t   $��	0,15,0,25q�6�   �� 54      -   5        $��Delete��54      #��[ 6&   $	��160��6n   $��45��6z   $��0,0,0,25q�6�   �� 55      $��Update��6   #��[ 6&   $	��160��6S   $��45��6_   $��0,0,0,25q�6k   56      57      58      