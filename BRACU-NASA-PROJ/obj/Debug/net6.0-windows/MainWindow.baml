   M S B A M L   `   `   `  ����J  FBRACU-NASA-PROJ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BRACU_NASA_PROJBRACU_NASA_PROJ  5   	        BRACU_NASA_PROJ.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:BRACU_NASA_PROJ     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	      $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � Title$ 
MainWindow��5   	   $	��450��6   $	��800��6)    � WindowState$ Normal=�65    � WindowStyle$
 None=�6J    � 	Resources 5       �� 
TargetType  	LineAnime �� Triggers P� Property	 P� Value
 N� EnterActions �� TargetProperty W� From	 W� To g� Duration��%�   &	       �� 5   
   " ��6    5      P� 5       � y�$	 Visible=�60   
 5      �� 5      .��5      �� .��5   "   W� $ X1�5       05       806(   $ 0:0:0.4D�60   5      5      5       5#      5%      .��5'      �  � RowDefinitions 5)   
   �� 5*      $
��auto �6   �� 5+      $��* �6   .+�50   
   � .+�51      �� $
��Left=�6   $	��Top=�64   $��8q�6L   .+�52      �� $��38(�6   $)��#pack://application:,,,/Fonts/#Dense)�6*   $��Center=�6[   HYDRO6   �� 53      $��38(�6   $��Center=�6*   $)��#pack://application:,,,/Fonts/#Dense)�6G   $��	0 -10 0 0q�6x   	HARVEST6�   55      �� 57       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��Center=�6O   .+�5:      �� -   5        $��
ExploreBtn��5:      
������ $��40��6�   
������ .��5;      � .+�5<      �� -   5        $��Over1��5<      $��Bottom=�6,   $y�Hidden=�6G   $��0 0 0 4q�6[   ���	#FF43CA1F	 �� X2$ -2��6   	 �� X1$ 85��6�   $��6��6�   #��[ 6�   6�   �� 5=      -   5        $��Line1��5=      $y�Visible=�6,   $��Bottom=�6A   $��0 0 0 4q�6\   ���	#FF43CA1F$ -2��6�   $ 85��6�   $��6��6�   6�   �� 5>       J� Opacity$ 1Q�6$   $,��&pack://application:,,,/Fonts/#Ailerons)�60   $��28(�6d   About6y   5?      5@      �� 5B      -   5        $��HomeBtn��5B      $��50 0 0 0q�6~   $��40��6�   
������ 
������ .��5C      � .+�5D      �� -   5        $��Over2��5D      $��Bottom=�6,   $y�Hidden=�6G   $��0 0 0 4q�6[   ���	#FF43CA1F$ -2��6�   $ 85��6�   $��6��6�   #��[ 6�   6�   �� 5E      -   5        $��Line2��5E      $	 0.7Q�6,   $��Bottom=�6:   $��0 0 0 4q�6U   ���	#FF43CA1F$ -2��6z   $ 80��6�   $��6��6�   5F      �� 5G      $ 1Q�6$   $,��&pack://application:,,,/Fonts/#Ailerons)�60   $��28(�6d   Tool6x   5H      5I      �� 5K      -   5        $��
LibraryBtn��5K      $��50 0 0 0q�6�   $��40��6�   
������ 
������ .��5L      � .+�5M      �� -   5        $��Over3��5M      $��Bottom=�6,   $y�Hidden=�6G   $��0 0 0 4q�6[   ���	#FF43CA1F$ -2��6   $ 85��6�   $��6��6�   #��[ 6�   6�   �� 5N      -	   5        $��Line3��5N      $	 0.7Q�6-   $y�Visible=�6;   $��Bottom=�6P   $��0 0 0 4q�6k   ���	#FF43CA1F$ -2��6�   $ 93��6�   $��6��6�   5O      �� 5P      $ 1Q�6$   $,��&pack://application:,,,/Fonts/#Ailerons)�60   $��28(�6d   	Dashboard6}   5Q      5R      5T      �� 5V      $	 0.8Q�6   $��Right=�6'   $	��Top=�6C   $ 
Horizontal=�6[   $��2q�6t   .+�5X      �� -
   5        $��	MinWinBtn��5X      $��0 0 3 0q�6B   
������ $��0q�6l   .��5Y      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6.   $��20��6D   $��20��6O   6]   5Z      �� 5\      -   5        $��	MaxWinBtn��5\      $��0 0 3 0q�6B   
������ $��0q�6l   .��5]        $ 
Fullscreen=�6.   $��20��6@   $��20��6K   6Y   5^      �� 5`      -   5        $��CloseWinBtn��5`      $��0q�6F   
������ $��0q�6j   .��5a        $ Close=�6.   $��20��6;   $��20��6F   6T   5b      5c      5e       � 5g   
   -   5        $��NavFrame��5g      $��1��6     � NavigationUIVisibility$ Hidden=�6-   6O   5h      5i      