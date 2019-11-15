package org.osmdroid.tileprovider.modules;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.util.Log;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.IRegisterReceiver;

public abstract class MapTileFileStorageProviderBase extends MapTileModuleProviderBase {
    private static boolean mSdCardAvailable = true;
    private MyBroadcastReceiver mBroadcastReceiver = new MyBroadcastReceiver();
    private final IRegisterReceiver mRegisterReceiver;

    private class MyBroadcastReceiver extends BroadcastReceiver {
        private MyBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            MapTileFileStorageProviderBase.this.checkSdCard();
            if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                MapTileFileStorageProviderBase.this.onMediaMounted();
            } else if ("android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
                MapTileFileStorageProviderBase.this.onMediaUnmounted();
            }
        }
    }

    public MapTileFileStorageProviderBase(IRegisterReceiver iRegisterReceiver, int i, int i2) {
        super(i, i2);
        checkSdCard();
        this.mRegisterReceiver = iRegisterReceiver;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme(HttpPostBodyUtil.FILE);
        iRegisterReceiver.registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    /* access modifiers changed from: private */
    public void checkSdCard() {
        String externalStorageState = Environment.getExternalStorageState();
        Log.i(IMapView.LOGTAG, "sdcard state: " + externalStorageState);
        mSdCardAvailable = "mounted".equals(externalStorageState);
    }

    public static boolean isSdCardAvailable() {
        return mSdCardAvailable;
    }

    public void detach() {
        if (this.mBroadcastReceiver != null) {
            this.mRegisterReceiver.unregisterReceiver(this.mBroadcastReceiver);
            this.mBroadcastReceiver = null;
        }
        super.detach();
    }

    /* access modifiers changed from: protected */
    public void onMediaMounted() {
    }

    /* access modifiers changed from: protected */
    public void onMediaUnmounted() {
    }
}
