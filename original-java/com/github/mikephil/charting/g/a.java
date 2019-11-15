package com.github.mikephil.charting.g;

import android.graphics.Color;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: ColorTemplate */
public class a {
    public static final int[] a = {Color.rgb(HttpStatus.SC_MULTI_STATUS, 248, 246), Color.rgb(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 212, 212), Color.rgb(136, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256), Color.rgb(118, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384), Color.rgb(42, 109, 130)};
    public static final int[] b = {Color.rgb(217, 80, 138), Color.rgb(254, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 7), Color.rgb(254, 247, 120), Color.rgb(106, CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384, 134), Color.rgb(53, CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256, 209)};
    public static final int[] c = {Color.rgb(64, 89, 128), Color.rgb(CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384, 124), Color.rgb(217, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256, 162), Color.rgb(CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256, 134, 134), Color.rgb(CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, 48, 80)};
    public static final int[] d = {Color.rgb(CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 37, 82), Color.rgb(255, 102, 0), Color.rgb(245, 199, 0), Color.rgb(106, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 31), Color.rgb(CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, 100, 53)};
    public static final int[] e = {Color.rgb(192, 255, 140), Color.rgb(255, 247, 140), Color.rgb(255, 208, 140), Color.rgb(140, 234, 255), Color.rgb(255, 140, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384)};
    public static final int[] f = {a("#2ecc71"), a("#f1c40f"), a("#e74c3c"), a("#3498db")};

    public static int a(String str) {
        int parseLong = (int) Long.parseLong(str.replace("#", ""), 16);
        return Color.rgb((parseLong >> 16) & 255, (parseLong >> 8) & 255, (parseLong >> 0) & 255);
    }

    public static int a(int i, int i2) {
        return (16777215 & i) | ((i2 & 255) << 24);
    }
}
