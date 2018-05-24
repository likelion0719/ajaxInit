package egovframework.example.selectBox.web;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.cmmn.JsonUtil;
import egovframework.example.selectBox.service.SelectBoxService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class SelectBoxController {
	
	@Resource(name="selectBoxService")
	private SelectBoxService selectBoxService;
	
	@ModelAttribute("parentList") 
	public List<EgovMap> parentList(ModelMap model) throws Exception {
		return selectBoxService.selectParentBoxList();
	}
	
	@RequestMapping("/selectBox.do")
	public String selectBoxMain(ModelMap model) throws Exception {
		
		/*List<EgovMap> parentList = selectBoxService.selectParentBoxList();
		System.out.println(parentList);
		model.addAttribute("parentList",parentList);*/
		return "selectBox/selectBox.tiles";
	}
	@RequestMapping("/childSelectBox.do")
	public void childSelectBox (@RequestBody String reqParam,HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		String param = "";
		String parameter = "";
		
		/*
		Enumeration<String> name = request.getParameterNames();
		
		while (name.hasMoreElements()) {
			parameter = name.nextElement();
		}
		System.out.println("########parameter : " + parameter);
		*/
		
		System.out.println("########## reqParam :" +reqParam);
		/*
		 * parameter = URLDecoder.decode(reqParam, "utf-8");
		System.out.println("########## reqParam :" +parameter);
		parameter = parameter.substring(0, parameter.length()-1);
		System.out.println("########## reqParam :" +parameter);
		 */		
		
		Map<String, Object> resMap = JsonUtil.JsonToMap(parameter);
		param = (String)resMap.get("param");
		
		System.out.println(param);
		System.out.println("request를 통한 값 받기 : "+ request.getParameter("param"));
		
		List<EgovMap> childList = selectBoxService.selectChildBoxList(param);
		
		for (int i = 0; i < childList.size(); i++) {
			System.out.println(childList.get(i));
		}
		System.out.println(childList);
		HashMap<String,Object> resultMap = new HashMap<String,Object>();
		
		resultMap.put("result", "SUCCESS");
		resultMap.put("list", childList);
		
		//ajax로 다시 결과값 보내는 공식 3줄		
		response.setCharacterEncoding("utf-8");  //인코딩
		PrintWriter out = response.getWriter();  //response에 값쓰기위해 쓰는 객체만들기
		out.write(JsonUtil.HashMapToJson(resultMap));//객체를통해 값을 써준다.
		System.out.println(JsonUtil.HashMapToJson(resultMap));
	}
	
}
