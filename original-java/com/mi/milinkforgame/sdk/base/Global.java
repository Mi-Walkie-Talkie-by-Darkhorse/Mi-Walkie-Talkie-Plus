package com.mi.milinkforgame.sdk.base;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;
import com.mi.milinkforgame.sdk.data.Const.Protection;
import com.mi.milinkforgame.sdk.data.Option;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class Global {
    private static final byte PROTOCOL_VERSION = 3;
    public static long STARTUP_TIME = SystemClock.elapsedRealtime();
    private static final int SUB_VERSION = 1;
    private static final String TAG = "MiLinkServiceBinder";
    private static final int VERSION = 1;
    private static ClientAppInfo clientAppInfo = null;
    private static String clientIp;
    private static String clientIsp;
    private static Context context;
    private static boolean isDebug = false;
    private static boolean isInit = false;
    private static int pid;
    private static AtomicInteger uniqueSeqNO = new AtomicInteger(1);

    public static final long startupTimespan() {
        return SystemClock.elapsedRealtime() - STARTUP_TIME;
    }

    public static final void init(Context context2, ClientAppInfo clientAppInfo2) {
        isInit = true;
        pid = Process.myPid();
        setContext(context2);
        setClientAppInfo(clientAppInfo2);
    }

    public static int getPid() {
        return pid;
    }

    public static void setClientIp(String str) {
        clientIp = str;
    }

    public static String getClientIp() {
        return clientIp;
    }

    public static void setClientIsp(String str) {
        clientIsp = str;
    }

    public static String getClientIsp() {
        return clientIsp != null ? clientIsp : "";
    }

    public static boolean isInit() {
        return isInit;
    }

    public static final Context getContext() {
        if (context != null) {
            return context;
        }
        throw new BaseLibException("Global's Context is NULL, have your Application in manifest subclasses BaseApplication or Call 'Global.init(this)' in your own Application ? ");
    }

    public static final void setContext(Context context2) {
        context = context2;
        try {
            isDebug = (context2.getApplicationInfo().flags & 2) != 0;
            if (isDebug) {
                Log.w("Mns.Global.Runtime", "DEBUG is ON");
            }
        } catch (Exception e) {
            isDebug = false;
        }
    }

    public static final ClientAppInfo getClientAppInfo() {
        if (clientAppInfo == null) {
            recoveryClient();
            if (clientAppInfo == null) {
                throw new BaseLibException("Global's clientAppInfo is NULL, have your Application in manifest subclasses BaseApplication or Call 'Global.init(this)' in your own Application ? ");
            }
        }
        return clientAppInfo;
    }

    public static final void setClientAppInfo(ClientAppInfo clientAppInfo2) {
        clientAppInfo = clientAppInfo2;
        protectClient();
    }

    private static final void protectClient() {
        Option.putString(Protection.Client, getClientAppInfo().toString()).commit();
        MiLinkLog.e("MiLinkServiceBinder", "Client Protection Saved : " + getClientAppInfo().toString());
    }

    private static final void recoveryClient() {
        String string = Option.getString(Protection.Client, null);
        if (string != null && string.length() >= 1) {
            MiLinkLog.e("MiLinkServiceBinder", "Client Protection Loaded : " + string);
            try {
                setClientAppInfo(new ClientAppInfo(string));
            } catch (Exception e) {
                MiLinkLog.e("MiLinkServiceBinder", "Client Protection Failed", e);
            }
        }
    }

    public static final void cancelProtection() {
        Option.remove(Protection.Client);
        MiLinkLog.e("MiLinkServiceBinder", "Client Protection Cleared : " + getClientAppInfo());
    }

    public static final boolean isMainProcess() {
        String currentProcessName = currentProcessName();
        if (currentProcessName != null && currentProcessName.indexOf(58) < 1) {
            return true;
        }
        return false;
    }

    public static final boolean isDebug() {
        return isDebug;
    }

    public static final String currentProcessName() {
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        int myPid = Process.myPid();
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (myPid == runningAppProcessInfo.pid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static final AssetManager getAssets() {
        return getContext().getAssets();
    }

    public static final Resources getResources() {
        return getContext().getResources();
    }

    public static final PackageManager getPackageManager() {
        return getContext().getPackageManager();
    }

    public static final ContentResolver getContentResolver() {
        return getContext().getContentResolver();
    }

    public static final Looper getMainLooper() {
        return getContext().getMainLooper();
    }

    public static final Context getApplicationContext() {
        return getContext().getApplicationContext();
    }

    public static final void setTheme(int i) {
        getContext().setTheme(i);
    }

    public static final Theme getTheme() {
        return getContext().getTheme();
    }

    public static final ClassLoader getClassLoader() {
        return getContext().getClassLoader();
    }

    public static final String getPackageName() {
        return getContext().getPackageName();
    }

    public static final ApplicationInfo getApplicationInfo() {
        return getContext().getApplicationInfo();
    }

    public static final String getPackageResourcePath() {
        return getContext().getPackageResourcePath();
    }

    public static final String getPackageCodePath() {
        return getContext().getPackageCodePath();
    }

    public static final SharedPreferences getSharedPreferences(String str, int i) {
        return getContext().getSharedPreferences(str, i);
    }

    public static final FileInputStream openFileInput(String str) throws FileNotFoundException {
        return getContext().openFileInput(str);
    }

    public static final FileOutputStream openFileOutput(String str, int i) throws FileNotFoundException {
        return getContext().openFileOutput(str, i);
    }

    public static final boolean deleteFile(String str) {
        return getContext().deleteFile(str);
    }

    public static final File getFileStreamPath(String str) {
        return getContext().getFileStreamPath(str);
    }

    public static final String[] fileList() {
        return getContext().fileList();
    }

    public static final File getFilesDir() {
        return getContext().getFilesDir();
    }

    public static final File getExternalFilesDir(String str) {
        return getContext().getExternalFilesDir(str);
    }

    public static final File getObbDir() {
        return getContext().getObbDir();
    }

    public static final File getCacheDir() {
        return getContext().getCacheDir();
    }

    public static final File getExternalCacheDir() {
        return getContext().getExternalCacheDir();
    }

    public static final File getDir(String str, int i) {
        return getContext().getDir(str, i);
    }

    public static final SQLiteDatabase openOrCreateDatabase(String str, int i, CursorFactory cursorFactory) {
        return getContext().openOrCreateDatabase(str, i, cursorFactory);
    }

    public static final SQLiteDatabase openOrCreateDatabase(String str, int i, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return getContext().openOrCreateDatabase(str, i, cursorFactory, databaseErrorHandler);
    }

    public static final boolean deleteDatabase(String str) {
        return getContext().deleteDatabase(str);
    }

    public static final File getDatabasePath(String str) {
        return getContext().getDatabasePath(str);
    }

    public static final String[] databaseList() {
        return getContext().databaseList();
    }

    @Deprecated
    public static final Drawable getWallpaper() {
        return getContext().getWallpaper();
    }

    @Deprecated
    public static final Drawable peekWallpaper() {
        return getContext().peekWallpaper();
    }

    @Deprecated
    public static final int getWallpaperDesiredMinimumWidth() {
        return getContext().getWallpaperDesiredMinimumWidth();
    }

    @Deprecated
    public static final int getWallpaperDesiredMinimumHeight() {
        return getContext().getWallpaperDesiredMinimumHeight();
    }

    @Deprecated
    public static final void setWallpaper(Bitmap bitmap) throws IOException {
        getContext().setWallpaper(bitmap);
    }

    @Deprecated
    public static final void setWallpaper(InputStream inputStream) throws IOException {
        getContext().setWallpaper(inputStream);
    }

    @Deprecated
    public static final void clearWallpaper() throws IOException {
        getContext().clearWallpaper();
    }

    public static final void startActivity(Intent intent) {
        getContext().startActivity(intent);
    }

    public static final void startActivities(Intent[] intentArr) {
        getContext().startActivities(intentArr);
    }

    public static final void startIntentSender(IntentSender intentSender, Intent intent, int i, int i2, int i3) throws SendIntentException {
        getContext().startIntentSender(intentSender, intent, i, i2, i3);
    }

    public static final void sendBroadcast(Intent intent) {
        getContext().sendBroadcast(intent);
    }

    public static final void sendBroadcast(Intent intent, String str) {
        getContext().sendBroadcast(intent, str);
    }

    public static final void sendOrderedBroadcast(Intent intent, String str) {
        getContext().sendOrderedBroadcast(intent, str);
    }

    public static final void sendOrderedBroadcast(Intent intent, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str2, Bundle bundle) {
        getContext().sendOrderedBroadcast(intent, str, broadcastReceiver, handler, i, str2, bundle);
    }

    public static final void sendStickyBroadcast(Intent intent) {
        getContext().sendStickyBroadcast(intent);
    }

    public static final void sendStickyOrderedBroadcast(Intent intent, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str, Bundle bundle) {
        getContext().sendStickyOrderedBroadcast(intent, broadcastReceiver, handler, i, str, bundle);
    }

    public static final void removeStickyBroadcast(Intent intent) {
        getContext().removeStickyBroadcast(intent);
    }

    public static final Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return getContext().registerReceiver(broadcastReceiver, intentFilter);
    }

    public static final Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return getContext().registerReceiver(broadcastReceiver, intentFilter, str, handler);
    }

    public static final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        getContext().unregisterReceiver(broadcastReceiver);
    }

    public static final ComponentName startService(Intent intent) {
        return getContext().startService(intent);
    }

    public static final boolean stopService(Intent intent) {
        return getContext().stopService(intent);
    }

    public static final boolean bindService(Intent intent, ServiceConnection serviceConnection, int i) {
        return getContext().bindService(intent, serviceConnection, i);
    }

    public static final void unbindService(ServiceConnection serviceConnection) {
        getContext().unbindService(serviceConnection);
    }

    public static final boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        return getContext().startInstrumentation(componentName, str, bundle);
    }

    public static final Object getSystemService(String str) {
        return getContext().getSystemService(str);
    }

    public static final int checkPermission(String str, int i, int i2) {
        return getContext().checkPermission(str, i, i2);
    }

    public static final int checkCallingPermission(String str) {
        return getContext().checkCallingPermission(str);
    }

    public static final int checkCallingOrSelfPermission(String str) {
        return getContext().checkCallingOrSelfPermission(str);
    }

    public static final void enforcePermission(String str, int i, int i2, String str2) {
        getContext().enforcePermission(str, i, i2, str2);
    }

    public static final void enforceCallingPermission(String str, String str2) {
        getContext().enforceCallingPermission(str, str2);
    }

    public static final void enforceCallingOrSelfPermission(String str, String str2) {
        getContext().enforceCallingOrSelfPermission(str, str2);
    }

    public static final void grantUriPermission(String str, Uri uri, int i) {
        getContext().grantUriPermission(str, uri, i);
    }

    public static final void revokeUriPermission(Uri uri, int i) {
        getContext().revokeUriPermission(uri, i);
    }

    public static final int checkUriPermission(Uri uri, int i, int i2, int i3) {
        return getContext().checkUriPermission(uri, i, i2, i3);
    }

    public static final int checkCallingUriPermission(Uri uri, int i) {
        return getContext().checkCallingUriPermission(uri, i);
    }

    public static final int checkCallingOrSelfUriPermission(Uri uri, int i) {
        return getContext().checkCallingOrSelfUriPermission(uri, i);
    }

    public static final int checkUriPermission(Uri uri, String str, String str2, int i, int i2, int i3) {
        return getContext().checkUriPermission(uri, str, str2, i, i2, i3);
    }

    public static final void enforceUriPermission(Uri uri, int i, int i2, int i3, String str) {
        getContext().enforceUriPermission(uri, i, i2, i3, str);
    }

    public static final void enforceCallingUriPermission(Uri uri, int i, String str) {
        getContext().enforceCallingUriPermission(uri, i, str);
    }

    public static final void enforceCallingOrSelfUriPermission(Uri uri, int i, String str) {
        getContext().enforceCallingOrSelfUriPermission(uri, i, str);
    }

    public static final void enforceUriPermission(Uri uri, String str, String str2, int i, int i2, int i3, String str3) {
        getContext().enforceUriPermission(uri, str, str2, i, i2, i3, str3);
    }

    public static final Context createPackageContext(String str, int i) throws NameNotFoundException {
        return getContext().createPackageContext(str, i);
    }

    public static final boolean isRestricted() {
        return getContext().isRestricted();
    }

    public static int getSequence() {
        return uniqueSeqNO.getAndIncrement();
    }

    public static int getMiLinkVersion() {
        return 1;
    }

    public static int getMiLinkSubVersion() {
        return 1;
    }

    public static byte getMiLinkProtocolVersion() {
        return 3;
    }
}
