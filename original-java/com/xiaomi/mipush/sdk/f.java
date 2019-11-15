package com.xiaomi.mipush.sdk;

import android.net.wifi.ScanResult;
import java.util.Comparator;

final class f implements Comparator<ScanResult> {
    f() {
    }

    /* renamed from: a */
    public int compare(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult2.level - scanResult.level;
    }
}
