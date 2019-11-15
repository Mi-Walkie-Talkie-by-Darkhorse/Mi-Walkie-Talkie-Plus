package com.tencent.bugly.mimsg;

import java.util.Map;

/* compiled from: BUGLY */
public class BuglyStrategy {
    private String a;
    private String b;
    private String c;
    private long d;
    private String e;
    private String f;
    private boolean g = true;
    private boolean h = true;
    private boolean i = true;
    private Class<?> j = null;
    private boolean k = true;
    private boolean l = true;
    private boolean m = true;
    private boolean n = false;
    private a o;

    /* compiled from: BUGLY */
    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 30000;

        public synchronized Map<String, String> onCrashHandleStart(int i, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z) {
        this.k = z;
        return this;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z) {
        this.n = z;
        return this;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z) {
        this.m = z;
        return this;
    }

    public synchronized boolean isUploadProcess() {
        return this.m;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.k;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.n;
    }

    public boolean isReplaceOldChannel() {
        return this.l;
    }

    public void setReplaceOldChannel(boolean z) {
        this.l = z;
    }

    public synchronized String getAppVersion() {
        return this.a == null ? com.tencent.bugly.mimsg.crashreport.common.info.a.b().j : this.a;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.a = str;
        return this;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.j = cls;
        return this;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.j;
    }

    public synchronized String getAppChannel() {
        return this.b == null ? com.tencent.bugly.mimsg.crashreport.common.info.a.b().l : this.b;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.b = str;
        return this;
    }

    public synchronized String getAppPackageName() {
        return this.c == null ? com.tencent.bugly.mimsg.crashreport.common.info.a.b().c : this.c;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.c = str;
        return this;
    }

    public synchronized long getAppReportDelay() {
        return this.d;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j2) {
        this.d = j2;
        return this;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.e;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.e = str;
        return this;
    }

    public synchronized String getDeviceID() {
        return this.f;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f = str;
        return this;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.g;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z) {
        this.g = z;
        return this;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z) {
        this.i = z;
        return this;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.i;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.h;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z) {
        this.h = z;
        return this;
    }

    public synchronized a getCrashHandleCallback() {
        return this.o;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.o = aVar;
        return this;
    }
}
