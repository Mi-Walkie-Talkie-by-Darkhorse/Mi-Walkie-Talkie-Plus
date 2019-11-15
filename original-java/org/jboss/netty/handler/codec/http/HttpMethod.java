package org.jboss.netty.handler.codec.http;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;

public class HttpMethod implements Comparable<HttpMethod> {
    public static final HttpMethod CONNECT = new HttpMethod("CONNECT");
    public static final HttpMethod DELETE = new HttpMethod(HttpDelete.METHOD_NAME);
    public static final HttpMethod GET = new HttpMethod("GET");
    public static final HttpMethod HEAD = new HttpMethod(HttpHead.METHOD_NAME);
    public static final HttpMethod OPTIONS = new HttpMethod(HttpOptions.METHOD_NAME);
    public static final HttpMethod PATCH = new HttpMethod("PATCH");
    public static final HttpMethod POST = new HttpMethod("POST");
    public static final HttpMethod PUT = new HttpMethod(HttpPut.METHOD_NAME);
    public static final HttpMethod TRACE = new HttpMethod(HttpTrace.METHOD_NAME);
    private static final Map<String, HttpMethod> methodMap = new HashMap();
    private final String name;

    static {
        methodMap.put(OPTIONS.toString(), OPTIONS);
        methodMap.put(GET.toString(), GET);
        methodMap.put(HEAD.toString(), HEAD);
        methodMap.put(POST.toString(), POST);
        methodMap.put(PUT.toString(), PUT);
        methodMap.put(PATCH.toString(), PATCH);
        methodMap.put(DELETE.toString(), DELETE);
        methodMap.put(TRACE.toString(), TRACE);
        methodMap.put(CONNECT.toString(), CONNECT);
    }

    public static HttpMethod valueOf(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            throw new IllegalArgumentException("empty name");
        }
        HttpMethod httpMethod = (HttpMethod) methodMap.get(trim);
        return httpMethod != null ? httpMethod : new HttpMethod(trim);
    }

    public HttpMethod(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            throw new IllegalArgumentException("empty name");
        }
        for (int i = 0; i < trim.length(); i++) {
            if (Character.isISOControl(trim.charAt(i)) || Character.isWhitespace(trim.charAt(i))) {
                throw new IllegalArgumentException("invalid character in name");
            }
        }
        this.name = trim;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HttpMethod)) {
            return false;
        }
        return getName().equals(((HttpMethod) obj).getName());
    }

    public String toString() {
        return getName();
    }

    public int compareTo(HttpMethod httpMethod) {
        return getName().compareTo(httpMethod.getName());
    }
}
