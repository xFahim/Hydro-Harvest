   M S B A M L   `   `   `  ����J  FBRACU-NASA-PROJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BRACU_NASA_PROJBRACU_NASA_PROJ  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      c _GMap.NET.WindowsPresentation, Version=2.1.7.0, Culture=neutral, PublicKeyToken=b85b9027b614afefqPclr-namespace:GMap.NET.WindowsPresentation;assembly=GMap.NET.WindowsPresentationGMap.NET.WindowsPresentation 5   Y        BRACU_NASA_PROJ.extratools   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:BRACU_NASA_PROJ     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      [gmapPclr-namespace:GMap.NET.WindowsPresentation;assembly=GMap.NET.WindowsPresentation  6Y      MaterialDesignBody#���   5	      $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper N� 
Background# �  5        MaterialDesignFont N� 
FontFamily# �  5       N� Title$ 
extratools��5      .��5      �  � ColumnDefinitions 5      �� 5   
   $��* �6   �� 5   
   $��* �6   .+�5      #  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist   Darken$
 True��6   .  (MaterialDesignThemes.Wpf.ElevationAssist   	Elevation$	 Dp8=�6D   $��0��6s   $��20q�6�   $��20q�6�   .��5   
   �� .+�5      �� $��22(�6   $
��Bold"�6&   $��Input Section��68   $��0 0 0 20q�6M   �� 5!      $��18(�6   $��SemiBold"�6&   $��	Land Size��6<   $��0 10 0 5q�6M   �� 5"       �� Orientation$ 
Horizontal=�6   $��	0 10 0 10q�62   .+�5#      �� $��22(�6   $.��(pack://application:,,,/Fonts/#Simplifica)�6(   $	��150��6^   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 
Length (m)��6j   �� 5$      $��22(�6   $.��(pack://application:,,,/Fonts/#Simplifica)�6(   $	��150��6^   $��10 0 0 0q�6j   $	 	Width (m)��6|   5%      �� 5'      $��0 10 0 0q�6   .+�5(      �� $��18(�6   $��SemiBold"�6*   $��Location��6@   $��0 10 0 5q�6P   �� 5+      -   5        $��
GetCurrLoc��5+      $��18(�6+   $	��280��69   $��0 10 0 0q�6E   $��2q�6W   $
��Left=�6c   $ False��6~   $��46��6�   ���	#FF2EC134
�������.��5-      �� $ 
Horizontal=�6!   .+�5.      �� $��assets/loc.png��6    $��24��68   6E   �� 5/      $��Center=�6$   $��10 0 0 0q�6?   Get My Current Location6j   50      52      9� 54      $��0 10 0 0q�6   ��55      �� 56      $ 
Horizontal=�6%   
 J� Opacity$	
 0.7Q�6>   .+�57      �� $��SemiBold"�6(   $��Center=�6?   $��16(�6Z   Custom Location6y   �� 58      $��Segoe MDL2 Assets)�6(   $��10 0 0 0q�6G   $��Center=�6Y   $
��Bold"�6t   $��18(�6�   $	����6�   59      ��5;      �� 5<      -   5         ��Name$ LocationComboBox��5<   #   $��18(�6=   $	��330��6K   $��20q�6W    �� SelectedIndex$ 0��6c   $
��Left=�6u   $	 Choose Location��6�   5=      5?      �� 5E      
�������$��1q�6,   $��0 20 0 0q�6@   $	��300��6R   ._�5G      .  (GMap.NET.WindowsPresentation.GMapControl  -   5          Name$ 
mapControl��5G   '   $��Stretch=�6;   $��Stretch=�6Y   $��0 20 0 0q�6u   6�   5H      5I      �� 5K      $��0 20 0 0q�6   .+�5L      �� $��18(�6   $��SemiBold"�6*   $��Timeline��6@   $��0 10 0 5q�6P   �� 5O      $ 
Horizontal=�6   $��	0 10 0 10q�66   .+�5P      �� $��20(�6    $��Center=�6.   $��Specify the year:��6I   �� 5Q      -   5        $��YearBox��5Q      $��18(�6-   $��27 0 0 0q�6;   $	 Default - Current Year��6M   6�   5R      �� 5T      $ 
Horizontal=�6   $��	0 10 0 10q�66   .+�5U      �� $��20(�6    $��Center=�6.   $��Specify the radius:��6I   �� 5V      -   5        $��RadBox��5V      $��18(�6,   $��10 0 0 0q�6:   $��2q�6L   $	 Radius you're targeting��6X   6�   5W      �� 5Z      -   5        $��	GetResBtn��5Z      $��18(�6*   $	��280��68   $��0 10 0 0q�6D   $��2q�6V   $
��Left=�6b   $ False��6}   $��46��6�   ���	#FF2EC134
�������.��6�   Get Results5\      5_      5c      5d        5g      $
 True��6   $	 Dp8=�6D   $��1��6s   $��20q�6�   $��20q�6�   .��5h   
   �� .+�5i      �� $��22(�6   $
��Bold"�6&   $��Output Section��68   $��0 0 0 20q�6N   �� 5l      .@�5m      �� $��Precipitation��6   .��5n      �� .+�5o      �� $��10q�6$   $��SemiBold"�60   $	
 0.7Q�6F   $��16(�6T   
Data Table6n   &   System.Windows.Controls.DataGrid  5p      -   5          Name$ RainfallDataGrid��5p   #      AutoGenerateColumns$ False��6=   $��Stretch=�6Y   $	��200��6w   $��Stretch=�6�      Columns 5q      0  *System.Windows.Controls.DataGridTextColumn  5r   "   ,	  &System.Windows.Controls.DataGridColumn 	  Header$ Month��65    	  Width5
  /System.Windows.Controls.DataGridLengthConverter$	 100
 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *Month+6^     5s   "   $
 Year��65   $	 100
 6\    6C   �� *Year+6\     5t   "   $ Hourly Rainfall (mm)��65   $	 150
 6z    6S   �� *HourlyRainfallInMm+6z   5v      #  LiveCharts.Wpf.CartesianChart  5y      -   5          Name$ RainfallChart��5y   -   $��20q�6D   $	��400��6P    � ToolTip 5z      #  LiveCharts.Wpf.DefaultTooltip  5{   "      SelectionMode 
OnlySender65   &   LiveCharts.Wpf.Charts.Base.Chart   AxisX 5~   "     LiveCharts.Wpf.Axis     Title$ Month��6+      Labels 69   �� *Months+   AxisY 5�   "     $ Hourly Rainfall (mm)��6+      MinValue$ 0.0001Q�6H      MaxValue$ 1Q�6Z      LabelFormatter 6g   �� *	Formatter+5�      5�      5�      �� 5�      $��Water Level��6   .��5�      �� $��No output yet.��6    $��18(�66   $��Center=�6D   $��Center=�6_   5�      �� 5�      $��Cost Estimation��6   .��5�      �� $��No output yet.��6    $��18(�66   $��Center=�6D   $��Center=�6_   5�      5�      5�      5�      5�      5�      