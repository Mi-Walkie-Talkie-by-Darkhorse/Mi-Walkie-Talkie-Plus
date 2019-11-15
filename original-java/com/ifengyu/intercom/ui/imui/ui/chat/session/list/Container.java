package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import android.app.Activity;

public class Container {
    public final Activity activity;
    public final ModuleProxy proxy;
    public final String sessionId;
    public final int sessionType;

    public Container(Activity activity2, String str, int i, ModuleProxy moduleProxy) {
        this.activity = activity2;
        this.sessionId = str;
        this.sessionType = i;
        this.proxy = moduleProxy;
    }
}
