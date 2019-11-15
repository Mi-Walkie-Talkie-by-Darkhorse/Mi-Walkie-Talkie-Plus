package org.osmdroid.tileprovider.modules;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;

public class NetworkAvailabliltyCheck implements INetworkAvailablityCheck {
    private final ConnectivityManager mConnectionManager;
    private final boolean mHasNetworkStatePermission;
    private final boolean mIsX86 = "Android-x86".equalsIgnoreCase(Build.BRAND);

    public NetworkAvailabliltyCheck(Context context) {
        this.mConnectionManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.mHasNetworkStatePermission = context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0;
    }

    public boolean getNetworkAvailable() {
        if (!this.mHasNetworkStatePermission) {
            return true;
        }
        NetworkInfo activeNetworkInfo = this.mConnectionManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        if (activeNetworkInfo.isAvailable()) {
            return true;
        }
        if (!this.mIsX86 || activeNetworkInfo.getType() != 9) {
            return false;
        }
        return true;
    }

    public boolean getWiFiNetworkAvailable() {
        if (!this.mHasNetworkStatePermission) {
            return true;
        }
        NetworkInfo networkInfo = this.mConnectionManager.getNetworkInfo(1);
        if (networkInfo == null || !networkInfo.isAvailable()) {
            return false;
        }
        return true;
    }

    public boolean getCellularDataNetworkAvailable() {
        if (!this.mHasNetworkStatePermission) {
            return true;
        }
        NetworkInfo networkInfo = this.mConnectionManager.getNetworkInfo(0);
        if (networkInfo == null || !networkInfo.isAvailable()) {
            return false;
        }
        return true;
    }

    public boolean getRouteToPathExists(int i) {
        if (this.mConnectionManager.requestRouteToHost(1, i) || this.mConnectionManager.requestRouteToHost(0, i)) {
            return true;
        }
        return false;
    }
}
