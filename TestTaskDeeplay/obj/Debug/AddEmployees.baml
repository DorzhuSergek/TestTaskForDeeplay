   M S B A M L   `   `   `  ����J  FTestTaskDeeplay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:TestTaskDeeplayTestTaskDeeplay  5      "    TestTaskDeeplay.AddEmployees   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:TestTaskDeeplay     5        N� Title$  AddEmployees��5	      .��5      � ���#fff � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��3* �6   �� 5      $	��13* �6   .+�5   
   �� $��ФИО��6   $��0��6   $��Center=�6-   $��Center=�6J   �� 5   
   $��Дата Рождения��6   $��1��6)   $��Center=�67   $��Center=�6T   �� 5   
   $��Пол��6   $��2��6   $��Center=�6-   $��Center=�6J   �� 5   
   $��Должность��6   $��3��6%   $��Center=�63   $��Center=�6P   �� 5   
   -   5        $��surname��5      $��1��6:   $��0��6J   $	��300��6W   $��30��6c   ��6!   �� *	FulName+6c   (  "System.Windows.Controls.DatePicker  5   
   -   5        $
��date��5      $��1��6G   $��1��6W   $	��300��6d   $��30��6p      SelectedDate 6!   �� *DateOfBirth+6p   �� 5   
   -   5        $��	cmbGender��5      $��1��6$   $��2��64   $	��300��6A   $��30��6M    �� SelectedItem 6Y   ��  �� Path$ Gender��� 5   
   -   5        $��cmbPosition��5      $��1��6&   $��3��66   $	��300��6C   $��30��6O    �� DisplayMemberPath$
 Name��6�    6[   �� $ Position�6�   �� 5   
   -   5        $��BtnSave��5   Y   $��Сохранить��6   $��1��6%   $��5��65   $��122,10,135,20q�6B   6h   �� 5    
   -   5        $��
Назад��5       $��0��6!   $��4��61   $	��100��6>   $��20��6J   6V   5!      5"      