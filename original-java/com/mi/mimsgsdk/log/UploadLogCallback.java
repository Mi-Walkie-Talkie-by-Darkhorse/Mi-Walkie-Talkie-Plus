package com.mi.mimsgsdk.log;

import com.ksyun.ks3.exception.a;
import org.apache.http.Header;

public interface UploadLogCallback {
    void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    void onTaskSuccess(int i, Header[] headerArr);
}
