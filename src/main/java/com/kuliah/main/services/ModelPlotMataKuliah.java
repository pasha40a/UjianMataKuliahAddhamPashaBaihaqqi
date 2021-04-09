package com.kuliah.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kuliah.main.entity.Mahasiswa;
import com.kuliah.main.entity.PlotMataKuliah;
import com.kuliah.main.entity.Soal;
import com.kuliah.main.repository.PlotMataKuliahRepository;
@Service
public class ModelPlotMataKuliah implements ModelPlotMataKuliahInterface{

	@Autowired
	PlotMataKuliahRepository PlotMataKuliahRepo;
	
	@Override
	public List<PlotMataKuliah> getAllPlotMataKuliah() {
		// TODO Auto-generated method stub
		return (List<PlotMataKuliah>) this.PlotMataKuliahRepo.findAll();
	}
	@Override
	public PlotMataKuliah addPlotMataKuliah(PlotMataKuliah plotmatakuliah) {
		// TODO Auto-generated method stub
		
		return  this.PlotMataKuliahRepo.save(plotmatakuliah);
	
	}
	public PlotMataKuliah getPlotMataKuliahById(String id) {
		// TODO Auto-generated method stub
		return 	((PlotMataKuliah)this.PlotMataKuliahRepo.findByIdPlotMataKuliah(Long.parseLong(id)));
	}
	@Override
	public void deletePlotMataKuliah(String id) {
		// TODO Auto-generated method stub
		this.PlotMataKuliahRepo.deleteById(Long.parseLong(id));
	}

	

	
}
