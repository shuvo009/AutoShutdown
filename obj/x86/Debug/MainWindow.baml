   M S B A M L   `   `   `  ����G  CAutoShutdown, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AutoShutdownAutoShutdown  5   	       AutoShutdown.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ,localclr-namespace:AutoShutdown     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     62   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6o   -   5          �Name$  window��5   �    � Title$ AutoShutdown��5   	   $	��235��6   $	��257��6+    � 
ResizeMode$ CanMinimize=�67   $��14.667(�6P    � 	Resources 5      (   "AutoShutdown.ButtonEnableConverter   ButtonEnableConverter   AutoShutdown.ViewTime  ViewTimeDataSource��%:   &	        &	        5      6      5      6   5
      .��5      �  � DataContext 6   ��  �� Source# [ ��5      �� 5       �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6-   .��5   	   �  � Color$ 	#FF4D6246��6   	 � Offset$	 0Q�6(   � 5   	   $ 	#FFCDD6CA��6   $	 1Q�6(   � 5   	   $ 	#FF9CB195��6   $	 0.616Q�6(   5   	   
 � ColumnDefinitions
 5      �� 5      $��0.34* �6   �� 5      $��0.66* �6    � RowDefinitions 5      �� 5      .+�5      �� -   5         ��Name$ comboBoxTime��5      $��2.063,80.921,13.937,0q�6&   $��1��6E   $	��Top=�6U   $��26.715��6m    �� DisplayMemberPath$
 Name��6�   ��6}   ��  �� Mode$ OneWay=�6�   �� 5      $��8,0,1.937,136.248q�6   $
��Wrap=�6,   $��Time Left :��6@   $��Bottom=�6S   �� 5      $��37.273,80.921,8,0q�6   $
��Wrap=�6,   $��Time :��6@   $	��Top=�6N   �� 5      -   5         ��Name$ textBlockTimeLeft��5      $��2.063,0,0,136.248q�6,   $
��Wrap=�6G   $��1��6[   $��Bottom=�6k   �� 5      $��37.273,0,29.059,31.311q�6    �� Orientation$ 
Horizontal=�62   $��2��6K   $��Bottom=�6y   .+�5       �� -   5         ��Name$ buttonStrat��5       $��Start��6$   $
��Left=�64   $��84.274��6O   $��39.246��6^   ��6n   �� *StartButtonCommand+ �� ElementName$ window��$ OneWay=���6�   �� *SelectionBoxItem+$ comboBoxTime��$ OneWay=�{�6  �� *	IsRunning+ �� 	Converter# [  $ window���� 5!      $
��Stop��6   $
��Left=�6   $��39.246��69   $��84.394��6I   $��15,0,1,0q�6X   $
��Stop��6�   {�6j   �� *	IsRunning+$ window����6�   �� *StopButtonCommand+$ window��$ OneWay=�6�   5"      �� 5#      -   5        $ 	textBlock��5#      $��0,0,44.757,178.626q�6$   $
��Wrap=�6@   $��Hello Nirob��6T   $��Bottom=�6g   $��21.333(�6�   $��1��6�   ��5$      �� 5%   	   $ 0.5,1&�6   $ 0.5,0&�6.   .��5&   
   � $ 	#FFE52E2E��6   $	 0Q�6)   � 5'   
   $ 	#FF560C0C��6   $	 1Q�6)   5(   
   5*      �� 5+      $��1.231,0,43.526,160.243q�6   $
��Wrap=�61   $��Bottom=�6r   $��21.333(�6�   $��1��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�    J� Opacity$ 0.635Q�6�   ��6E   �� *Text+$ 	textBlock����6�   �� *
Foreground+$ 	textBlock�� J� OpacityMask 5,      �� 5-   	   $ 0.5,1&�6   $ 0.5,0&�6.   .��5.   
   � $ 	#00000000��6   � 5/   
   $ White��6   $	 1Q�6%   � 50   
   $ 	#4A4A4A4A��6   $	 0.692Q�6)   51   
   z�53      V� 54   	   .~�55   
   ��  �� ScaleY$ 1Q�6    �� ScaleX$ -1Q�6$   �� 56   
    �� AngleY$ 0Q�6    �� AngleX$ 8Q�6#   �� 57   
    �� Angle$
 -180Q�6   T� 58   
   59   
   5;      5=      5>      