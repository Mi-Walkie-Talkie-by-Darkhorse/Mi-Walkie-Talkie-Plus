package com.ksyun.ks3.auth;

import android.util.Log;
import com.ksyun.ks3.model.acl.b;
import com.ksyun.ks3.services.request.Ks3HttpRequest;

/* compiled from: DefaultSigner */
public class c {
    public String a(b bVar, Ks3HttpRequest ks3HttpRequest) {
        try {
            return b.a(bVar, ks3HttpRequest);
        } catch (Exception e) {
            Log.d("ks3_android_sdk", "calculate user authorization has occured an exception ");
            return null;
        }
    }
}
