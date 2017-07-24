﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrderDetailMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ma = 0;
        int.TryParse(Request.QueryString["oid"], out ma);
        if(ma!=0)
            this.LoadOrderDetail(ma);
    }

    private void LoadOrderDetail(int ma)
    {
        using (var k = new Kho())
        {
            var order = k.TimCTHD(ma);
            grvCTHD.DataSource = order;
            grvCTHD.DataBind();
        }
    }
}