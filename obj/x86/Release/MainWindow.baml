   M S B A M L   `   `   `  ���� G  CAutoShutdown, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AutoShutdownAutoShutdown      AutoShutdown.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ,localclr-namespace:AutoShutdown     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -     �Name$  window�� � Title$ AutoShutdown��$	��235��$	��257�� � 
ResizeMode$ CanMinimize=�$��14.667(� � 	Resources (   "AutoShutdown.ButtonEnableConverter   ButtonEnableConverter   AutoShutdown.ViewTime  ViewTimeDataSource��%   &	        &	          .���  � DataContext ��  �� Source# [ ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FF4D6246��	 � Offset$	 0Q�� $ 	#FFCDD6CA��$	 1Q�� $ 	#FF9CB195��$	 0.616Q�
 � ColumnDefinitions
 �� $	��80* ��� $	��21* ��� $
��134* � � RowDefinitions �� .+��� -    ��Name$ comboBoxTime��$��2,80.921,14,0q�$��1��$	��Top=�$��26.715�� �� DisplayMemberPath$
 Name��$��2������  �� Mode$ OneWay=��� $��8,0,1.937,136.248q�$
��Wrap=�$��Time Left :��$��Bottom=��� $��37.273,80.921,8,0q�$
��Wrap=�$��Time :��$	��Top=��� -    ��Name$ textBlockTimeLeft��$��2,0,0,136.248q�$
��Wrap=�$��1��$��Bottom=�$��2���� $��37,0,29,31.311q� �� Orientation$ 
Horizontal=�$��3��$��Bottom=�.+��� -    ��Name$ buttonStrat��$��Start��$
��Left=�$��84.274��$��39.246������ *StartButtonCommand+ �� ElementName$ window��$ OneWay=����� *SelectionBoxItem+$ comboBoxTime��$ OneWay=�{��� *	IsRunning+ �� 	Converter# [  $ window���� $
��Stop��$
��Left=�$��39.246��$��84.394��$��15,0,1,0q�$
��Stop��{��� *	IsRunning+$ window������ *StopButtonCommand+$ window��$ OneWay=�