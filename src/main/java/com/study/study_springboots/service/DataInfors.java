package com.study.study_springboots.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.study.study_springboots.bean.BoardBean;

public class DataInfors {
    public HashMap<String, String> getSearchFormData() {
        // 리턴을 키와 value로 리턴한다 ==>  hashmap사용
        HashMap<String, String> searchForm = new HashMap<String, String>();

        searchForm.put("search_key", "Search Title");
        searchForm.put("name", "이정훈!");
        searchForm.put("id", "ID0001!");
        return searchForm;
    }

    public ArrayList<String> getTablesListWithString() {
        ArrayList<String> tablesListWithString = new ArrayList<String>();    
        tablesListWithString.add("@mdo");
        tablesListWithString.add("@fat");
        tablesListWithString.add("@twitter");

        return tablesListWithString;
    }

    public HashMap<String, Object> getBundleData() {
      DataInfors DataInfors = new DataInfors();
      HashMap<String, String> searchForm = DataInfors.getSearchFormData();
      ArrayList<String> tablesListWithString = DataInfors.getTablesListWithString();
      
      HashMap<String, Object> bundlesData = new HashMap<>();
      
      bundlesData.put("searchForm", searchForm);
      bundlesData.put("tablesListWithString", tablesListWithString);
      
    //    public BoardBean getDataWithBoardBean(){ 여기의 부분 번들로 추가
      bundlesData.put("dataWithBoardBean", DataInfors.getDataListWithBoardBean());
//  밑의 리스트도 번들로 추가
bundlesData.put("dataListWithBoardBean", DataInfors.getDataListWithBoardBean());



        return bundlesData;

    }
    public BoardBean getDataWithBoardBean(){
        BoardBean boardBean = new BoardBean();
        boardBean.setTitle("Mark");
        boardBean.setContent("Otto");
        boardBean.setUserName("@mdo");

        return boardBean;
    }

    public ArrayList<BoardBean> getDataListWithBoardBean() {
        ArrayList<BoardBean> membersList = new ArrayList<>();
        //그동안 스트링만 넣었었는데 조상을 오브젝트로 갖고 있는 클래스는 제너릭에 다 들어감

        BoardBean boardBean = new BoardBean();
        boardBean.setTitle("Mark");
        boardBean.setContent("Otto");
        boardBean.setUserName("@mdo");
        membersList.add(boardBean);

        boardBean = new BoardBean();
        boardBean.setTitle("jacob");
        boardBean.setContent("Thorton");
        boardBean.setUserName("@fat");
        membersList.add(boardBean);

        boardBean = new BoardBean();
        boardBean.setTitle("Larry");
        boardBean.setContent("Bird");
        boardBean.setUserName("@twitter");
        membersList.add(boardBean);

        return membersList;
    }

    public ArrayList<BoardBean> getDataListWithBoardBeadMyself() {
        ArrayList<BoardBean> membersList = new ArrayList<>();

        BoardBean boardBean = new BoardBean();
        boardBean.setTitle("이정훈");
        boardBean.setContent("이정훈content");
        boardBean.setUserName("이정훈username");
        membersList.add(boardBean);

        boardBean = new BoardBean();
        boardBean.setTitle("정훈이");
        boardBean.setContent("정훈이content2");
        boardBean.setUserName("정훈이username2");
        membersList.add(boardBean);

        boardBean = new BoardBean();
        boardBean.setTitle("jhun");
        boardBean.setContent("jhun_content3");
        boardBean.setUserName("jhun_username3");
        membersList.add(boardBean);

        return membersList;
    }


}
