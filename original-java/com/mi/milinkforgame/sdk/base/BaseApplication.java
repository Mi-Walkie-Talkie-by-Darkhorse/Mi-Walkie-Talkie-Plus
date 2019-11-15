package com.mi.milinkforgame.sdk.base;

import android.app.Application;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;

public abstract class BaseApplication extends Application {
    public abstract ClientAppInfo getClientAppInfo();

    public void onCreate() {
        super.onCreate();
        Global.init(this, getClientAppInfo());
    }
}
