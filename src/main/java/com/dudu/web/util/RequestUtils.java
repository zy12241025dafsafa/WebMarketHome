package com.dudu.web.util;

import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/5/1.
 */
public class RequestUtils {
    public static String getString(HttpServletRequest request, String key) {
        String value = request.getParameter(key);
        if (StringUtils.isEmpty(value)) {
            return StringUtils.trimWhitespace(value);
        }
        return value;
    }
}
