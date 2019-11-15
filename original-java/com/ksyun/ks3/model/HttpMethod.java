package com.ksyun.ks3.model;

import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPut;

public enum HttpMethod {
    GET("GET"),
    POST("POST"),
    PUT(HttpPut.METHOD_NAME),
    DELETE(HttpDelete.METHOD_NAME),
    HEAD(HttpHead.METHOD_NAME);
    
    private String f;

    private HttpMethod(String str) {
        this.f = str;
    }

    public String toString() {
        return this.f;
    }
}
