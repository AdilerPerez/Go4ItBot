package br.com.go4itbot.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.go4itbot.model.SegmentModel;
import br.com.go4itbot.repository.SegmentRepository;

@Controller
@RequestMapping("/segment")
public class SegmentController {

	private static final String SEGMENT_FOLDER = "segment/";

	@Autowired
	public SegmentRepository repository;

	@GetMapping("/form")
	public String open(@RequestParam String page, @RequestParam(required = false) Long id,
			@ModelAttribute("segmentModel") SegmentModel segmentModel, Model model) {

		if ("segment-editar".equals(page)) {
			model.addAttribute("segmentModel", repository.findById(id).get());
		}

		return SEGMENT_FOLDER + page;
	}

	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("segments", repository.findAll());
		return SEGMENT_FOLDER + "segments";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {

		model.addAttribute("segment", repository.findById(id).get());
		return SEGMENT_FOLDER + "segment-detalhe";
	}

	@PostMapping()
	public String save(@Valid SegmentModel segmentModel, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {

		if (bindingResult.hasErrors()) {
			return SEGMENT_FOLDER + "segment-novo";
		}

		repository.save(segmentModel);
		redirectAttributes.addFlashAttribute("messages", "Segmento cadastrado com sucesso!");

		return "redirect:/segment";
	}

	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid SegmentModel segmentModel, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {

		if (bindingResult.hasErrors()) {
			return SEGMENT_FOLDER + "segment-editar";
		}

		segmentModel.setId(id);
		repository.save(segmentModel);
		redirectAttributes.addFlashAttribute("messages", "Segmento alterado com sucesso!");

		return "redirect:/segment";
	}

	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {

		repository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Segmento exclu�do com sucesso!");

		return "redirect:/segment";
	}

}
