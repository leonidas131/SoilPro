   M S B A M L   `   `   `  ����C  ?ExDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ExDesign.Pages.InputsExDesign.Pages.Inputs  5      %    ExDesign.Pages.Inputs.StrutPage   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ExDesign.Pages.Inputs     5      -   5          N� Title$  	StrutPage��5	      .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      �� 5      $	��300 �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6'   �� 5      $
��1.5* �6'   .+�5       � -   5          �Name$ view3d_main��5      $��0��6-     � NavigationUIVisibility$ Hidden=�6=    � 5      -   5        $ sideview_main��5      $��1��6/   $ Hidden=�6?   5      �� 5      $��1��6   
�������.+�5      �  5      �� 5      $��* �6+   .+�5       �� $��0��6!   .+�5!      �� $��5q�6%    
  Struts#���   60   .��5"      �� .+�5#   "   ]� $
��Left=�6,   .+�5$   &   �� -   5         ��Name$ addanchor_bttn��5$   -     AddStrut#���  6E   $	��150��6j   $��10q�6v   6�   5&   #   �� 5'   "   -   5         ��Name$ headerScrollBar��5'   /   $��Hidden=�6H   $��Hidden=�6m   $��False��6�   .��5(   &   ]� $
��Left=�60   $��2q�6K   .+�5)   *   �� ${�False��62   $��27��6D   $�� ��6O   $��Center=�6W   $��Center=�6y   $
��Bold"�6�   6�   �� 5*   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�    �� TextWrapping$
 Wrap=�6�   6�   �� 5+   *   -   5         ��Name$ depth_txtbox��5+   2   ${�False��6H   $	��100��6Z    	 Depth#���  6f   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5,   *   -   5        $ strutLength_txtbox��5,   2   ${�False��6N   $	��120��6`     StrutLength#���  6l   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5-   *   -   5        $ strutdiameter_txtbox��5-   2   ${�False��6P   $	��120��6b     StrutDiameter#���  6n   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5.   *   -	   5        $ strutthickness_txtbox��5.   2   ${�False��6Q   $	��120��6c     StrutThickness#���  6o   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5/   *   ${�False��62   $	��125��6D     CentralPlacement#���  6P   $��Center=�6z   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 50   *   -
   5        $ Spacing_txtbox��50   2   ${�False��6J   $	��100��6\     Spacing#���  6h   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 51   *   -   5        $ soldier1��51   2   ${�False��6D   $	��100��6V     SoldierBeam#���  6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 52   *   -   5        $ soldier2��52   2   ${�False��6D   $	��100��6V    	 
BeamHeight#��� 	 6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 53   *   -   5        $ soldier3��53   2   ${�False��6D   $	��100��6V    
 	BeamWidth#��� 
 6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   ]� 54   *   $��30��64   6A   55   '   56   #   �� 58   "   -   5        $ strutsGridScrollBar��58   /   $
��Auto=�6L   $
��Auto=�6o   $	��200��6�   .��59   &   �� -   5        	 ��Name$	 strutssGroupbox��59   1   6N   5;   #   5<      5>      5?      5A      5B      5C      5D      5E      