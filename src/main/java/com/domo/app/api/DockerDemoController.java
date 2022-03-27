package com.domo.app.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerDemoController {

	@GetMapping("/test")
	public String testDockerSetup() {
		return "success";
	}
}
