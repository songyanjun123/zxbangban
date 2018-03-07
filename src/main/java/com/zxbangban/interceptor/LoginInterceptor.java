package com.zxbangban.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by pingyr on 2017/7/15.
 */
public class LoginInterceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        Cookie[] cookies = httpServletRequest.getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("uid")){
                    String valueCookie = cookie.getValue();
                    if(valueCookie == null){
                        httpServletRequest.getRequestDispatcher("/account/signin").forward(httpServletRequest,httpServletResponse);
                        return false;
                    }else {

                        HttpSession httpSession = httpServletRequest.getSession();
                        httpSession.setAttribute("uid",valueCookie);
                        return true;
                    }
                }
            }
        }
        httpServletRequest.getRequestDispatcher("/account/signin").forward(httpServletRequest,httpServletResponse);
        return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
