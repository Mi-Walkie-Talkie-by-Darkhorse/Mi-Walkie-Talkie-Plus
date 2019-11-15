package com.ifengyu.intercom.ui.imui.ui.chat;

import com.mi.mimsgsdk.IMXMsgCallback;

final /* synthetic */ class MsgManager$$Lambda$0 implements Runnable {
    private final String arg$1;
    private final String arg$2;
    private final String arg$3;
    private final String arg$4;
    private final String arg$5;
    private final IMXMsgCallback arg$6;

    MsgManager$$Lambda$0(String str, String str2, String str3, String str4, String str5, IMXMsgCallback iMXMsgCallback) {
        this.arg$1 = str;
        this.arg$2 = str2;
        this.arg$3 = str3;
        this.arg$4 = str4;
        this.arg$5 = str5;
        this.arg$6 = iMXMsgCallback;
    }

    public void run() {
        MsgManager.getManager().init(this.arg$1, this.arg$2, this.arg$3, this.arg$4, this.arg$5, this.arg$6);
    }
}
