package com.study.toy_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.toy_springboot.dao.SurveyDao;

@Service
public class SurveyService {
    @Autowired
    SurveyDao surveyDao;

    public Object getQuestion(Object dataMap) {
        String sqlMapId = "Survey.selectQuestion";
        Object userData = surveyDao.getList(sqlMapId, dataMap);
        return userData;
    }

    public Object getAnswer(Object dataMap) {
        String sqlMapId = "Survey.selectAnswer";
        Object userData = surveyDao.getList(sqlMapId, dataMap);
        return userData;
    }

    public Object getUser(Object dataMap) {
        String sqlMapId = "Survey.selectUSERS";
        Object userData = surveyDao.getList(sqlMapId, dataMap);
        return userData;
    }
}
