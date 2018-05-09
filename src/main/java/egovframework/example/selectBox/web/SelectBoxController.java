package egovframework.example.selectBox.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.selectBox.service.SelectBoxService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class SelectBoxController {
	
	@Resource(name="selectBoxService")
	private SelectBoxService selectBoxService;
	
	@RequestMapping("/selectBox.do")
	public String selectBoxMain(ModelMap model) throws Exception {
		
		List<EgovMap> parentList = selectBoxService.selectParentBoxList();
		System.out.println(parentList);
		model.addAttribute("parentList",parentList);
		return "selectBox/selectBox.tiles";
	}
	@RequestMapping("/childSelectBox.do")
	public void childSelectBox (@RequestParam String param,HttpServletRequest request) throws Exception {
		System.out.println(param);
		System.out.println("request를 통한 값 받기 : "+ request.getParameter("param"));
		
		List<EgovMap> childList = selectBoxService.selectChildBoxList(param);
		
		for (int i = 0; i < childList.size(); i++) {
			System.out.println(childList.get(i));
		}
		System.out.println(childList);
	}
	
}
