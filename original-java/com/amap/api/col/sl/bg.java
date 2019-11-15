package com.amap.api.col.sl;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.amap.api.col.sl.ac.f;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.interfaces.INearbySearch;
import com.amap.api.services.nearby.NearbySearch.NearbyListener;
import com.amap.api.services.nearby.NearbySearch.NearbyQuery;
import com.amap.api.services.nearby.NearbySearchResult;
import com.amap.api.services.nearby.UploadInfo;
import com.amap.api.services.nearby.UploadInfoCallback;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;

/* compiled from: NearbySearchCore */
public class bg implements INearbySearch {
    private static long e = 0;
    /* access modifiers changed from: private */
    public List<NearbyListener> a = new ArrayList();
    private String b;
    private Context c;
    /* access modifiers changed from: private */
    public ac d;
    private ExecutorService f;
    private LatLonPoint g = null;
    private String h = null;
    private boolean i = false;
    private Timer j = new Timer();
    /* access modifiers changed from: private */
    public UploadInfoCallback k;
    private TimerTask l;

    /* compiled from: NearbySearchCore */
    private class a extends TimerTask {
        private a() {
        }

        /* synthetic */ a(bg bgVar, byte b) {
            this();
        }

        public final void run() {
            try {
                if (bg.this.k != null) {
                    int b = bg.this.a(bg.this.k.OnUploadInfoCallback());
                    Message obtainMessage = bg.this.d.obtainMessage();
                    obtainMessage.arg1 = 10;
                    obtainMessage.obj = bg.this.a;
                    obtainMessage.what = b;
                    bg.this.d.sendMessage(obtainMessage);
                }
            } catch (Throwable th) {
                t.a(th, "NearbySearch", "UpdateDataTask");
            }
        }
    }

    static /* synthetic */ int a(bg bgVar, UploadInfo uploadInfo) {
        return bgVar.i ? AMapException.CODE_AMAP_CLIENT_UPLOADAUTO_STARTED_ERROR : bgVar.a(uploadInfo);
    }

    public bg(Context context) {
        this.c = context.getApplicationContext();
        this.d = ac.a();
    }

    public synchronized void addNearbyListener(NearbyListener nearbyListener) {
        try {
            this.a.add(nearbyListener);
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "addNearbyListener");
        }
        return;
    }

    public synchronized void removeNearbyListener(NearbyListener nearbyListener) {
        if (nearbyListener != null) {
            try {
                this.a.remove(nearbyListener);
            } catch (Throwable th) {
                t.a(th, "NearbySearch", "removeNearbyListener");
            }
        }
        return;
    }

    public void clearUserInfoAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = bg.this.d.obtainMessage();
                    obtainMessage.arg1 = 8;
                    obtainMessage.obj = bg.this.a;
                    try {
                        bg.this.a();
                        obtainMessage.what = 1000;
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                    } catch (AMapException e) {
                        obtainMessage.what = e.getErrorCode();
                        t.a(e, "NearbySearch", "clearUserInfoAsyn");
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                    } catch (Throwable th) {
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                        throw th;
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "clearUserInfoAsynThrowable");
        }
    }

    /* access modifiers changed from: private */
    public int a() throws AMapException {
        try {
            if (this.i) {
                throw new AMapException(AMapException.AMAP_CLIENT_UPLOADAUTO_STARTED_ERROR);
            } else if (!a(this.b)) {
                throw new AMapException(AMapException.AMAP_CLIENT_USERID_ILLEGAL);
            } else {
                aa.a(this.c);
                return ((Integer) new ad(this.c, this.b).a()).intValue();
            }
        } catch (AMapException e2) {
            throw e2;
        } catch (Throwable th) {
            throw new AMapException(AMapException.AMAP_CLIENT_UNKNOWN_ERROR);
        }
    }

    public void setUserID(String str) {
        this.b = str;
    }

    public synchronized void startUploadNearbyInfoAuto(UploadInfoCallback uploadInfoCallback, int i2) {
        if (i2 < 7000) {
            i2 = 7000;
        }
        try {
            this.k = uploadInfoCallback;
            if (this.i && this.l != null) {
                this.l.cancel();
            }
            this.i = true;
            this.l = new a(this, 0);
            this.j.schedule(this.l, 0, (long) i2);
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "startUploadNearbyInfoAuto");
        }
        return;
    }

    public synchronized void stopUploadNearbyInfoAuto() {
        try {
            if (this.l != null) {
                this.l.cancel();
            }
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "stopUploadNearbyInfoAuto");
        }
        this.i = false;
        this.l = null;
        return;
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[a-z0-9A-Z_-]{1,32}$").matcher(str).find();
    }

    /* access modifiers changed from: private */
    public int a(UploadInfo uploadInfo) {
        try {
            aa.a(this.c);
            if (uploadInfo == null) {
                return AMapException.CODE_AMAP_CLIENT_NEARBY_NULL_RESULT;
            }
            long time = new Date().getTime();
            if (time - e < 6500) {
                return AMapException.CODE_AMAP_CLIENT_UPLOAD_TOO_FREQUENT;
            }
            e = time;
            String userID = uploadInfo.getUserID();
            if (!a(userID)) {
                return AMapException.CODE_AMAP_CLIENT_USERID_ILLEGAL;
            }
            if (TextUtils.isEmpty(this.h)) {
                this.h = userID;
            }
            if (!userID.equals(this.h)) {
                return AMapException.CODE_AMAP_CLIENT_USERID_ILLEGAL;
            }
            LatLonPoint point = uploadInfo.getPoint();
            if (point == null || point.equals(this.g)) {
                return AMapException.CODE_AMAP_CLIENT_UPLOAD_LOCATION_ERROR;
            }
            new af(this.c, uploadInfo).a();
            this.g = point.copy();
            return 1000;
        } catch (AMapException e2) {
            return e2.getErrorCode();
        } catch (Throwable th) {
            return 1900;
        }
    }

    public void uploadNearbyInfoAsyn(final UploadInfo uploadInfo) {
        if (this.f == null) {
            this.f = Executors.newSingleThreadExecutor();
        }
        this.f.submit(new Runnable() {
            public final void run() {
                try {
                    Message obtainMessage = bg.this.d.obtainMessage();
                    obtainMessage.arg1 = 10;
                    obtainMessage.obj = bg.this.a;
                    obtainMessage.what = bg.a(bg.this, uploadInfo);
                    bg.this.d.sendMessage(obtainMessage);
                } catch (Throwable th) {
                    t.a(th, "NearbySearch", "uploadNearbyInfoAsyn");
                }
            }
        });
    }

    public void searchNearbyInfoAsyn(final NearbyQuery nearbyQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = bg.this.d.obtainMessage();
                    obtainMessage.arg1 = 9;
                    f fVar = new f();
                    fVar.a = bg.this.a;
                    obtainMessage.obj = fVar;
                    try {
                        fVar.b = bg.this.searchNearbyInfo(nearbyQuery);
                        obtainMessage.what = 1000;
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                    } catch (AMapException e) {
                        obtainMessage.what = e.getErrorCode();
                        t.a(e, "NearbySearch", "searchNearbyInfoAsyn");
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                    } catch (Throwable th) {
                        if (bg.this.d != null) {
                            bg.this.d.sendMessage(obtainMessage);
                        }
                        throw th;
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "searchNearbyInfoAsynThrowable");
        }
    }

    public NearbySearchResult searchNearbyInfo(NearbyQuery nearbyQuery) throws AMapException {
        boolean z = false;
        try {
            aa.a(this.c);
            if (nearbyQuery != null) {
                if (nearbyQuery.getCenterPoint() != null) {
                    z = true;
                }
            }
            if (z) {
                return (NearbySearchResult) new ae(this.c, nearbyQuery).a();
            }
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } catch (AMapException e2) {
            throw e2;
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "searchNearbyInfo");
            throw new AMapException(AMapException.AMAP_CLIENT_UNKNOWN_ERROR);
        }
    }

    public synchronized void destroy() {
        try {
            this.j.cancel();
        } catch (Throwable th) {
            t.a(th, "NearbySearch", "destryoy");
        }
        return;
    }
}
