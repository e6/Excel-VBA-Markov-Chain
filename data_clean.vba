Sub data_balance()
'
' data_balance Macro
' gets the bookings data onto the same scale
'
' Keyboard Shortcut: Ctrl+b
'
'variable declaration
Dim bookings As Integer
Dim i As Integer
Dim finished As Integer
'Integer overflows so I need to use a Long
Dim Thursday As Long
Dim Friday As Long
Dim Saturday As Long
Dim Sunday As Long
Dim Monday As Long
Dim Tuesday As Long
Dim Wednesday As Long
Dim Counter As Integer
Dim bookings_column As Integer
Dim bookings_row As Integer
'variable initialization
Thursday = 0
Friday = 0
Saturday = 0
Sunday = 0
Monday = 0
Tuesday = 0
Wednesday = 0
'fifteen iterations of 7 days each
finished = 10
'column # with bookings
bookings_column = 2
bookings_row = 1
For i = 1 To finished
    'sums the values in the rows
    Thursday = Thursday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Friday = Friday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Saturday = Saturday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Sunday = Sunday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Monday = Monday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Tuesday = Tuesday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Wednesday = Wednesday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
Next i

    
    Worksheets("Table").Cells(1, 10).Value = Thursday
    Worksheets("Table").Cells(2, 10).Value = Friday
    Worksheets("Table").Cells(3, 10).Value = Saturday
    Worksheets("Table").Cells(4, 10).Value = Sunday
    Worksheets("Table").Cells(5, 10).Value = Monday
    Worksheets("Table").Cells(6, 10).Value = Tuesday
    Worksheets("Table").Cells(7, 10).Value = Wednesday
    
    
    Worksheets("Table").Cells(1, 11).Value = Thursday / finished
    Worksheets("Table").Cells(2, 11).Value = Friday / finished
    Worksheets("Table").Cells(3, 11).Value = Saturday / finished
    Worksheets("Table").Cells(4, 11).Value = Sunday / finished
    Worksheets("Table").Cells(5, 11).Value = Monday / finished
    Worksheets("Table").Cells(6, 11).Value = Tuesday / finished
    Worksheets("Table").Cells(7, 11).Value = Wednesday / finished

  


End Sub
Sub data_balance()
'
' data_balance Macro
' for gsn casino
'
' Keyboard Shortcut: Ctrl+b
'
'variable declaration
Dim bookings As Integer
Dim i As Integer
Dim finished As Integer
'Integer overflows so I need to use a Long
Dim Thursday As Long
Dim Friday As Long
Dim Saturday As Long
Dim Sunday As Long
Dim Monday As Long
Dim Tuesday As Long
Dim Wednesday As Long
Dim Counter As Integer
Dim bookings_column As Integer
Dim bookings_row As Integer
'variable initialization
Thursday = 0
Friday = 0
Saturday = 0
Sunday = 0
Monday = 0
Tuesday = 0
Wednesday = 0
'fifteen iterations of 7 days each
finished = 52
'column # with bookings
bookings_column = 2
bookings_row = 1
For i = 1 To finished
    'sums the values in the rows
    Thursday = Thursday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Friday = Friday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Saturday = Saturday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Sunday = Sunday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Monday = Monday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Tuesday = Tuesday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
    
    Wednesday = Wednesday + Worksheets("Table").Cells(bookings_row, bookings_column).Value
    bookings_row = bookings_row + 1
Next i

    
    Worksheets("Table").Cells(1, 10).Value = Thursday
    Worksheets("Table").Cells(2, 10).Value = Friday
    Worksheets("Table").Cells(3, 10).Value = Saturday
    Worksheets("Table").Cells(4, 10).Value = Sunday
    Worksheets("Table").Cells(5, 10).Value = Monday
    Worksheets("Table").Cells(6, 10).Value = Tuesday
    Worksheets("Table").Cells(7, 10).Value = Wednesday
    
    
    Worksheets("Table").Cells(1, 11).Value = Thursday / finished
    Worksheets("Table").Cells(2, 11).Value = Friday / finished
    Worksheets("Table").Cells(3, 11).Value = Saturday / finished
    Worksheets("Table").Cells(4, 11).Value = Sunday / finished
    Worksheets("Table").Cells(5, 11).Value = Monday / finished
    Worksheets("Table").Cells(6, 11).Value = Tuesday / finished
    Worksheets("Table").Cells(7, 11).Value = Wednesday / finished

  


End Sub

