   M S B A M L   `   `   `  ����C  ?ExDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ExDesign.Pages.OpeningExDesign.Pages.Opening  5      ,    &ExDesign.Pages.Opening.OpeningMainPage   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:ExDesign.Pages.Opening     5        N� Title$  OpeningMainPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $	��170 �6    �� 5      .+�5      �� $��0��6   $��10q�6&   $��Center=�62   .+�5      �� -   5         ��Name$ NewProjectButton��5      $��70��64   
���������6X   Z� .��5      �  5      �� 5      $��60 �6/   �� 5      $��* �6/   .+�5      �� $��0��6    $��Uniform=�60   $+��%/Textures/Icons/file-earmark-plus.png��6B   $��5q�6q   �� 5      $��1��6%   $��5q�65   .+�5      ��    CreateNewProject#���   6$   $��Center=�6Q   $��Center=�6n   $
��Bold"�6�   6�   �� 5        CreateNewProjectInfo#���  6(   $��Center=�6W   $��Center=�6t   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�    �� LineStackingStrategy$ 	MaxHeight=�6�   6�   5!      5"      5&      �� 5'      -   5        $ OpenProjectButton��5'      $��70��65   $��0,5,0,0q�6B   
���������6k   Z� .��5(      �  5)      �� 5*      $��60 �6/   �� 5+      $��* �6/   .+�5-      �� $��0��6    $��Uniform=�60   $&�� /Textures/Icons/folder2-open.png��6B   $��5q�6l   �� 5.      $��1��6%   $��5q�65   .+�5/      ��   OpenProject#���  6$   $��Center=�6L   $��Center=�6i   $
��Bold"�6�   6�   �� 50        OpenProjectInfo#���  6(   $��Center=�6R   $��Center=�6o   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   6�   52      53      55      56      �� 58      $��1��6   .+�59      �� $��5q�6     RecentlyOpenedProjects#���  6#   $
��Bold"�6V   $��16(�6h   $��0q�6v   6�   �� 5:      $��0��6   $��
10,0,10,10q�6*   $��Center=�6>   .+�5<      �� -   5        $ recentproject1��5<      $��65��65   
�������$��Stretch=�6p   $��Center=�6�   $
��Left=�6�   $��0,3,0,0q�6�   $y�Hidden=�6�   ��6Y   Z� .��5=      ]� $��5,0,0,0q�6$   .+�5>      �� $��1��6)   $
��Left=�69   .+�5?   "   �� -   5         ��Name$ projectname1��5?   ,   $��proje ismi bla bla bla��6B   $
��left=�6`   $��Center=�6{   $
��Bold"�6�   6�   �� 5@   "   -   5        $ date1��5@   ,   $+��%wall type reinforcement concrete wall��6;   $
��Left=�6i   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   �� 5A   "   -   5        $ path1��5A   ,   $*��$C:/desctop/islerim/iyiproje/sonhali/��6;   $
��Left=�6h   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   5B      5C      5E      �� 5F      -   5        $ recentproject2��5F      $��65��66   
�������$��Stretch=�6q   $��Center=�6�   $
��Left=�6�   $��0,3,0,0q�6�   $y�Hidden=�6�   ��6Z   Z� .��5G      ]� $��5,0,0,0q�6%   .+�5H      �� $��1��6)   $
��Left=�69   .+�5I   "   �� -   5        $ projectname2��5I   ,   $��proje ismi bla bla bla��6B   $
��left=�6`   $��Center=�6{   $
��Bold"�6�   6�   �� 5J   "   -	   5        $ date2��5J   ,   $+��%wall type reinforcement concrete wall��6;   $
��Left=�6i   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   �� 5K   "   -
   5        $ path2��5K   ,   $*��$C:/desctop/islerim/iyiproje/sonhali/��6;   $
��Left=�6h   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   5L      5M      5O      �� 5P      -   5        $ recentproject3��5P      $��65��66   
�������$��Stretch=�6q   $��Center=�6�   $
��Left=�6�   $��0,3,0,0q�6�   $y�Hidden=�6�   ��6Z   Z� .��5Q      ]� $��5,0,0,0q�6%   .+�5R      �� $��1��6)   $
��Left=�69   .+�5S   "   �� -   5        $ projectname3��5S   ,   $��proje ismi bla bla bla��6B   $
��left=�6`   $��Center=�6{   $
��Bold"�6�   6�   �� 5T   "   -   5        $ date3��5T   ,   $+��%wall type reinforcement concrete wall��6;   $
��Left=�6i   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   �� 5U   "   -   5        $ path3��5U   ,   $*��$C:/desctop/islerim/iyiproje/sonhali/��6;   $
��Left=�6h   $��Center=�6�   $��Normal"�6�   $��WordEllipsis=�6�   $
��Wrap=�6�   $��10(�6�   6�   5V      5W      5Y      5[      5\      5]       � 5_   
   -   5          �Name$ OpeningScreen��5_       $��1��6     � NavigationUIVisibility$ Hidden=�67   5a      5b      