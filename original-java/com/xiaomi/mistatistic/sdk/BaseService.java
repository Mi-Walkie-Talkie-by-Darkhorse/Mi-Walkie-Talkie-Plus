package com.xiaomi.mistatistic.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.mistatistic.sdk.a.C0065a;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.List;

public class BaseService extends Service {
    public static final String CATEGORY = "category";
    public static final int DELETE_BY_START_END_TIME = 5;
    public static final int DELETE_BY_TS = 4;
    public static final int DELETE_OLD = 3;
    public static final String END_TIME = "endTime";
    public static final int INSERT = 1;
    public static final String KEY = "key";
    public static final String NEW_VALUE = "newValue";
    public static final String START_TIME = "startTime";
    public static final String STAT_EVENT_POJO = "StatEventPojo";
    public static final String TIME_STAMP = "timeStamp";
    public static final String TYPE = "type";
    public static final int UPDATE = 2;
    /* access modifiers changed from: private */
    public f eventDAO;

    public void onCreate() {
        super.onCreate();
        f.a();
        this.eventDAO = new f();
    }

    public IBinder onBind(Intent intent) {
        return new C0065a() {
            public StatEventPojo a(String str, String str2) throws RemoteException {
                return BaseService.this.eventDAO.b(str, str2);
            }

            public List<StatEventPojo> a(long j) throws RemoteException {
                return BaseService.this.eventDAO.b(j);
            }

            public int a() throws RemoteException {
                return BaseService.this.eventDAO.e();
            }
        };
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (!(intent == null || intent.getExtras() == null)) {
            Bundle extras = intent.getExtras();
            if (extras.containsKey("type")) {
                switch (extras.getInt("type")) {
                    case 1:
                        this.eventDAO.b((StatEventPojo) extras.getParcelable(STAT_EVENT_POJO));
                        break;
                    case 2:
                        this.eventDAO.b(extras.getString("key"), extras.getString(CATEGORY), extras.getString(NEW_VALUE));
                        break;
                    case 3:
                        this.eventDAO.c();
                        break;
                    case 4:
                        this.eventDAO.d(extras.getLong(TIME_STAMP));
                        break;
                    case 5:
                        this.eventDAO.b(extras.getLong(START_TIME), extras.getLong(END_TIME));
                        break;
                }
            }
        }
        return 1;
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
