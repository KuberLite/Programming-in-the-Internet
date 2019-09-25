using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class SiteMaster : MasterPage
    {
        HtmlTable htmlTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Add("11111111111111111");
                DropDownList1.Items.Add("22222222222222222");
                DropDownList1.Items.Add("33333333333333333");
            }
            htmlTable = new HtmlTable();
            htmlTable.Border = 1;
            htmlTable.CellPadding = 3;
            htmlTable.CellPadding = 3;
            htmlTable.Align = "center";
            htmlTable.BorderColor = "red";
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlControl"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "onserverclick"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "onserverchange"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HTMLInputResetButton_Click(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            Response.Write("<br />" + ((Control)sender).ID);
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputReset"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
            this.Controls.Add(htmlTable);
        }

        protected void Button_OnServerClick(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            Response.Write("<br />" + ((Control)sender).ID + sender.GetType().ToString());
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputButton"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HtmlInputTextButton1_ServerChange(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            HtmlInputTex1t.InnerText = HtmlInputTextButton1.Value;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputText"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HTMLInputSubmitButton1_ServerClick(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputSubmit"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HtmlInputTextPassword_ServerChange(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputTextPassword"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HtmlInputCheckBox_ServerChange(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputCheckBox"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }

        protected void HtmlInputRadio_ServerChange(object sender, EventArgs e)
        {
            HtmlTableRow row;
            HtmlTableCell cell;
            row = new HtmlTableRow();
            cell = new HtmlTableCell(); cell.InnerHtml = "HtmlInputRadio"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "YES"; row.Cells.Add(cell);
            cell = new HtmlTableCell(); cell.InnerHtml = "NO"; row.Cells.Add(cell);
            htmlTable.Rows.Add(row);
        }
    }
}