<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://ajax.cdnjs.com/ajax/libs/json2/20110223/json2.js"></script>

    <script>

        $(document).ready(function () {
            $("td").on("click", function () {
                $(this).find("input").show()
                $(this).find("input").focus()
                $(this).find("span").text("")
                $(this).find("input").focusout(function () {
                    var col = $(this).attr("name").substring($(this).attr("name").lastIndexOf("$") + 1)
                    var list = new Array();
                    list[0] = col
                    list[1] = $(this).val();
                    list[2] = $(this).attr('data');
                    $.ajax({
                        type: "POST",
                        url: "Default.aspx/updaterow",
                        data: JSON.stringify({ list: list }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {

                        },
                        error: function (xhr) {
                           // $("#err").val('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);

                        }
                    });
                    $(this).hide();
                    $(this).parent().find("span").text($(this).val())
                });


            })
        });
    </script>







    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText=" Id" ItemStyle-Width="30">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("id")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="tbltd" runat="server" Text='<%# Eval("id")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column2" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column2")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column2" runat="server" Text='<%# Eval("column2")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column3" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column3")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column3" runat="server" Text='<%# Eval("column3")%>' />
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="column4" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column4")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column4" runat="server" Text='<%# Eval("column4")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column5" ItemStyle-Width="150" >
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column5")%></asp:Label> 
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column5" runat="server" Text='<%# Eval("column5")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column6" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column6")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column6" runat="server" Text='<%# Eval("column6")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column7" ItemStyle-Width="150">
                <ItemTemplate><asp:Label runat="server"><%# Eval("column7")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column7" runat="server" Text='<%# Eval("column7")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column8" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column8")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column8" runat="server" Text='<%# Eval("column8")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="column9" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label runat="server"><%# Eval("column9")%></asp:Label>
                    <asp:TextBox size="4" data='<%# Eval("id")%>' style="display:none" ID="column9" runat="server" Text='<%# Eval("column9")%>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
