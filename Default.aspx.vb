Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Services

Partial Class VB
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim con As New SqlConnection("Data Source=(local);Initial Catalog=testdb;Integrated Security=True; MultipleActiveResultSets=true")

            Dim cmd As New SqlCommand("SELECT [id] ,[column2] ,[column3] ,[column4] ,[column5] ,[column6] ,[column7] ,[column8] ,[column9]  FROM testtbl")
            cmd.Connection = con
            Dim sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

        End If
    End Sub

    <WebMethod> _
    Public Shared Function updaterow(ByVal list As List(Of String)) As Integer

 
        Dim con As New SqlConnection("Data Source=(local);Initial Catalog=testdb;Integrated Security=True")
        con.Open()
        Dim cmd = New SqlCommand(" update [testtbl] set " & list.Item(0) & "='" & list.Item(1) & "' where id= " & Convert.ToInt32(list.Item(2)), con)
        cmd.ExecuteNonQuery()
        con.Close()
        Return 1
    End Function
End Class
