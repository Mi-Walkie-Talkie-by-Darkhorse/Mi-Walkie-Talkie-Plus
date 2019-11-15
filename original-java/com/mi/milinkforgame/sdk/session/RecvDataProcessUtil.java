package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;

public class RecvDataProcessUtil {
    public static String TAG = "RecvDataProcessUtil";
    private MnsCodeCopeWaysHasListener mHasListenerUtil;
    private boolean mHasSelected = false;
    private MnsCodeCopeWaysNoListener mNoListenerUtil;
    private MnsCodeCopeWaysWithPush mPushUtil;
    private Session mSession;
    private IMnsCodeCopeWays nowUtil;

    public RecvDataProcessUtil(Session session) {
        this.mSession = session;
    }

    public RecvDataProcessUtil selectHandleUtil(PacketData packetData, Request request) {
        if (request == null) {
            if (this.mPushUtil == null) {
                this.mPushUtil = new MnsCodeCopeWaysWithPush(this.mSession);
            }
            this.nowUtil = this.mPushUtil;
        } else if (request.getListener() != null) {
            if (this.mHasListenerUtil == null) {
                this.mHasListenerUtil = new MnsCodeCopeWaysHasListener(this.mSession);
            }
            this.nowUtil = this.mHasListenerUtil;
        } else {
            if (this.mNoListenerUtil == null) {
                this.mNoListenerUtil = new MnsCodeCopeWaysNoListener(this.mSession);
            }
            this.nowUtil = this.mNoListenerUtil;
        }
        this.nowUtil.setParam(packetData, request);
        this.mHasSelected = true;
        return this;
    }

    public boolean handle() {
        if (!this.mHasSelected) {
            MiLinkLog.e(TAG, "has not select data process util");
            return false;
        }
        this.nowUtil.handleMnsCode();
        this.mHasSelected = false;
        return true;
    }
}
