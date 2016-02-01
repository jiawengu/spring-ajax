package ajax;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloAjax {
	
	@RequestMapping("ajax")
	@ResponseBody
	public Person handler(@ModelAttribute Person person, HttpServletResponse response) throws IOException{
		System.out.println(person.getName());
		System.out.println();
		return person;
	}
	
	@RequestMapping("hello")
	public String jump(){
		return "ajax";
	}
}
