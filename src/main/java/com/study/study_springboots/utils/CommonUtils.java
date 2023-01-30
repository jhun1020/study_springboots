package com.study.study_springboots.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component // 컴포넌트로 올리면 bean에 올라가고 나중에편하게 불러서 사용할 예정
public class CommonUtils {
    public String getUniqueSequence(){
        UUID uuid = UUID.randomUUID();
        
        // toString 사용해 string형으로 바꿔줘야 사용 가능
        return uuid.toString();
    }
    // src/main/resources/static/files   -.> root directory + 상대경로 
public String getRelativeToAbsolutePath(String relativePath){
    String relativePathWithSeperator = relativePath.replace("/", File.separator);
    //   /를 알맞게 바꿔줌
    String absolutePath = new File(relativePathWithSeperator).getAbsolutePath();
    // String absolutePath = new File(relativePathWithSeperator).getAbsolutePath() + File.separator;  
    // 경로가 밖으로 된다면 밑의 코드 사용하면 됨.,
    return absolutePath;
    }
}
