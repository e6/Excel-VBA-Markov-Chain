Sub Markov_macro()
'
' Markov_macro Macro
' Macro that transforms data into what can be used for Markov Chain
'
' Keyboard Shortcut: Ctrl+Shift+M
'
'declarations
Dim start_row As Integer
Dim end_row As Integer
Dim i As Integer
Dim column_to_fill As Integer
Dim column_to_check As Integer

'initializations
end_row = 130
start_row = 71
column_to_fill = 12
column_to_check = 11
'Fills the rows
For i = start_row To end_row
        If Worksheets("Table").Cells(i, column_to_check).Value >= 0 Then
        Worksheets("Table").Cells(i, column_to_fill).Value = 1
        Else
        Worksheets("Table").Cells(i, column_to_fill).Value = 0
        End If
        
Next i
        

End Sub


Sub Markov_macro()
'
' Markov_macro Macro
' Macro that transforms data into what can be used for Markov Chain
'for gsn casino
' Keyboard Shortcut: Ctrl+Shift+M
'
'declarations
Dim start_row As Integer
Dim end_row As Integer
Dim i As Integer
Dim column_to_fill As Integer
Dim column_to_check As Integer

'initializations
end_row = 130
start_row = 365
column_to_fill = 12
column_to_check = 11
'Fills the rows
For i = start_row To end_row
        If Worksheets("Table").Cells(i, column_to_check).Value >= 0 Then
        Worksheets("Table").Cells(i, column_to_fill).Value = 1
        Else
        Worksheets("Table").Cells(i, column_to_fill).Value = 0
        End If
        
Next i
        

End Sub
