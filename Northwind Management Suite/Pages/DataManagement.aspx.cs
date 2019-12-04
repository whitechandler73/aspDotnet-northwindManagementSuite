using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_DataManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void TableDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (TableDDL.SelectedIndex)
        {
            case 0:
                categoryTbl.Visible = true;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 1:
                categoryTbl.Visible = false;
                customersTbl.Visible = true;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 2:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = true;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 3:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = true;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 4:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = true;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 5:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = true;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

            case 6:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = true;
                suppliersTbl.Visible = false;
                break;

            case 7:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = true;
                break;

            case 8:
                categoryTbl.Visible = false;
                customersTbl.Visible = false;
                employeesTbl.Visible = false;
                orderDetailsTbl.Visible = false;
                ordersTbl.Visible = false;
                productsTbl.Visible = false;
                shippersTbl.Visible = false;
                suppliersTbl.Visible = false;
                break;

        }
    }
}