package com.dudu.web.util;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2017/5/1.
 */
public class ResponseUtils {

    public static void send(HttpServletResponse response, String content) {
        Logger log = Logger.getLogger(ResponseUtils.class);
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            if (content == null) {
                content = "";
            }
            out.write(content);
        } catch (IOException e) {
            log.error(e.getLocalizedMessage(), e);
        }
    }
}
