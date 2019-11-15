package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import com.amap.api.services.district.DistrictSearchQuery;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.tencent.open.SocialConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Parser */
public final class fn {
    private StringBuilder a = new StringBuilder();
    private AMapLocationClientOption b = new AMapLocationClientOption();

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        if (aMapLocationClientOption == null) {
            this.b = new AMapLocationClientOption();
        } else {
            this.b = aMapLocationClientOption;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:131:0x02bb, code lost:
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x02c0, code lost:
        r0 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x02c1, code lost:
        r10 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x02c5, code lost:
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x02c6, code lost:
        r9 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x02ca, code lost:
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x02cb, code lost:
        r3 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x02cf, code lost:
        r0 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x02d0, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x02d4, code lost:
        r0 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x02d5, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x02e1, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x02e2, code lost:
        r1 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x0325, code lost:
        r8.clear();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x0329, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x033d, code lost:
        r0 = r7;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x022c A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x023c A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x026d A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x027d A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0290 A[Catch:{ Throwable -> 0x0330, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x02a1  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x02ac  */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0325  */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x0329 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x0028] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x017f A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x018e A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0197 A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01a6 A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01b5 A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01c4 A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01f7 A[Catch:{ Throwable -> 0x02e1, all -> 0x0329 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.amap.api.col.sl.ev a(com.amap.api.col.sl.ev r13, byte[] r14) {
        /*
            r12 = this;
            r1 = 0
            if (r14 != 0) goto L_0x0024
            r0 = 5
            r13.setErrorCode(r0)     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            java.lang.StringBuilder r0 = r12.a     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            java.lang.String r2 = "binaryResult is null#0504"
            r0.append(r2)     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            java.lang.StringBuilder r0 = r12.a     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            r13.setLocationDetail(r0)     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            java.lang.StringBuilder r0 = r12.a     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            r2 = 0
            java.lang.StringBuilder r3 = r12.a     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            int r3 = r3.length()     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            r0.delete(r2, r3)     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
        L_0x0023:
            return r13
        L_0x0024:
            java.nio.ByteBuffer r8 = java.nio.ByteBuffer.wrap(r14)     // Catch:{ Throwable -> 0x032e, all -> 0x0321 }
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r0 != 0) goto L_0x0042
            short r0 = r8.getShort()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.b(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.clear()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r8 == 0) goto L_0x0023
            r8.clear()
            goto L_0x0023
        L_0x0042:
            int r0 = r8.getInt()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            double r0 = (double) r0     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r2 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r0 = r0 / r2
            double r0 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setLongitude(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            int r0 = r8.getInt()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            double r0 = (double) r0     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r2 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r0 = r0 / r2
            double r0 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setLatitude(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            short r0 = r8.getShort()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            float r0 = (float) r0     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setAccuracy(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.c(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.d(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r1 = 1
            if (r0 != r1) goto L_0x021a
            java.lang.String r1 = ""
            java.lang.String r2 = ""
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            java.lang.String r5 = ""
            java.lang.String r6 = ""
            java.lang.String r7 = ""
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r9 = new java.lang.String     // Catch:{ Throwable -> 0x0355, all -> 0x0329 }
            java.lang.String r10 = "UTF-8"
            r9.<init>(r0, r10)     // Catch:{ Throwable -> 0x0355, all -> 0x0329 }
            r13.setCountry(r9)     // Catch:{ Throwable -> 0x0355, all -> 0x0329 }
        L_0x00ae:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r9 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r9)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02ba, all -> 0x0329 }
            java.lang.String r10 = "UTF-8"
            r0.<init>(r9, r10)     // Catch:{ Throwable -> 0x02ba, all -> 0x0329 }
            r13.setProvince(r0)     // Catch:{ Throwable -> 0x0352, all -> 0x0329 }
            r11 = r0
        L_0x00c4:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r1 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02bf, all -> 0x0329 }
            java.lang.String r9 = "UTF-8"
            r0.<init>(r1, r9)     // Catch:{ Throwable -> 0x02bf, all -> 0x0329 }
            r13.setCity(r0)     // Catch:{ Throwable -> 0x034f, all -> 0x0329 }
            r10 = r0
        L_0x00da:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r1 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02c4, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r0.<init>(r1, r2)     // Catch:{ Throwable -> 0x02c4, all -> 0x0329 }
            r13.setDistrict(r0)     // Catch:{ Throwable -> 0x034c, all -> 0x0329 }
            r9 = r0
        L_0x00f0:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r1 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02c9, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r0.<init>(r1, r2)     // Catch:{ Throwable -> 0x02c9, all -> 0x0329 }
            r13.setStreet(r0)     // Catch:{ Throwable -> 0x034a, all -> 0x0329 }
            r13.setRoad(r0)     // Catch:{ Throwable -> 0x034a, all -> 0x0329 }
            r3 = r0
        L_0x0109:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r1 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02ce, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r0.<init>(r1, r2)     // Catch:{ Throwable -> 0x02ce, all -> 0x0329 }
            r13.setNumber(r0)     // Catch:{ Throwable -> 0x0348, all -> 0x0329 }
            r2 = r0
        L_0x011f:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r1 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x02d3, all -> 0x0329 }
            java.lang.String r4 = "UTF-8"
            r0.<init>(r1, r4)     // Catch:{ Throwable -> 0x02d3, all -> 0x0329 }
            r13.setPoiName(r0)     // Catch:{ Throwable -> 0x0346, all -> 0x0329 }
            r1 = r0
        L_0x0135:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x0343, all -> 0x0329 }
            java.lang.String r5 = "UTF-8"
            r4.<init>(r0, r5)     // Catch:{ Throwable -> 0x0343, all -> 0x0329 }
            r13.setAoiName(r4)     // Catch:{ Throwable -> 0x0343, all -> 0x0329 }
        L_0x014a:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r4 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r4)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x033c, all -> 0x0329 }
            java.lang.String r5 = "UTF-8"
            r0.<init>(r4, r5)     // Catch:{ Throwable -> 0x033c, all -> 0x0329 }
            r13.setAdCode(r0)     // Catch:{ Throwable -> 0x0340, all -> 0x0329 }
        L_0x015f:
            byte r4 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r4 = r4 & 255(0xff, float:3.57E-43)
            byte[] r4 = new byte[r4]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r4)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r5 = new java.lang.String     // Catch:{ Throwable -> 0x0339, all -> 0x0329 }
            java.lang.String r6 = "UTF-8"
            r5.<init>(r4, r6)     // Catch:{ Throwable -> 0x0339, all -> 0x0329 }
            r13.setCityCode(r5)     // Catch:{ Throwable -> 0x0339, all -> 0x0329 }
        L_0x0174:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r4.<init>()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            boolean r5 = android.text.TextUtils.isEmpty(r11)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r5 != 0) goto L_0x0188
            java.lang.StringBuilder r5 = r4.append(r11)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r6 = " "
            r5.append(r6)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x0188:
            boolean r5 = android.text.TextUtils.isEmpty(r10)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r5 != 0) goto L_0x0191
            r12.a(r11, r10, r4)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x0191:
            boolean r5 = android.text.TextUtils.isEmpty(r9)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r5 != 0) goto L_0x01a0
            java.lang.StringBuilder r5 = r4.append(r9)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r6 = " "
            r5.append(r6)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x01a0:
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r5 != 0) goto L_0x01af
            java.lang.StringBuilder r3 = r4.append(r3)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r5 = " "
            r3.append(r5)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x01af:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r3 != 0) goto L_0x01be
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r3 = " "
            r2.append(r3)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x01be:
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r2 != 0) goto L_0x01c7
            r12.a(r0, r1, r4, r13)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x01c7:
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0.<init>()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = "citycode"
            java.lang.String r2 = r13.getCityCode()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0.putString(r1, r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = "desc"
            java.lang.String r2 = r4.toString()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0.putString(r1, r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = "adcode"
            java.lang.String r2 = r13.getAdCode()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0.putString(r1, r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setExtras(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = r4.toString()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.g(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r0 = r13.getAdCode()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r0 == 0) goto L_0x02d8
            java.lang.String r0 = r0.trim()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            int r0 = r0.length()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r0 <= 0) goto L_0x02d8
            com.amap.api.location.AMapLocationClientOption r0 = r12.b     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            com.amap.api.location.AMapLocationClientOption$GeoLanguage r0 = r0.getGeoLanguage()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            com.amap.api.location.AMapLocationClientOption$GeoLanguage r1 = com.amap.api.location.AMapLocationClientOption.GeoLanguage.EN     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            if (r0 == r1) goto L_0x02d8
            java.lang.String r0 = r4.toString()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = " "
            java.lang.String r2 = ""
            java.lang.String r0 = r0.replace(r1, r2)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setAddress(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x021a:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r1 = 1
            if (r0 != r1) goto L_0x0235
            r8.getInt()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.getInt()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.getShort()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x0235:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r1 = 1
            if (r0 != r1) goto L_0x0266
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x0336, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r1.<init>(r0, r2)     // Catch:{ Throwable -> 0x0336, all -> 0x0329 }
            r13.setBuildingId(r1)     // Catch:{ Throwable -> 0x0336, all -> 0x0329 }
        L_0x0251:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x0333, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r1.<init>(r0, r2)     // Catch:{ Throwable -> 0x0333, all -> 0x0329 }
            r13.setFloor(r1)     // Catch:{ Throwable -> 0x0333, all -> 0x0329 }
        L_0x0266:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r1 = 1
            if (r0 != r1) goto L_0x0276
            r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.getInt()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x0276:
            byte r0 = r8.get()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r1 = 1
            if (r0 != r1) goto L_0x0284
            long r0 = r8.getLong()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setTime(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
        L_0x0284:
            short r0 = r8.getShort()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r8.get(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            int r1 = r0.length     // Catch:{ Throwable -> 0x0330, all -> 0x0329 }
            if (r1 <= 0) goto L_0x029f
            r1 = 0
            byte[] r0 = android.util.Base64.decode(r0, r1)     // Catch:{ Throwable -> 0x0330, all -> 0x0329 }
            java.lang.String r1 = new java.lang.String     // Catch:{ Throwable -> 0x0330, all -> 0x0329 }
            java.lang.String r2 = "UTF-8"
            r1.<init>(r0, r2)     // Catch:{ Throwable -> 0x0330, all -> 0x0329 }
            r13.a(r1)     // Catch:{ Throwable -> 0x0330, all -> 0x0329 }
        L_0x029f:
            if (r8 == 0) goto L_0x02a4
            r8.clear()
        L_0x02a4:
            java.lang.StringBuilder r0 = r12.a
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0023
            java.lang.StringBuilder r0 = r12.a
            r1 = 0
            java.lang.StringBuilder r2 = r12.a
            int r2 = r2.length()
            r0.delete(r1, r2)
            goto L_0x0023
        L_0x02ba:
            r0 = move-exception
            r0 = r1
        L_0x02bc:
            r11 = r0
            goto L_0x00c4
        L_0x02bf:
            r0 = move-exception
            r0 = r2
        L_0x02c1:
            r10 = r0
            goto L_0x00da
        L_0x02c4:
            r0 = move-exception
            r0 = r3
        L_0x02c6:
            r9 = r0
            goto L_0x00f0
        L_0x02c9:
            r0 = move-exception
            r0 = r4
        L_0x02cb:
            r3 = r0
            goto L_0x0109
        L_0x02ce:
            r0 = move-exception
            r0 = r5
        L_0x02d0:
            r2 = r0
            goto L_0x011f
        L_0x02d3:
            r0 = move-exception
            r0 = r6
        L_0x02d5:
            r1 = r0
            goto L_0x0135
        L_0x02d8:
            java.lang.String r0 = r4.toString()     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            r13.setAddress(r0)     // Catch:{ Throwable -> 0x02e1, all -> 0x0329 }
            goto L_0x021a
        L_0x02e1:
            r0 = move-exception
            r1 = r8
        L_0x02e3:
            com.amap.api.col.sl.ev r13 = new com.amap.api.col.sl.ev     // Catch:{ all -> 0x032b }
            java.lang.String r2 = ""
            r13.<init>(r2)     // Catch:{ all -> 0x032b }
            r2 = 5
            r13.setErrorCode(r2)     // Catch:{ all -> 0x032b }
            java.lang.StringBuilder r2 = r12.a     // Catch:{ all -> 0x032b }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x032b }
            java.lang.String r4 = "parser data error:"
            r3.<init>(r4)     // Catch:{ all -> 0x032b }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x032b }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x032b }
            java.lang.String r3 = "#0505"
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ all -> 0x032b }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x032b }
            r2.append(r0)     // Catch:{ all -> 0x032b }
            r0 = 0
            r2 = 2054(0x806, float:2.878E-42)
            com.amap.api.col.sl.fv.a(r0, r2)     // Catch:{ all -> 0x032b }
            java.lang.StringBuilder r0 = r12.a     // Catch:{ all -> 0x032b }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x032b }
            r13.setLocationDetail(r0)     // Catch:{ all -> 0x032b }
            if (r1 == 0) goto L_0x02a4
            r1.clear()
            goto L_0x02a4
        L_0x0321:
            r0 = move-exception
            r8 = r1
        L_0x0323:
            if (r8 == 0) goto L_0x0328
            r8.clear()
        L_0x0328:
            throw r0
        L_0x0329:
            r0 = move-exception
            goto L_0x0323
        L_0x032b:
            r0 = move-exception
            r8 = r1
            goto L_0x0323
        L_0x032e:
            r0 = move-exception
            goto L_0x02e3
        L_0x0330:
            r0 = move-exception
            goto L_0x029f
        L_0x0333:
            r0 = move-exception
            goto L_0x0266
        L_0x0336:
            r0 = move-exception
            goto L_0x0251
        L_0x0339:
            r4 = move-exception
            goto L_0x0174
        L_0x033c:
            r0 = move-exception
            r0 = r7
            goto L_0x015f
        L_0x0340:
            r4 = move-exception
            goto L_0x015f
        L_0x0343:
            r0 = move-exception
            goto L_0x014a
        L_0x0346:
            r1 = move-exception
            goto L_0x02d5
        L_0x0348:
            r1 = move-exception
            goto L_0x02d0
        L_0x034a:
            r1 = move-exception
            goto L_0x02cb
        L_0x034c:
            r1 = move-exception
            goto L_0x02c6
        L_0x034f:
            r1 = move-exception
            goto L_0x02c1
        L_0x0352:
            r1 = move-exception
            goto L_0x02bc
        L_0x0355:
            r0 = move-exception
            goto L_0x00ae
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fn.a(com.amap.api.col.sl.ev, byte[]):com.amap.api.col.sl.ev");
    }

    private void a(String str, String str2, StringBuilder sb) {
        if (this.b.getGeoLanguage() == GeoLanguage.EN) {
            if (!str2.equals(str)) {
                sb.append(str2).append(Token.SEPARATOR);
            }
        } else if (!str.contains("市") || !str.equals(str2)) {
            sb.append(str2).append(Token.SEPARATOR);
        }
    }

    private void a(String str, String str2, StringBuilder sb, ev evVar) {
        if (TextUtils.isEmpty(str) || this.b.getGeoLanguage() == GeoLanguage.EN) {
            sb.append("Near " + str2);
            evVar.setDescription("Near " + str2);
            return;
        }
        sb.append("靠近");
        sb.append(str2).append(Token.SEPARATOR);
        evVar.setDescription("在" + str2 + "附近");
    }

    public final ev a(String str) {
        String str2;
        String str3;
        try {
            ev evVar = new ev("");
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("regeocode");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("addressComponent");
            evVar.setCountry(b(optJSONObject2.optString(DistrictSearchQuery.KEYWORDS_COUNTRY)));
            String b2 = b(optJSONObject2.optString(DistrictSearchQuery.KEYWORDS_PROVINCE));
            evVar.setProvince(b2);
            String b3 = b(optJSONObject2.optString("citycode"));
            evVar.setCityCode(b3);
            String optString = optJSONObject2.optString(DistrictSearchQuery.KEYWORDS_CITY);
            if (!b3.endsWith("010") && !b3.endsWith("021") && !b3.endsWith("022") && !b3.endsWith("023")) {
                optString = b(optString);
                evVar.setCity(optString);
            } else if (b2 != null && b2.length() > 0) {
                evVar.setCity(b2);
                optString = b2;
            }
            if (TextUtils.isEmpty(optString)) {
                evVar.setCity(b2);
                str2 = b2;
            } else {
                str2 = optString;
            }
            String b4 = b(optJSONObject2.optString(DistrictSearchQuery.KEYWORDS_DISTRICT));
            evVar.setDistrict(b4);
            String b5 = b(optJSONObject2.optString("adcode"));
            evVar.setAdCode(b5);
            JSONObject optJSONObject3 = optJSONObject2.optJSONObject("streetNumber");
            String b6 = b(optJSONObject3.optString("street"));
            evVar.setStreet(b6);
            evVar.setRoad(b6);
            evVar.setNumber(b(optJSONObject3.optString("number")));
            JSONArray optJSONArray = optJSONObject.optJSONArray("pois");
            if (optJSONArray.length() > 0) {
                str3 = b(optJSONArray.getJSONObject(0).optString(HttpPostBodyUtil.NAME));
                evVar.setPoiName(str3);
            } else {
                str3 = null;
            }
            JSONArray optJSONArray2 = optJSONObject.optJSONArray("aois");
            if (optJSONArray2.length() > 0) {
                evVar.setAoiName(b(optJSONArray2.getJSONObject(0).optString(HttpPostBodyUtil.NAME)));
            }
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(b2)) {
                sb.append(b2).append(Token.SEPARATOR);
            }
            if (!TextUtils.isEmpty(str2)) {
                a(b2, str2, sb);
            }
            if (!TextUtils.isEmpty(b4)) {
                sb.append(b4).append(Token.SEPARATOR);
            }
            if (!TextUtils.isEmpty(b6)) {
                sb.append(b6).append(Token.SEPARATOR);
            }
            if (!TextUtils.isEmpty(str3)) {
                a(b5, str3, sb, evVar);
            }
            Bundle bundle = new Bundle();
            bundle.putString("citycode", evVar.getCityCode());
            bundle.putString(SocialConstants.PARAM_APP_DESC, sb.toString());
            bundle.putString("adcode", evVar.getAdCode());
            evVar.setExtras(bundle);
            evVar.g(sb.toString());
            if (b5 == null || b5.trim().length() <= 0 || this.b.getGeoLanguage() == GeoLanguage.EN) {
                evVar.setAddress(sb.toString());
                return evVar;
            }
            evVar.setAddress(sb.toString().replace(Token.SEPARATOR, ""));
            return evVar;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String b(String str) {
        if ("[]".equals(str)) {
            return "";
        }
        return str;
    }

    public final ev a(String str, Context context, du duVar) {
        ev evVar = new ev("");
        evVar.setErrorCode(7);
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("#SHA1AndPackage#").append(bp.e(context));
            String str2 = (String) ((List) duVar.b.get("gsid")).get(0);
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("#gsid#").append(str2);
            }
            String str3 = duVar.c;
            if (!TextUtils.isEmpty(str3)) {
                stringBuffer.append("#csid#" + str3);
            }
        } catch (Throwable th) {
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status") || !jSONObject.has("info")) {
                this.a.append("json is error:").append(str).append(stringBuffer).append("#0702");
            }
            String string = jSONObject.getString("status");
            String string2 = jSONObject.getString("info");
            String string3 = jSONObject.getString("infocode");
            if (string.equals("0")) {
                this.a.append("auth fail:").append(string2).append(stringBuffer).append("#0701");
                fv.a(duVar.d, string3, string2);
            }
        } catch (Throwable th2) {
            this.a.append("json exception error:").append(th2.getMessage()).append(stringBuffer).append("#0703");
            fq.a(th2, "parser", "paseAuthFailurJson");
        }
        evVar.setLocationDetail(this.a.toString());
        if (this.a.length() > 0) {
            this.a.delete(0, this.a.length());
        }
        return evVar;
    }
}
