package com.ifengyu.im.imservice.service;

import android.app.IntentService;
import android.content.Intent;
import com.ifengyu.im.utils.Logger;

public class LoadImageService extends IntentService {
    private static Logger logger = Logger.getLogger(LoadImageService.class);

    public LoadImageService() {
        super("LoadImageService");
    }

    public LoadImageService(String str) {
        super(str);
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
    }
}
