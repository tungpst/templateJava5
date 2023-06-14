package com.example.templatejava5.controller;

import com.example.templatejava5.entity.PhieuGiamGia;
import com.example.templatejava5.repository.KhachHangRepo;
import com.example.templatejava5.repository.PhieuGiamGiaRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/phieu-giam-gia")
public class PGGController {
    @Autowired
    PhieuGiamGiaRepo phieuGiamGiaRepo;
    @Autowired
    KhachHangRepo khachHangRepo;
    @GetMapping("/hien-thi")
    public String getHienThi(Model model){
        model.addAttribute("PGGG", new PhieuGiamGia());
        model.addAttribute("PGG",phieuGiamGiaRepo.findAll());
        model.addAttribute("KH",khachHangRepo.findAll());
        return "index";
    }
    @PostMapping("/save")
    public String add(@ModelAttribute("PGGG")PhieuGiamGia phieuGiamGia){
        String uuid = UUID.randomUUID().toString();
        phieuGiamGia.setMaphieu(uuid.substring(0,7));
        phieuGiamGiaRepo.save(phieuGiamGia);
        return "redirect:/phieu-giam-gia/hien-thi";
    }
    @PostMapping("/update")
    public String Update(@ModelAttribute("PGGG")PhieuGiamGia phieuGiamGia){
        phieuGiamGiaRepo.save(phieuGiamGia);
        return "redirect:/phieu-giam-gia/hien-thi";
    }
    @GetMapping("delete/{maphieu}")
    public String delete(@PathVariable("maphieu")String maphieu) {
        phieuGiamGiaRepo.deleteById(maphieu);
        return "redirect:/phieu-giam-gia/hien-thi";
    }
    @GetMapping("detail/{maphieu}")
    public String details(@PathVariable("maphieu")String maphieu,Model model) {
        model.addAttribute("PGGG",phieuGiamGiaRepo.findById(maphieu));
        model.addAttribute("KH",khachHangRepo.findAll());
        return "detail";
    }
}
