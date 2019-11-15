package com.mi.milinkforgame.sdk.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.text.format.Formatter;
import android.text.format.Time;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.mi.milinkforgame.sdk.data.Const.Extra;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread.UncaughtExceptionHandler;

public class MiLinkExceptionHandler implements UncaughtExceptionHandler {
    private static String TAG = MiLinkExceptionHandler.class.getName();
    private static final UncaughtExceptionHandler sDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
    private String mPhoneModel = Build.MODEL;
    private String mPhoneSdk = VERSION.SDK;

    public void uncaughtException(Thread thread, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        ThrowableExtension.printStackTrace(th, new PrintWriter(stringWriter));
        StringBuilder sb = new StringBuilder();
        Time time = new Time();
        time.setToNow();
        String format = time.format(TraceFormat.TRACE_TIME_FORMAT);
        sb.append("\t\n==================LOG=================\t\n");
        sb.append("PHONE_MODEL:" + this.mPhoneModel + "\t\n");
        sb.append("ANDROID_SDK:" + this.mPhoneSdk + "\t\n");
        sb.append(format + "\t\n");
        sb.append(stringWriter.toString());
        sb.append("\t\n==================MemoryInfo=================\t\n");
        sb.append(getMemoryInfo(Global.getContext()));
        sb.append("\t\n--------------------------------------\t\n");
        MiLinkLog.i(TAG, sb.toString());
        MiLinkLog.getInstance().flush();
        try {
            Thread.sleep(300);
        } catch (InterruptedException e) {
        }
        MiLinkLog.i(TAG, "sDefaultHandler=" + sDefaultHandler);
        arouseMiLink();
        if (sDefaultHandler != null) {
            sDefaultHandler.uncaughtException(thread, th);
        }
        MiLinkLog.getInstance().stop();
    }

    private String getMemoryInfo(Context context) {
        String str = "";
        try {
            String str2 = ((str + "\ntotalMemory()=" + toMib(context, Runtime.getRuntime().totalMemory())) + "\nmaxMemory()=" + toMib(context, Runtime.getRuntime().maxMemory())) + "\nfreeMemory()=" + toMib(context, Runtime.getRuntime().freeMemory());
            MemoryInfo memoryInfo = new MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            return (((((((((((str2 + "\ndbg.mi.dalvikPrivateDirty=" + toMib(memoryInfo.dalvikPrivateDirty)) + "\ndbg.mi.dalvikPss=" + toMib(memoryInfo.dalvikPss)) + "\ndbg.mi.dalvikSharedDirty=" + toMib(memoryInfo.dalvikSharedDirty)) + "\ndbg.mi.nativePrivateDirty=" + toMib(memoryInfo.nativePrivateDirty)) + "\ndbg.mi.nativePss=" + toMib(memoryInfo.nativePss)) + "\ndbg.mi.nativeSharedDirty=" + toMib(memoryInfo.nativeSharedDirty)) + "\ndbg.mi.otherPrivateDirty=" + toMib(memoryInfo.otherPrivateDirty)) + "\ndbg.mi.otherPss" + toMib(memoryInfo.otherPss)) + "\ndbg.mi.otherSharedDirty=" + toMib(memoryInfo.otherSharedDirty)) + "\nTotalPrivateDirty=" + toMib(memoryInfo.getTotalPrivateDirty())) + "\nTotalPss=" + toMib(memoryInfo.getTotalPss())) + "\nTotalSharedDirty=" + toMib(memoryInfo.getTotalSharedDirty());
        } catch (Exception e) {
            return str;
        }
    }

    private String toMib(Context context, long j) {
        return Formatter.formatFileSize(context, j);
    }

    private String toMib(int i) {
        return String.format("%.2fMB", new Object[]{Double.valueOf(((double) i) / 1024.0d)});
    }

    private void arouseMiLink() {
        Intent intent = new Intent();
        intent.putExtra(Extra.OnStartCommandReturn, 1);
        intent.setComponent(new ComponentName(Global.getContext(), IPC.ServiceName));
        ((AlarmManager) Global.getContext().getSystemService("alarm")).set(1, System.currentTimeMillis() + 500, PendingIntent.getService(Global.getContext(), 0, intent, 134217728));
        MiLinkLog.i(TAG, "arouseMiLink");
    }
}
