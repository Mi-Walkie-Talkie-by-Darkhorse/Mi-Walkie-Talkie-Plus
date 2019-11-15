package com.mi.mimsgsdk.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.mi.mimsgsdk.service.aidl.IMiMsgService;

public class MiMsgService extends Service {
    IMiMsgService mFacade;

    public void onCreate() {
        super.onCreate();
    }

    public IBinder onBind(Intent intent) {
        this.mFacade = new MiMsgServiceFacade(this, intent.getIntExtra("appId", 100000000));
        return this.mFacade.asBinder();
    }
}
