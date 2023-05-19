package p000a.p015f.p016a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* renamed from: a.f.a.a */
/* loaded from: classes.dex */
public final class LocalBroadcastManager {

    /* renamed from: f */
    private static final Object f158f = new Object();

    /* renamed from: g */
    private static LocalBroadcastManager f159g;

    /* renamed from: a */
    private final Context f160a;

    /* renamed from: b */
    private final HashMap<BroadcastReceiver, ArrayList<C0023c>> f161b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, ArrayList<C0023c>> f162c = new HashMap<>();

    /* renamed from: d */
    private final ArrayList<C0022b> f163d = new ArrayList<>();

    /* renamed from: e */
    private final Handler f164e;

    /* compiled from: LocalBroadcastManager.java */
    /* renamed from: a.f.a.a$a */
    /* loaded from: classes.dex */
    class HandlerC0021a extends Handler {
        HandlerC0021a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                LocalBroadcastManager.this.m26389a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalBroadcastManager.java */
    /* renamed from: a.f.a.a$b */
    /* loaded from: classes.dex */
    public static final class C0022b {

        /* renamed from: a */
        final Intent f166a;

        /* renamed from: b */
        final ArrayList<C0023c> f167b;

        C0022b(Intent intent, ArrayList<C0023c> arrayList) {
            this.f166a = intent;
            this.f167b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalBroadcastManager.java */
    /* renamed from: a.f.a.a$c */
    /* loaded from: classes.dex */
    public static final class C0023c {

        /* renamed from: a */
        final IntentFilter f168a;

        /* renamed from: b */
        final BroadcastReceiver f169b;

        /* renamed from: c */
        boolean f170c;

        /* renamed from: d */
        boolean f171d;

        C0023c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f168a = intentFilter;
            this.f169b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f169b);
            sb.append(" filter=");
            sb.append(this.f168a);
            if (this.f171d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.f160a = context;
        this.f164e = new HandlerC0021a(context.getMainLooper());
    }

    @NonNull
    /* renamed from: b */
    public static LocalBroadcastManager m26388b(@NonNull Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f158f) {
            if (f159g == null) {
                f159g = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = f159g;
        }
        return localBroadcastManager;
    }

    /* renamed from: a */
    void m26389a() {
        int size;
        C0022b[] c0022bArr;
        while (true) {
            synchronized (this.f161b) {
                size = this.f163d.size();
                if (size <= 0) {
                    return;
                }
                c0022bArr = new C0022b[size];
                this.f163d.toArray(c0022bArr);
                this.f163d.clear();
            }
            for (int i = 0; i < size; i++) {
                C0022b c0022b = c0022bArr[i];
                int size2 = c0022b.f167b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C0023c c0023c = c0022b.f167b.get(i2);
                    if (!c0023c.f171d) {
                        c0023c.f169b.onReceive(this.f160a, c0022b.f166a);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public void m26387c(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f161b) {
            C0023c c0023c = new C0023c(intentFilter, broadcastReceiver);
            ArrayList<C0023c> arrayList = this.f161b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f161b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(c0023c);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C0023c> arrayList2 = this.f162c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f162c.put(action, arrayList2);
                }
                arrayList2.add(c0023c);
            }
        }
    }

    /* renamed from: d */
    public boolean m26386d(@NonNull Intent intent) {
        int i;
        String str;
        ArrayList arrayList;
        ArrayList<C0023c> arrayList2;
        String str2;
        synchronized (this.f161b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f160a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<C0023c> arrayList3 = this.f162c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    C0023c c0023c = arrayList3.get(i2);
                    if (z) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + c0023c.f168a);
                    }
                    if (c0023c.f170c) {
                        if (z) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                        i = i2;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = resolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i = i2;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = resolveTypeIfNeeded;
                        int match = c0023c.f168a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(c0023c);
                            c0023c.f170c = true;
                            i2 = i + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        } else if (z) {
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + (match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category"));
                        }
                    }
                    arrayList4 = arrayList;
                    i2 = i + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    resolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                        ((C0023c) arrayList5.get(i3)).f170c = false;
                    }
                    this.f163d.add(new C0022b(intent, arrayList5));
                    if (!this.f164e.hasMessages(1)) {
                        this.f164e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: e */
    public void m26385e(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f161b) {
            ArrayList<C0023c> remove = this.f161b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C0023c c0023c = remove.get(size);
                c0023c.f171d = true;
                for (int i = 0; i < c0023c.f168a.countActions(); i++) {
                    String action = c0023c.f168a.getAction(i);
                    ArrayList<C0023c> arrayList = this.f162c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C0023c c0023c2 = arrayList.get(size2);
                            if (c0023c2.f169b == broadcastReceiver) {
                                c0023c2.f171d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f162c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
