package com.study.study_springboots.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.service.CommonCodeOurService;
import com.study.study_springboots.utils.CommonUtils;

@Controller
@RequestMapping(value="/commonCodeOur")
public class CommonCodeOurController {
    @Autowired
    CommonCodeOurService commonCodeOurService;

    @Autowired
    CommonUtils commonUtils;

    @RequestMapping(value={"/update"}, method = RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = commonCodeOurService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list");  // 업데이트가 되면 list로 이동
        return modelAndView; //디버깅모드에서 보면 resultMap에 key value형식으로 값들이 들어와있는것을 확인
      }

      @RequestMapping(value={"/updateMulti"}, method = RequestMethod.POST)
      public ModelAndView updateMulti(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam Map<String, Object> params, ModelAndView modelAndView){
        
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames(); 

        while(fileNames.hasNext()) {
            String value = (String)params.get(fileNames.next());
            System.out.print(value); //db저장이 되어있따.
            if(value != null){

            }

        }
        modelAndView.setViewName("commonCode_our/list");
          return modelAndView; //디버깅모드에서 보면 resultMap에 key value형식으로 값들이 들어와있는것을 확인
  
      }

    @RequestMapping(value={"/list", "/", ""}, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = commonCodeOurService.getList(params);  
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list");
        return modelAndView; //디버깅모드에서 보면 resultMap에 key value형식으로 값들이 들어와있는것을 확인
    }
// 리스트 페이지의 컨트롤러
    @RequestMapping(value = { "/listPagination/{currentPage}" }, method = RequestMethod.GET)
    public ModelAndView listPagination(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        // 페이지스케일
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = commonCodeOurService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list_pagination");
        return modelAndView;
}

    @RequestMapping(value="/edit/{uniqueId}", method = RequestMethod.GET)  // edit는 update를 위한 화면
    public ModelAndView edit(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        //@PathVariable String uniqueId   path value기 때문에 @어노테이션 넣어주고 list에서 주소창에 넣어준 값을 받아와서 사용할예쩡
        params.put("COMMON_CODE_ID", uniqueId);  //받은 uniqueId를 params에 넣어주고 
        Object resultMap = commonCodeOurService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/edit");
        return modelAndView; 
    }   

    @RequestMapping(value="/editMulti/{uniqueId}", method = RequestMethod.GET)
    public ModelAndView editMulti(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        //@PathVariable String uniqueId   path value기 때문에 @어노테이션 넣어주고 list에서 주소창에 넣어준 값을 받아와서 사용할예쩡
        params.put("COMMON_CODE_ID", uniqueId);  //받은 uniqueId를 params에 넣어주고 
        params.put("SOURCE_UNIQUE_SEQ", uniqueId);  //받은 uniqueId를 params에 넣어주고 
        

        Object resultMap = commonCodeOurService.getOneWithAttachFiles(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/editMulti");
        return modelAndView; 
    }   

    @RequestMapping(value="/delete/{uniqueId}", method = RequestMethod.POST)  
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        params.put("COMMON_CODE_ID", uniqueId); 
        Object resultMap = commonCodeOurService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list"); //딜리트 된 후에 list로 가도록
        return modelAndView; 
    }   

    @RequestMapping(value="/form", method = RequestMethod.GET)  // edit는 update를 위한 화면
    public ModelAndView form(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
       
        modelAndView.setViewName("commonCode_our/edit");
        return modelAndView; 
    }   

    @RequestMapping(value={"/insert"}, method = RequestMethod.POST)
    public ModelAndView insert(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam Map<String, Object> params, ModelAndView modelAndView) throws IOException{
        
        // MultipartHttpServletRequest 추가
        String registerSeq = multipartHttpServletRequest.getParameter("REGISTER_SEQ");
        // 파일추가해서 insert한다면 registerSeq에 들어있는 값 확인.  (값을 하나만 뺄 때.)
        MultipartFile multipartFile = multipartHttpServletRequest.getFile("file_first");
        // 내가 변수지정해서 올렸던 파일을 가져올 수 있다. 
        String fileName = multipartFile.getOriginalFilename();
        // 파일 네임을 가져오고  // static에 폴더 하나 생성 files  폴더우클릭해서 copy relativepath    \하나면 \\로 변경 특수문자라 string에 못넣기 때문.  경로끝에\\도 추가
        String relativePath = "src\\main\\resources\\static\\files\\";
        // file 저장 = remote로 온 파일을 저장해야 하니까(파일이름과 경로 활용..?)  
        // fileName의 value는 bite  저장하려면 bufferWriter사용 (relativePath + fileName)
        BufferedWriter bufferedWriter = Files.newBufferedWriter(Paths.get(relativePath + fileName));
        // Paths.  == \\를 자동첨가해주는 기능
        bufferedWriter.write(new String(multipartFile.getBytes()));
        bufferedWriter.flush();

        

        Object resultMap = commonCodeOurService.insert(params);
        modelAndView.addObject(resultMap);
        modelAndView.setViewName("commonCode_our/list");  
        return modelAndView; 

    }
// -----------------------
// multi delete
@RequestMapping(value = {"/deleteMulti"}, method = RequestMethod.POST)
    public ModelAndView deleteMulti(HttpServletRequest httpServletRequest, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // RequsetParam Map을 그냥 쓰면 멀티로 들어오는 값을 못받음.
        // 묶어서 넘어오는 키값이 있을 때는 서블렛방식 사용(HttpServletRequest)
        // 스프링이 관여했을 때의 파라미터는params, http는 디버깅으로 열어보면 parameterMap에 들어있음. 키 하나에 값 여러개
        // 스프링 파라미터는 값 하나만 , http는 여러개 가능.
        // modelAndView.addObject("resultMap", resultMap);
        // 디버그 콘솔에서 httpServletRequest.getParameterMap()   이 자체는 리스트
        // .get("COMMON_CODE_ID") 까지 뒤에 붙이면 String로 2개가 나옴.
        String[] deleteMultis = httpServletRequest.getParameterMap().get("COMMONCODE_ID");
        // 값이 들어오는 것 까지 확인.
        params.put("deleteMultis", deleteMultis);
        Object resultMap = commonCodeOurService.deleteMulti(params);
        modelAndView.setViewName("commonCode_our/list");
        return modelAndView;
    }
// 복수파일첨가   insertMulti,  formMulti
    @RequestMapping(value={"/insertMulti"}, method = RequestMethod.POST)
    public ModelAndView insertMulti(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam Map<String, Object> params, ModelAndView modelAndView) throws IOException{
       
        // 파일 이름을 가져오는 기능
        // getFileNames에 마우스를 쭉 올려두면 Iterator<String> 라는 자료형이 뜬다.
        // 파일네임의 리스트를 잡아와서
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        // files 우클릭 copy path  / relative path쓰니까 에러가 발생해서 일단 절대경로인 path사용
        // String relativePath = "C:\\Develops\\study_springboots\\src\\resources\\static\\files\\";
        String relativePath = commonUtils.getRelativeToAbsolutePath("src\\main\\resources\\static\\files");
        // while hasnext를 통해 뽑아내고 변수에 넣어 사용
        
        Map attachfile = null;
        List attachfiles = new ArrayList();
 
        String physicalFileName = commonUtils.getUniqueSequence();
        String storePath = relativePath + physicalFileName + File.separator;
        File newPath = new File(storePath);
        newPath.mkdir();  // create directory
        while (fileNames.hasNext()){ // 값이 있냐고 물어보는 기능 
            String fileName = fileNames.next();   //이 파일의 이름을 file_first를 썼던 자리에 쓰면 된다.
            // MultipartFile multipartFile = multipartHttpServletRequest.getFile("file_first");
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName = multipartFile.getOriginalFilename();
            // 피지컬파일네임은 커먼유틸에서 가져다 쓸 것  getUniqueSequence사용.  위에서 커먼유틸 import해뒀다
            String storePathFileName = storePath + originalFileName;
            multipartFile.transferTo(new File(storePathFileName));//transferTo file dest   // file import java.io
                // multipartFile.transferTo(new File(storePath)); 
        if(originalFileName != null && multipartFile.getSize()>0) {
            attachfile = new HashMap<>();
            // params.get(editMulti 파일업로드하는 코드의 name=""부분 )
            // SOURCE_UNIQUE_SEQ, ORIGINALFILE_NAME, PHYSICALFILE_NAME
            attachfile.put("ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
            attachfile.put("SOURCE_UNIQUE_SEQ", params.get("COMMON_CODE_ID"));
            attachfile.put("ORIGINALFILE_NAME", originalFileName);
            attachfile.put("PHYSICALFILE_NAME", physicalFileName);
            attachfile.put("REGISTER_SEQ", params.get("REGISTER_SEQ"));
            attachfile.put("MODIFIER_SEQ", params.get("MODIFIER_SEQ"));

        attachfiles.add(attachfile);
                }
        }
        params.put("attachfiles", attachfiles); // 리스트를 파라미터에 실어 보내



        Object resultMap = commonCodeOurService.insertWithFilesAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);

        modelAndView.setViewName("commonCode_our/list");  
        return modelAndView; 
    // 탐색기 켜셔 경로 따라가보면 내가 올린 파일이 올라가 있다.
        // 여기까지 업로드 완료..
        // 이제 사용자가 다운로드 받아야할텐데 이대로라면 다운로드에서 문제가 생김.
    }
    @RequestMapping(value="/formMulti", method = RequestMethod.GET)  // edit는 update를 위한 화면
    public ModelAndView formMulti(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
       
        modelAndView.setViewName("commonCode_our/editMulti");
        return modelAndView; 
    }  
}

