   M S B A M L   `   `   `  ����J  FBRACU-NASA-PROJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BRACU_NASA_PROJBRACU_NASA_PROJ  5   	       BRACU_NASA_PROJ.DataPopUP   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:BRACU_NASA_PROJ     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         MaterialDesignBody#���   5	      $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � Title$ Data ��5      $	��920��6   $	��800��6    � WindowState$ Normal=�6+    � WindowStyle$
 None=�6@    � WindowStartupLocation$ CenterScreen=�6S   .��5      � $��20q�6   .+�5   
   �� 
����������#FF9A76$��2q�6:    �� CornerRadius$ 10��6N    �� Padding$ 15q�6`   ._�5      �� .+�5      �� $��Water Level Details��6   $��20(�67   $
��Bold"�6E   $��Center=�6W   $��0,0,0,10q�6t   ���#FF9A766�   �� 5      $��April��6   $��24(�6)   $
��Bold"�67   $��Center=�6I   $��0,0,0,10q�6f   ���#FF9A766x   �� 5      $��/Assets/sea.png��6   $��40��61   $��40��6<   $��Center=�6H   $��0,0,0,10q�6e   �� 5      $��Current Water Level: High��6   $��16(�6=   $��SemiBold"�6K   ���#3333336a   �� 5       $��Irrigation Days: 3��6   $��14(�66   ���#5555556D   �� 5!      $��Water Deficit: 15mm��6   $��14(�67   ���#5555556E   �� 5"      $��Estimated Rainfall: 60mm��6   $��14(�6<   ���#5555556J   �� 5%       �� Orientation$ 
Horizontal=�6   $
��Left=�66   $��0,10,0,0q�6Q   .+�5&      �� $��/Assets/gpt.png��6   $��40��65   $��40��6@   $��5,0,0,0q�6L   �� 5'      $��Powered by GPT��6    $��12(�66   $��10 0 0 0q�6D   $
��Bold"�6V   ���#333333$��Center=�6}   5)      �� 5,      $ Vertical=�6   .+�5-      �� $ 
Horizontal=�6!   $
��Left=�6:   .+�5.      �� $��AI Insights:��6$   $��16(�68   $
��Bold"�6F   ���#FF9A76$��	0,10,10,5q�6m   �� 51      $	��150��6!   $��30��6-   $��5q�69   ���#FF9A76
�������
������ .��52      �� $ 
Horizontal=�6)   .+�53   "   �� $
��🔊��6,   $��16(�66   $��0,0,5,0q�6D   �� 55   "   $��Read Out Loud��6,   $��12(�6A   
�������6O   56      57      �� 5:      -   5        $��TransBtn��5:   !   $	��170��6H   $��30��6T   $��5q�6`   ���#FF9A76
�������
������ .��5;      �� $ 
Horizontal=�6)   .+�5<   "   �� $
��🌐��6,   $��16(�66   $��0,0,5,0q�6D   �� 5>   "   $��Translate to Bangla��6,   $��12(�6G   
�������6U   5?      5@      5A      �� 5C      ���#E0F7FA$ 5��62   $ 10q�6C   $��0,5,0,0q�6P   ._�5D      �� .+�5E      �� -   5        $��aiText��5E   (   $��15(�66   $��SemiBold"�6D   	 J� Opacity$
	 0.75Q�6Z   ���#333333$
��Wrap=�6~   $	��500��6�   ��The current water levels are optimal for irrigation, ensuring that your crops receive the necessary hydration for growth. Based on the rainfall patterns, it is recommended to monitor the soil moisture closely to avoid over-irrigation. Additionally, considering the upcoming weather forecasts, adjusting your irrigation schedule will help maximize water efficiency and support healthy crop development.5G      5I      5J      5K      �� 5P      $��Recommended Crops:��6   $��16(�66   $
��Bold"�6D   ���#FF9A76$��0,10,0,5q�6k   �� 5Q      $ 
Horizontal=�6   $��Center=�66   .+�5S      �� .+�5T      �� ���#000000$		 0.4Q�66   $ 5��6D   $	��100��6U   $	��150��6a   $��10q�6n   ._�5U      � .+�5V   "   �� $��/Assets/rice.jpg��6(   $��UniformToFill=�6B   $	��100��6Z   $	��150��6f   $		 0.6Q�6s   �� 5X   "   
���   �$		 0.6Q�6<   $ 5��6J   �� 5Y   "   $��Center=�6-   $��Center=�6J   .+�5Z   &   �� $
��Rice��60   $��18(�6<   $
��Bold"�6J   $��Center=�6\   $��Center=�6y   
�������6�   5\   #   5]      5^      �� 5_      $��• Learn More��6$   $��12(�68   $��Center=�6F   $��Center=�6c   ���#1E88E5$��	Underline{�6�   5b      �� 5d      .+�5e      �� ���#000000$		 0.4Q�66   $ 5��6D   $	��100��6U   $	��150��6a   $��10q�6n   ._�5f      � .+�5g   "   �� $��/Assets/corn.jpg��6(   $��UniformToFill=�6B   $	��100��6Z   $	��150��6f   $		 0.6Q�6s   �� 5i   "   
���   �$		 0.6Q�6<   $ 5��6J   �� 5j   "   $��Center=�6-   $��Center=�6J   .+�5k   &   �� $
��Corn��60   $��18(�6<   $
��Bold"�6J   $��Center=�6\   $��Center=�6y   
�������6�   5m   #   5n      5o      �� 5p      $��• Learn More��6$   $��12(�68   $��Center=�6F   $��Center=�6c   ���#1E88E5$��	Underline{�6�   5s      �� 5u      .+�5v      �� ���#000000$		 0.4Q�66   $ 5��6D   $	��100��6U   $	��150��6a   $��10q�6n   ._�5w      � .+�5x   "   �� $��/Assets/soy.jpg��6(   $��UniformToFill=�6A   $	��100��6Y   $	��150��6e   $		 0.6Q�6r   �� 5y   "   
���   �$		 0.6Q�6<   $ 5��6J   �� 5z   "   $��Center=�6-   $��Center=�6J   .+�5{   &   �� $��Soybeans��60   $��18(�6@   $
��Bold"�6N   $��Center=�6`   $��Center=�6}   
�������6�   5}   #   5~      5      �� 5�      $��• Learn More��6$   $��12(�68   $��Center=�6F   $��Center=�6c   ���#1E88E5$��	Underline{�6�   5�      5�      �� 5�      $��Learn More:��6   $��16(�6/   $
��Bold"�6=   ���#FF9A76$��0,10,0,5q�6d   �� 5�      .+�5�      �� $L��F• [Water Management Techniques](http://example.com/water-management)��6    $��14(�6l   ���#1E88E5$��	Underline{�6�   �� 5�      $S��M• [Irrigation Best Practices](http://example.com/irrigation-best-practices)��6    $��14(�6s   ���#1E88E5$��	Underline{�6�   �� 5�      $C��=• [Crop Selection Guide](http://example.com/crop-selection)��6    $��14(�6c   ���#1E88E5$��	Underline{�6�   5�      �� 5�      $��Sources:��6   $��16(�6,   $
��Bold"�6:   ���#FF9A76$��0,10,0,5q�6a   �� 5�      .+�5�      �� $!��• NASA Precipitation Data��6    $��14(�6A   ���#3333336O   �� 5�      $-��'• Local Agricultural Extension Office��6    $��14(�6M   ���#3333336[   5�      5�      5�      �� 5�   
   -   5        $��Close��5�      $��80��6!   
�������$��30��6?   $��Center=�6K   $��Bottom=�6h   $��	0,10,0,10q�6�   6�   5�      5�      