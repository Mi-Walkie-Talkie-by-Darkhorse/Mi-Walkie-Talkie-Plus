package com.mi.mimsgsdk.upload;

import android.content.Context;
import com.ksyun.ks3.a.b;
import com.ksyun.ks3.a.c;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.proto.BCKS3.AuthResponse;
import com.mi.mimsgsdk.proto.BCKS3.FileInfo;
import com.mi.mimsgsdk.utils.Network;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.apache.http.client.methods.HttpPut;

public class UploadFileLoader {
    private static final String TAG = UploadFileLoader.class.getName();
    private static final UploadFileLoader instance = new UploadFileLoader();

    public static UploadFileLoader getInstance() {
        return instance;
    }

    public boolean startUploadFile(Context context, Attachment attachment, UploadCallBack uploadCallBack, int i) {
        ClientLog.d(TAG, "startUploadFile()");
        if (attachment == null || attachment.isLocalPathEmpty()) {
            return false;
        }
        if (!Network.hasNetwork(context)) {
            ClientLog.v(TAG, "network_offline_warning");
            ClientLog.v(TAG, "no available network, upload type = " + i);
            return false;
        } else if (!attachment.needUpload() || attachment.isLocalPathEmpty()) {
            ClientLog.v(TAG, "upload failed, the attachment has been uploaded to the ks3 cloud, upload type=" + i);
            return false;
        } else {
            try {
                File file = new File(attachment.getLocalPath());
                if (!file.exists() || !file.isFile() || file.length() == 0) {
                    ClientLog.d(TAG, "file has been deleted or not exist");
                    return false;
                }
                attachment.setFileSize((long) ((int) file.length()));
                String b = c.b(file);
                ClientLog.d(TAG, "start upload file, file Md5 = " + b);
                ClientLog.d(TAG, "date: " + b.a() + " suffix: " + attachment.getSuffixFromLocalPath() + " type: " + i);
                AuthResponse ks3AuthToken = FileUploadSenderWorker.getKs3AuthToken(attachment.getAttId(), HttpPut.METHOD_NAME, b, attachment.getMimeType(), b.a(), "", attachment.getSuffixFromLocalPath(), i);
                if (ks3AuthToken != null) {
                    String authorization = ks3AuthToken.getAuthorization();
                    FileInfo fileInfo = ks3AuthToken.getFileInfo();
                    if (fileInfo != null) {
                        ClientLog.d(TAG, "start to upload file, file info = " + fileInfo.toString());
                        try {
                            String encode = URLEncoder.encode(fileInfo.getObjectKey(), "utf-8");
                            StringBuilder sb = new StringBuilder();
                            sb.append(Ks3FileUploader.Ks3FileHost).append("/").append(encode);
                            attachment.setUrl(sb.toString());
                            attachment.setObjectKey(fileInfo.getObjectKey());
                            ClientLog.d(TAG, "before upload after get token url is " + sb.toString());
                            return new Ks3FileUploader(attachment, fileInfo.getBucket(), fileInfo.getObjectKey(), fileInfo.getAcl(), attachment.getAttId(), authorization, uploadCallBack, ks3AuthToken.getDate(), i).startUpload(context);
                        } catch (UnsupportedEncodingException e) {
                            ClientLog.e(TAG, "e", e);
                            return false;
                        }
                    } else {
                        ClientLog.e(TAG, "failed to upload the att because file info is null!");
                        return false;
                    }
                } else {
                    ClientLog.d(TAG, "upload file but got no response");
                    return false;
                }
            } catch (FileNotFoundException e2) {
                ClientLog.v(TAG, e2.toString());
                return false;
            } catch (IOException e3) {
                ClientLog.v(TAG, e3.toString());
                return false;
            }
        }
    }
}
