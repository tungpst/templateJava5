package com.example.templatejava5.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "phieugiamgia")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PhieuGiamGia {
    @Id
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String maphieu;
    private String tenphieu;
    private Date ngaybatdau;
    private Date ngayketthuc;
    private BigDecimal giatrigiam;
    private BigDecimal giatrigiamtoida;
    private int trangthai;
    @ManyToOne
    @JoinColumn(name = "nguoisohuu")
    private KhachHang nguoisohuu;
}
