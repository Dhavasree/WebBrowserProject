package com.cg.ctrl;




import javax.validation.Valid;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cg.model.Destination;
import com.cg.model.DestinationJsonResponse;
import com.cg.model.Source;
import com.cg.model.SourceJsonResponse;

@Controller
public class webController {
	@GetMapping("/")
	   public String sourceForm() {
	      return "source";
	   }
	 @PostMapping(value = "/login", produces = { MediaType.APPLICATION_JSON_VALUE })
	   @ResponseBody
	   public SourceJsonResponse login(@ModelAttribute @Valid Source source,
	         BindingResult result) {

	      SourceJsonResponse response = new SourceJsonResponse();
	         response.setValidated(true);
	         response.setSource(source);
return response;
	   }
	 @PostMapping(value = "/dest", produces = { MediaType.APPLICATION_JSON_VALUE })
	   @ResponseBody
	   public DestinationJsonResponse dest(@ModelAttribute @Valid Destination destination,
	         BindingResult result) {

		 DestinationJsonResponse response1 = new DestinationJsonResponse();
	         response1.setValidated(true);
	         response1.setDestination(destination);         
	      
	    return response1;
	   }
	}
