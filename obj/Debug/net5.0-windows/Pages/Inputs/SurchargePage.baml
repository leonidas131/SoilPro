   M S B A M L   `   `   `  ����C  ?ExDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ExDesign.Pages.InputsExDesign.Pages.Inputs  5      )    #ExDesign.Pages.Inputs.SurchargePage   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ExDesign.Pages.Inputs     5      -   5           	Surcharge  N� Title#  �   5	      .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      �� 5      $	��300 �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6'   �� 5      $
��1.5* �6'   .+�5       � -   5          �Name$ view3d_main��5      $��0��6-     � NavigationUIVisibility$ Hidden=�6=    � 5      -   5        $ sideview_main��5      $��1��6/   $ Hidden=�6?   5      �� 5      $��1��6   
�������.+�5      �� -   5         ��Name$ anchorsGridScrollBar��5      $��Disabled=�6=   $
��Auto=�6d   $	��300��6�   .��5      ]� .+�5      �� .+�5      ��   SurfaceSurcharge#���  6'   $	��280��6S   .��5    "   �� .+�5"   &   ]� $
��Left=�60   .+�5#   *   �� -   5         ��Name$ surfaceSurcharge_bttn��5#   1     AddSurfaceSurcharge#���  6P   $	��170��6�   $��10q�6�   6�   5$   '   ]� 5%   &   $
��Left=�60   $��2q�6K   .+�5&   *   �� ${�False��62   $��27��6D   $��34��6O   $�� ��6^   $��Center=�6f   $��Center=�6�   $
��Bold"�6�   6�   �� 5'   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�    �� TextWrapping$
 Wrap=�6�   6�   �� 5(   *   -   5         ��Name$! surfaceSurchargeName_txtbox��5(   2   ${�False��6W   $	��150��6i     SurchargeName#���  6u   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6
  �� 5)   *   -   5        $ surfaceLoad_txtbox��5)   2   ${�False��6N   $	��100��6`     Load#���  6l   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   5*   '   �� 5+   &   $
��Auto=�64   $��Disabled=�6W   $	��180��6�   .��5,   *   �� -   5        	 ��Name$	 surfaceSurchargeGroupbox��5,   5   6[   5.   '   5/   #   50      51      �� 52      .+�53      ��   StripSurcharge#���  6'   $	��280��6Q   .��54   "   �� .+�56   &   ]� $
��Left=�60   .+�57   *   �� -	   5        $ stripSurcharge_bttn��57   1     AddStripLoad#���  6N   $	��170��6w   $��10q�6�   6�   58   '   ]� 59   &   $
��Left=�60   $��2q�6K   .+�5:   *   �� ${�False��62   $��27��6D   $�� ��6O   $��Center=�6W   $��Center=�6y   $
��Bold"�6�   6�   �� 5;   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5<   *   -
   5        $ stripSurchargeName_txtbox��5<   2   ${�False��6U   $	��150��6g   #���  6s   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5=   *   -   5        $ stripdistance_txtbox��5=   2   ${�False��6P   $	��100��6b     DistanceFromWall#���  6n   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5>   *   -   5        $ stripLength_txtbox��5>   2   ${�False��6N   $	��100��6`     StripLength#���  6l   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5?   *   -   5        $ stripStartLoad_txtbox��5?   2   ${�False��6Q   $	��100��6c   #���  6o   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   5@   '   �� 5A   &   $
��Auto=�64   $��Disabled=�6W   $	��180��6�   .��5B   *   �� -   5        $	 stripSurchargeGroupbox��5B   5   6Y   5D   '   5F   #   5G      5H      �� 5I      .+�5J      ��  	 LineSurcharge#��� 	 6'   $	��280��6P   .��5K   "   �� .+�5M   &   ]� $
��Left=�60   .+�5N   *   �� -   5        $ LineSurcharge_bttn��5N   1    
 AddLineLoad#��� 
 6M   $	��170��6u   $��10q�6�   6�   5O   '   ]� 5P   &   $
��Left=�60   $��2q�6K   .+�5Q   *   �� ${�False��62   $��27��6D   $�� ��6O   $��Center=�6W   $��Center=�6y   $
��Bold"�6�   6�   �� 5R   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5S   *   -   5        $ LineSurchargeName_txtbox��5S   2   ${�False��6T   $	��150��6f   #���  6r   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5T   *   -   5        $ Linedistance_txtbox��5T   2   ${�False��6O   $	��100��6a   #���  6m   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5U   *   -   5        $ LineLoad_txtbox��5U   2   ${�False��6K   $	��100��6]     LineLoad#���  6i   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   5V   '   �� 5W   &   $
��Auto=�64   $��Disabled=�6W   $	��180��6�   .��5X   *   �� -   5        $	 lineSurchargeGroupbox��5X   5   6X   5Z   '   5[   #   5\      5]      �� 5^      .+�5_      ��   PointSurcharge#���  6'   $	��280��6Q   .��5`   "   �� .+�5b   &   ]� $
��Left=�60   .+�5c   *   �� -   5        $ pointSurcharge_bttn��5c   1     AddPointLoad#���  6N   $	��170��6w   $��10q�6�   6�   5d   '   ]� 5e   &   $
��Left=�60   $��2q�6K   .+�5f   *   �� ${�False��62   $��27��6D   $�� ��6O   $��Center=�6W   $��Center=�6y   $
��Bold"�6�   6�   �� 5g   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5h   *   -   5        $ pointSurchargeName_txtbox��5h   2   ${�False��6U   $	��150��6g   #���  6s   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5i   *   -   5        $ pointdistance_txtbox��5i   2   ${�False��6P   $	��100��6b   #���  6n   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5j   *   -   5        $ pointLoad_txtbox��5j   2   ${�False��6L   $	��100��6^     	PointLoad#���  6j   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   5k   '   �� 5l   &   $
��Auto=�64   $��Disabled=�6W   $	��180��6�   .��5m   *   �� -   5        $	 pointSurchargeGroupbox��5m   5   6Y   5o   '   5p   #   5q      5r      5s      5u      5w      5x      5y      5z      