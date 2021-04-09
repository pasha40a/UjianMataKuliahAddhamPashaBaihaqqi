package com.kuliah.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.kuliah.main.entity.Dosen;
import com.kuliah.main.entity.Mahasiswa;
import com.kuliah.main.entity.PlotMataKuliah;
import com.kuliah.main.entity.Soal;
import com.kuliah.main.services.ModelDosen;
import com.kuliah.main.services.ModelMahasiswa;
import com.kuliah.main.services.ModelMataKuliah;
import com.kuliah.main.services.ModelPlotMataKuliah;
import com.kuliah.main.services.ModelSoal;

@Controller
public class PlotMataKuliahPage {

	@Autowired
	ModelSoal modelSoal;
	
	@Autowired
	ModelMahasiswa modelMahasiswa;
	
	@Autowired
	ModelMataKuliah modelMataKuliah;
	
	@Autowired
	ModelDosen modelDosen;
	
	@Autowired
	ModelPlotMataKuliah modelPlotMataKuliah;
	
	@GetMapping("/plotmatakuliah/view")
	public String viewIndexPlotMataKuliah(Model model) {
		
		model.addAttribute("lstPlotMataKuliah",modelPlotMataKuliah.getAllPlotMataKuliah());
	
		return "view_plotmatakuliah";
	}
	
	@GetMapping("/plotmatakuliah/add")
	public String viewAddSoal(Model model) {
		
		// buat penampung data Soal di halaman htmlnya
		model.addAttribute("plotmatakuliah",new PlotMataKuliah());
		model.addAttribute("listSoal", modelSoal.getAllSoal());
		model.addAttribute("listMahasiswa", modelMahasiswa.getAllMahasiswa());
		model.addAttribute("listMataKuliah", modelMataKuliah.getAllMataKuliah());
		model.addAttribute("listDosen", modelDosen.getAllDosen());
		//System.out.println("PlotMataKuliah");
		return "add_plotmatakuliah";
		
	}
	
	
	
	@PostMapping("/plotmatakuliah/view")
	  public String addPlotMataKuliah(@ModelAttribute PlotMataKuliah PlotMataKuliah,Mahasiswa mahasiswa, Model model) {
		
		// buat penampung data Soal di halaman htmlnya
		this.modelPlotMataKuliah.addPlotMataKuliah(PlotMataKuliah);
		model.addAttribute("lstPloMataKuliah",modelPlotMataKuliah.getAllPlotMataKuliah());
		
		return "redirect:/plotmatakuliah/view";
	}
	
	@GetMapping("/plotmatakuliah/update/{id}")
	public String viewUpdatePlotMataKuliah(@PathVariable String id, Model model) {
		
		PlotMataKuliah plotmatakuliah = modelPlotMataKuliah.getPlotMataKuliahById(id);
		// buat penampung data Soal di halaman htmlnya
		model.addAttribute("plotmatakuliah",plotmatakuliah);
		
		return "add_plotmatakuliah";
	}
	
	@GetMapping("/plotmatakuliah/delete/{id}")
	public String deletePlotMataKuliah(@PathVariable String id, Model model) {
		
		this.modelPlotMataKuliah.deletePlotMataKuliah(id);
		model.addAttribute("listPlotMataKuliah",modelPlotMataKuliah.getAllPlotMataKuliah());
		
		
		return "redirect:/plotmatakuliah/view";
	}
	
}
