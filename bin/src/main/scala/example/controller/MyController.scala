package example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class MyController {
	@GetMapping(Array("/"))
	def goHome(): String = "index"
}