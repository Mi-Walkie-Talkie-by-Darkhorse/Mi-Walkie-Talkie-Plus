package com.mi.mimsgsdk.utils;

import com.mi.mimsgsdk.upload.AttachmentUtils;

public class NetworkUtilsCallback {
    public boolean continueDownloading(String str) {
        return AttachmentUtils.isResourceDownloading(str);
    }
}
