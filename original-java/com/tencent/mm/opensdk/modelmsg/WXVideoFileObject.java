package com.tencent.mm.opensdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage.IMediaObject;
import com.tencent.mm.opensdk.utils.Log;
import java.io.File;

public class WXVideoFileObject implements IMediaObject {
    private static final int FILE_SIZE_LIMIT = 10485760;
    private static final String TAG = "MicroMsg.SDK.WXVideoFileObject";
    public String filePath;

    public WXVideoFileObject() {
        this.filePath = null;
    }

    public WXVideoFileObject(String str) {
        this.filePath = str;
    }

    private int getFileSize(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        File file = new File(str);
        if (file.exists()) {
            return (int) file.length();
        }
        return 0;
    }

    public boolean checkArgs() {
        if (this.filePath == null || this.filePath.length() == 0) {
            Log.e(TAG, "checkArgs fail, filePath is null");
            return false;
        } else if (getFileSize(this.filePath) <= FILE_SIZE_LIMIT) {
            return true;
        } else {
            Log.e(TAG, "checkArgs fail, video file size is too large");
            return false;
        }
    }

    public void serialize(Bundle bundle) {
        bundle.putString("_wxvideofileobject_filePath", this.filePath);
    }

    public int type() {
        return 38;
    }

    public void unserialize(Bundle bundle) {
        this.filePath = bundle.getString("_wxvideofileobject_filePath");
    }
}
