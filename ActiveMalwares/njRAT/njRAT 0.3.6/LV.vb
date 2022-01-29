Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Windows.Forms

Namespace njRAT
    <DesignerGenerated> _
    Public Class LV
        Inherits ListView
        ' Methods
        Public Sub New()
            AddHandler MyBase.ColumnClick, New ColumnClickEventHandler(AddressOf Me.ColumnClick)
            Me.AllowDrop = False
            Me.Font = New Font("arial", 8.0!, FontStyle.Bold)
            Me.Dock = DockStyle.Fill
            Me.FullRowSelect = True
            Me.View = View.Details
            Me.SetStyle((ControlStyles.OptimizedDoubleBuffer Or ControlStyles.AllPaintingInWmPaint), True)
            Me.SetStyle(ControlStyles.EnableNotifyMessage, True)
        End Sub

        Public Sub ColumnClick(ByVal sender As Object, ByVal e As ColumnClickEventArgs)
            Dim ascending As SortOrder
            Dim header As ColumnHeader = DirectCast(NewLateBinding.LateGet(sender, Nothing, "Columns", New Object() {e.Column}, Nothing, Nothing, Nothing), ColumnHeader)
            If (Me.m_SortingColumn Is Nothing) Then
                ascending = SortOrder.Ascending
            Else
                If header.Equals(Me.m_SortingColumn) Then
                    If Me.m_SortingColumn.Text.StartsWith("+") Then
                        ascending = SortOrder.Descending
                    Else
                        ascending = SortOrder.Ascending
                    End If
                Else
                    ascending = SortOrder.Ascending
                End If
                Me.m_SortingColumn.Text = Me.m_SortingColumn.Text.Substring(1)
            End If
            Me.m_SortingColumn = header
            If (ascending = SortOrder.Ascending) Then
                Me.m_SortingColumn.Text = ("+" & Me.m_SortingColumn.Text)
            Else
                Me.m_SortingColumn.Text = ("-" & Me.m_SortingColumn.Text)
            End If
            If (Not sender Is Nothing) Then
                NewLateBinding.LateSet(sender, Nothing, "ListViewItemSorter", New Object() {New clsListviewSorter(e.Column, ascending)}, Nothing, Nothing)
                NewLateBinding.LateCall(sender, Nothing, "Sort", New Object(0 - 1) {}, Nothing, Nothing, Nothing, True)
                NewLateBinding.LateSet(sender, Nothing, "ListViewItemSorter", New Object() {Nothing}, Nothing, Nothing)
            End If
        End Sub

        <DebuggerNonUserCode> _
        Protected Overrides Sub Dispose(ByVal disposing As Boolean)
            Try
                If (disposing AndAlso (Not Me.components Is Nothing)) Then
                    Me.components.Dispose()
                End If
            Finally
                MyBase.Dispose(disposing)
            End Try
        End Sub

        Public Sub FX()
            Me.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
        End Sub

        <DebuggerStepThrough> _
        Private Sub InitializeComponent()
            Me.components = New Container
        End Sub

        Protected Overrides Sub OnNotifyMessage(ByVal m As Message)
        End Sub


        ' Fields
        Private components As IContainer
        Private m_SortingColumn As ColumnHeader

        ' Nested Types
        Public Class clsListviewSorter
            Implements IComparer

            ' Methods
            Public Sub New(ByVal column_number As Integer, ByVal sort_order As SortOrder)
                Me.m_ColumnNumber = column_number
                Me.m_SortOrder = sort_order
            End Sub

            Public Function [Compare](ByVal x As Object, ByVal y As Object) As Integer
                Dim text As String
                Dim str2 As String
                Dim item As ListViewItem = DirectCast(x, ListViewItem)
                Dim item2 As ListViewItem = DirectCast(y, ListViewItem)
                If (item.SubItems.Count <= Me.m_ColumnNumber) Then
                    [text] = ""
                Else
                    [text] = item.SubItems.Item(Me.m_ColumnNumber).Text
                End If
                If (item2.SubItems.Count <= Me.m_ColumnNumber) Then
                    str2 = ""
                Else
                    str2 = item2.SubItems.Item(Me.m_ColumnNumber).Text
                End If
                If (Me.m_SortOrder = SortOrder.Ascending) Then
                    If (Versioned.IsNumeric([text]) And Versioned.IsNumeric(str2)) Then
                        Return Conversion.Val([text]).CompareTo(Conversion.Val(str2))
                    End If
                    If (Information.IsDate([text]) And Information.IsDate(str2)) Then
                        Return DateTime.Parse([text]).CompareTo(DateTime.Parse(str2))
                    End If
                    Return String.Compare([text], str2)
                End If
                If (Versioned.IsNumeric([text]) And Versioned.IsNumeric(str2)) Then
                    Return Conversion.Val(str2).CompareTo(Conversion.Val([text]))
                End If
                If (Information.IsDate([text]) And Information.IsDate(str2)) Then
                    Return DateTime.Parse(str2).CompareTo(DateTime.Parse([text]))
                End If
                Return String.Compare(str2, [text])
            End Function


            ' Fields
            Private m_ColumnNumber As Integer
            Private m_SortOrder As SortOrder

            Public Function Compare1(x As Object, y As Object) As Integer Implements IComparer.Compare

            End Function
        End Class
    End Class
End Namespace

