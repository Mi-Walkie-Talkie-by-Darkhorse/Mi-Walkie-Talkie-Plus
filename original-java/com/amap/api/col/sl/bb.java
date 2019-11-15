package com.amap.api.col.sl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.c;
import com.amap.api.col.sl.ac.d;
import com.amap.api.services.cloud.CloudItemDetail;
import com.amap.api.services.cloud.CloudResult;
import com.amap.api.services.cloud.CloudSearch.OnCloudSearchListener;
import com.amap.api.services.cloud.CloudSearch.Query;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.interfaces.ICloudSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.List;

/* compiled from: CloudSearchCore */
public class bb implements ICloudSearch {
    private Context a;
    /* access modifiers changed from: private */
    public OnCloudSearchListener b;
    private Query c;
    private int d;
    private HashMap<Integer, CloudResult> e;
    /* access modifiers changed from: private */
    public Handler f = ac.a();

    public bb(Context context) {
        this.a = context.getApplicationContext();
    }

    public void setOnCloudSearchListener(OnCloudSearchListener onCloudSearchListener) {
        this.b = onCloudSearchListener;
    }

    /* access modifiers changed from: private */
    public CloudResult a(Query query) throws AMapException {
        boolean z;
        CloudResult cloudResult;
        boolean z2 = true;
        CloudResult cloudResult2 = null;
        if (query == null) {
            z = false;
        } else if (t.a(query.getTableID()) || query.getBound() == null) {
            z = false;
        } else if (query.getBound() == null || !query.getBound().getShape().equals("Bound") || query.getBound().getCenter() != null) {
            if (query.getBound() != null && query.getBound().getShape().equals("Rectangle")) {
                LatLonPoint lowerLeft = query.getBound().getLowerLeft();
                LatLonPoint upperRight = query.getBound().getUpperRight();
                if (lowerLeft == null || upperRight == null) {
                    z = false;
                } else if (lowerLeft.getLatitude() >= upperRight.getLatitude() || lowerLeft.getLongitude() >= upperRight.getLongitude()) {
                    z = false;
                }
            }
            if (query.getBound() != null && query.getBound().getShape().equals("Polygon")) {
                List polyGonList = query.getBound().getPolyGonList();
                int i = 0;
                while (true) {
                    if (i >= polyGonList.size()) {
                        break;
                    } else if (polyGonList.get(i) == null) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (Throwable th) {
                th = th;
                t.a(th, "CloudSearch", "searchCloud");
                if (th instanceof AMapException) {
                    throw ((AMapException) th);
                }
                ThrowableExtension.printStackTrace(th);
                return cloudResult2;
            }
        } else {
            if (!query.queryEquals(this.c)) {
                this.d = 0;
                this.c = query.clone();
                if (this.e != null) {
                    this.e.clear();
                }
            }
            if (this.d == 0) {
                CloudResult cloudResult3 = (CloudResult) new r(this.a, query).a();
                try {
                    this.e = new HashMap<>();
                    if (this.d <= 0) {
                        return cloudResult3;
                    }
                    this.e.put(Integer.valueOf(query.getPageNum()), cloudResult3);
                    return cloudResult3;
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    cloudResult2 = cloudResult;
                    th = th3;
                }
            } else {
                int pageNum = query.getPageNum();
                if (pageNum > this.d || pageNum <= 0) {
                    z2 = false;
                }
                if (!z2) {
                    throw new IllegalArgumentException("page out of range");
                }
                CloudResult cloudResult4 = (CloudResult) this.e.get(Integer.valueOf(pageNum));
                if (cloudResult4 != null) {
                    return cloudResult4;
                }
                cloudResult = (CloudResult) new r(this.a, query).a();
                this.e.put(Integer.valueOf(query.getPageNum()), cloudResult);
                return cloudResult;
            }
        }
    }

    public void searchCloudAsyn(final Query query) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.arg1 = 12;
                        obtainMessage.what = 700;
                        d dVar = new d();
                        dVar.b = bb.this.b;
                        obtainMessage.obj = dVar;
                        dVar.a = bb.this.a(query);
                        obtainMessage.arg2 = 1000;
                    } catch (AMapException e) {
                        obtainMessage.arg2 = e.getErrorCode();
                    } finally {
                        bb.this.f.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: private */
    public CloudItemDetail a(String str, String str2) throws AMapException {
        if (str == null || str.trim().equals("")) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } else if (str2 == null || str2.trim().equals("")) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } else {
            try {
                return (CloudItemDetail) new q(this.a, new ak(str, str2)).a();
            } catch (Throwable th) {
                t.a(th, "CloudSearch", "searchCloudDetail");
                if (th instanceof AMapException) {
                    throw ((AMapException) th);
                }
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }
    }

    public void searchCloudDetailAsyn(final String str, final String str2) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.arg1 = 12;
                        obtainMessage.what = 701;
                        c cVar = new c();
                        cVar.b = bb.this.b;
                        obtainMessage.obj = cVar;
                        cVar.a = bb.this.a(str, str2);
                        obtainMessage.arg2 = 1000;
                    } catch (AMapException e) {
                        obtainMessage.arg2 = e.getErrorCode();
                    } finally {
                        bb.this.f.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}
