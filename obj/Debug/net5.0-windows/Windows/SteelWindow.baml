   M S B A M L   `   `   `  ����C  ?ExDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ExDesign.WindowsExDesign.Windows  5   	   "    ExDesign.Windows.SteelWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:ExDesign.Windows     5   	   -   5           	SteelType  � Title#  �   5   	   $	��300��6-   $	��480��6:    � WindowStyle$ 
ToolWindow=�6F    � 
ResizeMode$ NoResize=�6_   .��5	      � .+�5
   
   �  � ColumnDefinitions 5      �� 5      $	��150 �6#   �� 5       � RowDefinitions 5      �� 5      �� 5      $��50 �6    .+�5      �� -   5         ��Name$ 	SteelList��5      $	��120��6)   $	��160��65   $	��Top=�6B   $��Center=�6Z   $��0,35,0,0q�6x   6�   �� 5      -   5         ��Name$ deletepile_button��5   "   $��1��6    
 delete#���  6=   $��Center=�6`   $��0,10,0,0q�6}   $	��Top=�6�   $	��120��6�   6�   �� 5      -   5        $ cancel_button��5   2   $��1��6   $��1��6"    
 Cancel#���  6I   $
��Left=�6l   $	��Top=�6�   $��50��6�   $��
242,10,0,0q�6�   6�   �� 5      -   5        $ save_button��5   2   $��1��6   $��1��6"     Save#���  6G   $
��Left=�6h   $	��Top=�6�   $��50��6�   $��
187,10,0,0q�6�   6�   �� 5      -   5        $ addnewpile_button��5   2   $��0��6   $��0��6"    
 addnew#���  6M   $��Center=�6p   $��0,10,0,0q�6�   $	��Top=�6�   $	��120��6�   6�   �� 5      -   5        $ save_close_button��5   2   $��1��6   $��1��6"     SaveAndClose#���  6M   $
��Left=�6v   $	��Top=�6�   $��90��6�   $��	92,10,0,0q�6�   6�   �� 5      $��0��6   $��1��6&   $��
10,35,10,0q�66   .+�5      ]� $
��Left=�6   .+�5      ��   name#���  6   $��80��6>   �� 5      $��:��6   $��30��6)   $��Right=�64   �� 5      -   5         ��Name$ 	SteelName��5       �� 	MaxLength$ 15��61   $	��120��6@   $��2q�6L   6W   5      ]� 5      $
��Left=�6   .+�5       �� $��60��6   �� 5!      $��(fy):��6   $��50��6-   $��Right=�68   �� 5"      -	   5        $ 	fyTextbox��5"      $	��120��61   $��2q�6=   6�   �� 5#      -
   5        	 ��Name$	 fyTextbox_unit��5#      $��m��64   $��70��6@   $
��Left=�6K   5$      ]� 5&      $
��Left=�6   .+�5'      �� $��60��6   �� 5(      $
��(E):��6   $��50��6,   $��Right=�67   �� 5)      -   5        $ ETextbox��5)      $	��120��60   $��2q�6<   6�   �� 5*      -   5        $	 ETextbox_unit��5*      $��m��63   $��70��6?   $
��Left=�6J   5+      5,      5-      5.      5/      