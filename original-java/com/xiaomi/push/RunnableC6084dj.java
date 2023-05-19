package com.xiaomi.push;

import android.util.Log;
import android.util.Pair;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.dj */
/* loaded from: classes2.dex */
public class RunnableC6084dj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C6083di f21273a;

    /* renamed from: a */
    final /* synthetic */ String f21274a;

    /* renamed from: a */
    final /* synthetic */ Throwable f21275a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6084dj(C6083di c6083di, String str, Throwable th) {
        this.f21273a = c6083di;
        this.f21274a = str;
        this.f21275a = th;
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
        list = C6083di.f21268a;
        simpleDateFormat = C6083di.f21267a;
        str = this.f21273a.f21271b;
        list.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat.format(new Date()), str, this.f21274a), this.f21275a));
        list2 = C6083di.f21268a;
        if (list2.size() > 20000) {
            list3 = C6083di.f21268a;
            int size = (list3.size() - BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT) + 50;
            for (int i = 0; i < size; i++) {
                try {
                    list5 = C6083di.f21268a;
                    if (list5.size() > 0) {
                        list6 = C6083di.f21268a;
                        list6.remove(0);
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            list4 = C6083di.f21268a;
            simpleDateFormat2 = C6083di.f21267a;
            str4 = this.f21273a.f21271b;
            list4.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat2.format(new Date()), str4, "flush " + size + " lines logs."), null));
        }
        try {
            if (C5970ac.m3798d()) {
                this.f21273a.m3376a();
                return;
            }
            str3 = this.f21273a.f21271b;
            Log.w(str3, "SDCard is unavailable.");
        } catch (Exception e) {
            str2 = this.f21273a.f21271b;
            Log.e(str2, "", e);
        }
    }
}
