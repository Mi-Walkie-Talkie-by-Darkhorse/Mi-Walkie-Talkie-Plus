package com.xiaomi.push;

import android.util.Log;
import android.util.Pair;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class dj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ di f8850a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f215a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Throwable f216a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(di diVar, String str, Throwable th) {
        this.f8850a = diVar;
        this.f215a = str;
        this.f216a = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        List list;
        SimpleDateFormat simpleDateFormat;
        String str;
        List list2;
        String str2;
        String str3;
        List list3;
        List list4;
        SimpleDateFormat simpleDateFormat2;
        String str4;
        List list5;
        List list6;
        list = di.f212a;
        simpleDateFormat = di.f211a;
        str = this.f8850a.f8848b;
        list.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat.format(new Date()), str, this.f215a), this.f216a));
        list2 = di.f212a;
        if (list2.size() > 20000) {
            list3 = di.f212a;
            int size = (list3.size() - BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT) + 50;
            for (int i = 0; i < size; i++) {
                try {
                    list5 = di.f212a;
                    if (list5.size() > 0) {
                        list6 = di.f212a;
                        list6.remove(0);
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            list4 = di.f212a;
            simpleDateFormat2 = di.f211a;
            str4 = this.f8850a.f8848b;
            list4.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat2.format(new Date()), str4, "flush " + size + " lines logs."), null));
        }
        try {
            if (!ac.d()) {
                str3 = this.f8850a.f8848b;
                Log.w(str3, "SDCard is unavailable.");
                return;
            }
            this.f8850a.a();
        } catch (Exception e) {
            str2 = this.f8850a.f8848b;
            Log.e(str2, "", e);
        }
    }
}
