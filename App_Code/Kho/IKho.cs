﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IKho
/// </summary>
public interface IKho : IDisposable
{
    #region Products
    List<Product> DanhSachSP { get; }

    List<Product> DanhSachSPHienThi { get; }

    void themSP(Product p);

    Product TimSP(int id);

    Product TimSPTheoTen(string name);

    void SuaSP(Product product);

    void XoaSP(int id);
    #endregion

    #region Category
    List<Category> DanhSachDM { get; }
    void themDM(Category c);

    Category TimDM(int id);

    Category TimDMTheoTen(string name);

    void SuaDM(Category category);

    void XoaDM(int id);
    #endregion

    #region Supplier
    List<Supplier> DanhSachNCC { get; }

    void themNCC(Supplier s);

    Supplier TimNCC(int id);

    void SuaNCC(Supplier supplier);

    void XoaNCC(int id);

    Supplier TimNCCTheoTen(string name);
    #endregion

    #region User

    List<User> DanhSachND { get; }

    List<User> DanhSachNDTheoMa(int uid);

    List<User> DanhSachNDHienThi { get; }

    // Add user

    bool ThemND(User u);

    // Check User

    User TimNDTheoTenDN(string username);

    User TimND(int id);

    // Modify User

    void SuaTTND(User user);

    void XoaND(int id);

    #endregion

    #region Role
    List<Role> DanhSachRole { get; }

    Role TimRole(int id);

    #endregion

    #region Order
    List<Order> DanhSachHD { get; }

    void themHD(Order p);

    Order TimHD(int id);

    Order TimHDTheoTen(string name);

    void GiaoHD(int id);

    #endregion

    #region Order Detail
    List<OrderDetail> DanhSachCTHD { get; }

    void ThemCTHD(List<Cart> c, Order o);

    List<OrderDetail> TimCTHD(int id);

    #endregion

}