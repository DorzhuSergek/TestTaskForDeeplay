   M S B A M L   `   `   `  ����J  FTestTaskDeeplay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:TestTaskDeeplayTestTaskDeeplay  5      #    TestTaskDeeplay.EmoloyeesPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:TestTaskDeeplay     5      -   5          N� Title$  EmoloyeesPage��5
      .��5      � 
������� � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $	��10* �6   �� 5      $
��auto �6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   .+�5      �� -   5        $��cmbSortPosition��5   8   $��0��6O   $	��200��6_   $��30��6k    �� DisplayMemberPath$
 Name��6w   ��6   �� *
Position+6�   �� 5      -   5        $��1��5      $	��200��6%   $��20��61   $%��Сбросить фильтры��6=   6X   �� 5      -   5        $��cmbSortSubdibision��5   ;   $��2��6U   $	��200��6f   $��30��6r   $
 Text��6~   ��6   �� *Subdivision+6�   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DGrid��5         AutoGenerateColumns .     
IsReadOnly .    RowBackground
 �����   AlternatingRowBackground
 �����$��Stretch=�6�   $	��Top=�6�   $��1��6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Имя��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *	FulName+6N     5      $
 Дата Рождения��6%   $ * 6\    6<   �� *DateOfBirth+6\     5       $
 Пол��6%   $ * 6M    62   �� *Gender+6M     5!      $
 Должность��6%   $ * 6Z    68   �� *Position.Name+6Z     5"      $
 Информация��6%   $ * 6g    69   �� *Position.Subdivision.Text+6g   4  .System.Windows.Controls.DataGridTemplateColumn  5#      $ 35 6)      CellTemplate 5$      �� 5%      .R�5&      ��  ��Name$ BtnEdit��6$   -   5        $��/Resources/edit.png��5&   S   $��30��6p   $��30��6{   6�   5'      5)      5+      � 5,   
   $��2��6    5-      �� 5.      �� 5/      .+�51      �� -   5        $��	addPlayer��51      $��Добавить��6&   $��Bottom=�6:   $��25��6U   $	��150��6a   $��0��6m   6}   �� 52      -   5        $��	delPlayer��52      $��Удалить��6&   $��Bottom=�68   $��25��6S   $	��150��6_   $��1��6k   6{   53      54      55      