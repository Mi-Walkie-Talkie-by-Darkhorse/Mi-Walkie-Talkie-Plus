package com.xiaomi.xmsf.push.service;


interface IHttpService {
    String doHttpPost(in String url, in Map logs);
}
