package com.kuliah.main.services;

import java.util.List;



import com.kuliah.main.entity.PlotMataKuliah;
import com.kuliah.main.entity.Soal;


public interface ModelPlotMataKuliahInterface {
	public List<PlotMataKuliah> getAllPlotMataKuliah();
	public PlotMataKuliah addPlotMataKuliah(PlotMataKuliah plotmatakuliah);
	public PlotMataKuliah getPlotMataKuliahById(String id);
	public void deletePlotMataKuliah(String id);
}
