VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   Caption         =   "Cockro Hacker"
   ClientHeight    =   3060
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6930
   LinkTopic       =   "Form1"
   ScaleHeight     =   3060
   ScaleWidth      =   6930
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Caption         =   "Behind the astriks"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   5400
      TabIndex        =   2
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton cmdEnd 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1035
      Left            =   5400
      TabIndex        =   1
      Top             =   480
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   5175
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      Caption         =   "Cocro Hack ver 1.0 created by Prabir Krishna Shrestha"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   1920
      TabIndex        =   3
      Top             =   120
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type POINTAPI
    X As Long
    Y As Long
    End Type


Private Declare Function GetClassNames Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal LpClassName As String, ByVal nMaxCount As Long) As Long


Private Declare Function UpdateWindow Lib "user32" (ByVal hwnd As Long) As Long


Private Declare Function SetFocusAp Lib "user32" Alias "SetFocus" (ByVal hwnd As Long) As Long


Private Declare Function SetForegroundWindow Lib "user32" (ByVal hwnd As Long) As Long


Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long


Private Declare Function WindowFromPoint Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long


Private Declare Function GetParent Lib "user32" (ByVal hwnd As Long) As Long


Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    Private Exper As Boolean


Private Sub cmdEnd_Click()

End

End Sub

Private Sub Command1_Click()
    Dim Point As POINTAPI, Cname As String, Resxxx As Long, LSta As Long
    Dim Counter As Long, xxx As Long, Par As Long
    Const Clase_Name As String = "ThunderTextBox"
    Const Clase_Name2 As String = "Edit"
    Exper = False


    Do Until Exper = True
        Resxxx = GetCursorPos(Point)
        Resxxx = WindowFromPoint(Point.X, Point.Y)


        If Resxxx <> 0 Then
            Cname = String$(255, 0)
            xxx = GetClassNames(Resxxx, Cname, 254)


            If InStr(1, Cname, Clase_Name2, vbTextCompare) <> 0 Then
                Par = GetParent(Resxxx)
                xxx = SendMessage(Resxxx, &HCC, 0, 0)
                xxx = SetForegroundWindow(Par)
                xxx = UpdateWindow(Par)
                xxx = UpdateWindow(Resxxx)
                xxx = UpdateWindow(Resxxx)
                xxx = SetFocusAp(Resxxx)
                SetFocusAp xxx
                SetFocusAp Resxxx
                Exper = True
            End If
        End If


        DoEvents
        Loop
    End Sub

Private Sub Form_Load()
List1.Clear
Call GetPasswords
ends:
End Sub

Private Sub Label1_Click()

End Sub

Private Sub List1_Click()
Dim pik As Integer
pik = List1.ListIndex
def = List1.List(pik)
MsgBox (def)
End Sub
