package com.mi.mimsgsdk.upload;

import com.ksyun.ks3.exception.a;
import com.ksyun.ks3.services.a.e;
import com.mi.milinkforgame.sdk.client.ClientLog;
import org.apache.http.Header;

public abstract class UploadCallBack extends e {
    private static final String TAG = UploadCallBack.class.getSimpleName();
    private Attachment mAtt;

    public abstract void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onTaskSuccess(int i, Header[] headerArr);

    public UploadCallBack(Attachment attachment) {
        this.mAtt = attachment;
    }

    public String onPostExecute(boolean z, String str, String str2) {
        if (z) {
            this.mAtt.setResourceId(str2);
        } else {
            ClientLog.w(TAG, "upload file failed, local path = " + this.mAtt.getLocalPath());
        }
        return str;
    }

    public void onTaskSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.a.a aVar) {
        onTaskSuccess(i, headerArr);
    }

    public void onTaskStart() {
    }

    public void onTaskFinish() {
    }

    public void onTaskCancel() {
    }

    public void onTaskProgress(double d) {
    }
}
