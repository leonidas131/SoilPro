   M S B A M L   `   `   `  ����C  ?ExDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ExDesign.Pages.InputsExDesign.Pages.Inputs  5      '    !ExDesign.Pages.Inputs.AnchorsPage   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ExDesign.Pages.Inputs     5      -   5           Anchors  N� Title#  �   5	      .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      �� 5      $	��300 �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6'   �� 5      $
��1.5* �6'   .+�5       � -   5          �Name$ view3d_main��5      $��0��6-     � NavigationUIVisibility$ Hidden=�6=    � 5      -   5        $ sideview_main��5      $��1��6/   $ Hidden=�6?   5      �� 5      $��1��6   
�������.+�5      �  5      �� 5      $��* �6+   .+�5       �� $��0��6!   .+�5!      �� $��5q�6%   #���   60   .��5"      �� .+�5#   "   ]� $
��Left=�6,   .+�5$   &   �� -   5         ��Name$ addanchor_bttn��5$   -     	AddAnchor#���  6E   $	��150��6k   $��10q�6w   6�   �� 5%   &   -   5        $! anchorparameterlibrary_bttn��5%   -     AnchorParameterLibrary#���  6R   $	��150��6�   $��10q�6�   6�   �� 5&   &   -   5         ��Name$ useCableData_checkbox��5&   /    & "UseCableDiameterAndNumberForDesign#���  6N   $��10q�6�   $��Center=�6�   6  5'   #   �� 5(   "   -   5         ��Name$ headerScrollBar��5(   /   $��Hidden=�6H   $��Hidden=�6m   $��False��6�   .��5)   &   ]� $
��Left=�60   $��2q�6K   .+�5*   *   �� ${�False��62   $��27��6D   $�� ��6O   $��Center=�6W   $��Center=�6y   $
��Bold"�6�   6�   �� 5+   *   ${�False��62   $��30��6D   $��No��6O   $��Center=�6Y   $��Center=�6{   $
��Bold"�6�    �� TextWrapping$
 Wrap=�6�   6�   �� 5,   *   -   5        	 ��Name$	 depth_txtbox��5,   2   ${�False��6H   $��80��6Z    	 Depth#���  6e   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5-   *   -	   5        $	 freeLength_txtbox��5-   2   ${�False��6M   $��80��6_     
FreeLength#���  6j   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5.   *   -
   5        $	 rootLength_txtbox��5.   2   ${�False��6M   $��80��6_     
RootLength#���  6j   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5/   *   -   5        $	 Inclination_txtbox��5/   2   ${�False��6N   $��80��6`     Inclination#���  6k   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 50   *   ${�False��62   $��80��6D     CentralPlacement#���  6O   $��Center=�6y   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 51   *   -   5        $	 Spacing_txtbox��51   2   ${�False��6J   $��80��6\    	 Spacing#��� 	 6g   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 52   *   -   5        $	 RootDiameter_txtbox��52   2   ${�False��6O   $	��100��6a    
 RootDiameter#��� 
 6m   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 53   *   ${�False��62   $	��105��6D     NumberOfCable#���  6P   $��Center=�6w   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 54   *   ${�False��62   $	��100��6D     CableDiameter#���  6P   $��Center=�6w   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 55   *   -   5        $	 totalNominalArea_txtbox��55   2   ${�False��6S   $	��125��6e     TotalNominalArea#���  6q   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6	  �� 56   *   -   5        $	 BreakingStrength_txtbox��56   2   ${�False��6S   $	��125��6e     BreakingStrength#���  6q   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6	  �� 57   *   -   5        $	 rootModulus_txtbox��57   2   ${�False��6N   $	��125��6`     RootModulus#���  6l   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 58   *   -   5        $	 skinfriction_txtbox��58   2   ${�False��6O   $	��125��6a     RootSoilSurfaceResistance#���  6m   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 59   *   ${�False��62   $	��125��6D     PassiveAnchor#���  6P   $��Center=�6w   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5:   *   -   5        $	 prestressForce_txtbox��5:   2   ${�False��6Q   $	��100��6c     PreStressForce#���  6o   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6  �� 5;   *   -   5        $	 soldier1��5;   2   ${�False��6D   $	��100��6V     SoldierBeam#���  6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5<   *   -   5        $	 soldier2��5<   2   ${�False��6D   $	��100��6V     
BeamHeight#���  6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   �� 5=   *   -   5        $	 soldier3��5=   2   ${�False��6D   $	��100��6V     	BeamWidth#���  6b   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   $
 Wrap=�6�   6�   ]� 5>   *   $��30��64   6A   5?   '   5@   #   �� 5B   "   -   5        $ anchorsGridScrollBar��5B   /   $
��Auto=�6M   $
��Auto=�6p   $	��200��6�   .��5C   &   �� -   5        
 ��Name$
 anchorsGroupbox��5C   1   6N   5E   #   5F      5H      5I      5K      5L      5M      5N      5O      