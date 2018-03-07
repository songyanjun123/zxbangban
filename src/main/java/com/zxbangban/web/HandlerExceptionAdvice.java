package com.zxbangban.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class HandlerExceptionAdvice {

    @ExceptionHandler({ArithmeticException.class})
    public String handlerArithmeticException(Exception ex) {
        ex.printStackTrace();
        return "common/errorpage";
    }

}