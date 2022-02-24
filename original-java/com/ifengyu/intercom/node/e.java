package com.ifengyu.intercom.node;

import android.content.Intent;
import android.content.SharedPreferences;
import com.google.protobuf.Message;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.greendao.dao.UserChannelDao;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.q;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.btkey.BT_PUBLIC_MSG;
import com.ifengyu.intercom.node.transport.d;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.squareup.otto.Produce;
import com.umeng.analytics.MobclickAgent;
import de.greenrobot.event.c;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* compiled from: DataService.java */
/* loaded from: classes2.dex */
public class e implements g {
    private static e f;

    /* renamed from: a  reason: collision with root package name */
    private i f5913a;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences.Editor f5914b;

    /* renamed from: c  reason: collision with root package name */
    private b f5915c;
    private UserChannelDao d;
    private SealSharkChannelDao e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataService.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5916a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5917b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f5918c;
        static final /* synthetic */ int[] d;
        static final /* synthetic */ int[] e;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            e = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                e[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                e[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                e[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.values().length];
            d = iArr2;
            try {
                iArr2[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                d[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            f5918c = iArr3;
            try {
                iArr3[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5918c[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5918c[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5918c[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr4 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.values().length];
            f5917b = iArr4;
            try {
                iArr4[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f5917b[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr5 = new int[MitalkProtos.CHOPTION.values().length];
            f5916a = iArr5;
            try {
                iArr5[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f5916a[MitalkProtos.CHOPTION.ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f5916a[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f5916a[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f5916a[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f5916a[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* compiled from: DataService.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(MitalkProtos.ParamUpdate paramUpdate);

        void a(SealProtos.SEAL_DeviceParam sEAL_DeviceParam);

        void a(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam);
    }

    private e() {
    }

    private void b(MitalkProtos.StateUpdate stateUpdate) {
        UserChannel a2;
        UserChannel a3;
        int i = a.f5916a[stateUpdate.getOption().ordinal()];
        if (i == 3 || i == 4 || i == 5) {
            if (!(!stateUpdate.hasCh1() || (a3 = q.a(stateUpdate.getCh1())) == null || a3.h() == -1)) {
                this.d.insertOrReplace(a3);
            }
            if (stateUpdate.hasCh2() && (a2 = q.a(stateUpdate.getCh2())) != null && a2.h() != -1) {
                this.d.insertOrReplace(a2);
            }
        }
    }

    private void c(MitalkProtos.StateUpdate stateUpdate) {
        this.f5914b = d0.j().edit();
        boolean z = true;
        boolean z2 = false;
        if (stateUpdate.hasCh1() && stateUpdate.hasCh2()) {
            SharedPreferences.Editor editor = this.f5914b;
            if (stateUpdate.getCh1().getType() == MitalkProtos.CHTYPE.SOS || stateUpdate.getCh2().getType() == MitalkProtos.CHTYPE.SOS) {
                z2 = true;
            }
            editor.putBoolean("is_sos_model", z2);
            this.f5914b.putBoolean("is_double_frequency_model", true);
        } else if (stateUpdate.hasCh1()) {
            this.f5914b.putBoolean("is_double_frequency_model", false);
            SharedPreferences.Editor editor2 = this.f5914b;
            if (stateUpdate.getCh1().getType() != MitalkProtos.CHTYPE.SOS) {
                z = false;
            }
            editor2.putBoolean("is_sos_model", z);
        } else if (stateUpdate.hasCh2()) {
            this.f5914b.putBoolean("is_double_frequency_model", false);
            SharedPreferences.Editor editor3 = this.f5914b;
            if (stateUpdate.getCh2().getType() != MitalkProtos.CHTYPE.SOS) {
                z = false;
            }
            editor3.putBoolean("is_sos_model", z);
        }
        if (stateUpdate.hasStateMode()) {
            this.f5914b.putInt("stateMode", stateUpdate.getStateMode().getNumber());
        }
        this.f5914b.apply();
    }

    public static e d() {
        if (f == null) {
            f = new e();
        }
        return f;
    }

    private void e(Message message) {
        if (message instanceof SealProtos.SEAL_DeviceParam) {
            SealProtos.SEAL_DeviceParam sEAL_DeviceParam = (SealProtos.SEAL_DeviceParam) message;
            if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK || sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                a(sEAL_DeviceParam);
                if (sEAL_DeviceParam.hasShareLoc()) {
                    if (sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_ON && ShareLocationService.a() == null) {
                        MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                    } else if (sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_OFF && ShareLocationService.a() != null) {
                        MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                    }
                }
            }
            com.ifengyu.intercom.eventbus.a.a().a(sEAL_DeviceParam);
            b bVar = this.f5915c;
            if (bVar != null) {
                bVar.a(sEAL_DeviceParam);
            }
        }
    }

    private void f(Message message) {
        if (message instanceof SealProtos.SEAL_LocationInfo) {
            com.ifengyu.intercom.eventbus.a.a().a((SealProtos.SEAL_LocationInfo) message);
        }
    }

    private void g(Message message) {
        if (message instanceof SealProtos.SEAL_UserActionStatistics) {
            SealProtos.SEAL_UserActionStatistics sEAL_UserActionStatistics = (SealProtos.SEAL_UserActionStatistics) message;
            HashMap hashMap = new HashMap();
            if (sEAL_UserActionStatistics.getPowerOn() > 0) {
                hashMap.put("powerOnCount", Integer.valueOf(sEAL_UserActionStatistics.getPowerOn()));
            }
            if (sEAL_UserActionStatistics.getFactoryReset() > 0) {
                hashMap.put("factoryResetCount", Integer.valueOf(sEAL_UserActionStatistics.getFactoryReset()));
            }
            if (sEAL_UserActionStatistics.getDeviceIdQuery() > 0) {
                hashMap.put("deviceIdQueryCount", Integer.valueOf(sEAL_UserActionStatistics.getDeviceIdQuery()));
            }
            if (sEAL_UserActionStatistics.getKeyLock() > 0) {
                hashMap.put("keyLockCount", Integer.valueOf(sEAL_UserActionStatistics.getKeyLock()));
            }
            if (sEAL_UserActionStatistics.getPowerLevelQuery() > 0) {
                hashMap.put("getPowerLevelQuery", Integer.valueOf(sEAL_UserActionStatistics.getPowerLevelQuery()));
            }
            if (sEAL_UserActionStatistics.getFmOpen() > 0) {
                hashMap.put("fmOpenCount", Integer.valueOf(sEAL_UserActionStatistics.getFmOpen()));
            }
            if (sEAL_UserActionStatistics.getConnBtEar() > 0) {
                hashMap.put("connBtEarCount", Integer.valueOf(sEAL_UserActionStatistics.getConnBtEar()));
            }
            if (!hashMap.isEmpty()) {
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Seal_Device_Event", hashMap);
            }
        }
    }

    private void h(Message message) {
        if (message instanceof SharkProtos.SHARK_ChannelInfoOperate) {
            SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = (SharkProtos.SHARK_ChannelInfoOperate) message;
            com.ifengyu.intercom.eventbus.a.a().a(sHARK_ChannelInfoOperate);
            if (sHARK_ChannelInfoOperate.hasCh() && sHARK_ChannelInfoOperate.hasOption()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    private void i(Message message) {
        if (message instanceof SharkProtos.SHARK_ChannelStateOperate) {
            SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate = (SharkProtos.SHARK_ChannelStateOperate) message;
            com.ifengyu.intercom.eventbus.a.a().a(sHARK_ChannelStateOperate);
            if (sHARK_ChannelStateOperate.hasOption()) {
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    private void j(Message message) {
        if (message instanceof SharkProtos.SHARK_DeviceParam) {
            SharkProtos.SHARK_DeviceParam sHARK_DeviceParam = (SharkProtos.SHARK_DeviceParam) message;
            if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK || sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                a(sHARK_DeviceParam);
                if (sHARK_DeviceParam.hasShareLoc()) {
                    if (sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_ON && ShareLocationService.a() == null) {
                        MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                    } else if (sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_OFF && ShareLocationService.a() != null) {
                        MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                    }
                }
            }
            com.ifengyu.intercom.eventbus.a.a().a(sHARK_DeviceParam);
            b bVar = this.f5915c;
            if (bVar != null) {
                bVar.a(sHARK_DeviceParam);
            }
        }
    }

    private void k(Message message) {
        if (message instanceof SharkProtos.SHARK_LocationInfo) {
            com.ifengyu.intercom.eventbus.a.a().a((SharkProtos.SHARK_LocationInfo) message);
        }
    }

    private void l(Message message) {
        if (message instanceof SharkProtos.SHARK_UserActionStatistics) {
            SharkProtos.SHARK_UserActionStatistics sHARK_UserActionStatistics = (SharkProtos.SHARK_UserActionStatistics) message;
            HashMap hashMap = new HashMap();
            if (sHARK_UserActionStatistics.getPowerOn() > 0) {
                hashMap.put("powerOnCount", Integer.valueOf(sHARK_UserActionStatistics.getPowerOn()));
            }
            if (sHARK_UserActionStatistics.getAzimuthMap() > 0) {
                hashMap.put("azimuthMapCount", Integer.valueOf(sHARK_UserActionStatistics.getAzimuthMap()));
            }
            if (sHARK_UserActionStatistics.getFmRadio() > 0) {
                hashMap.put("fmRadioCount", Integer.valueOf(sHARK_UserActionStatistics.getFmRadio()));
            }
            if (sHARK_UserActionStatistics.getQuickTeam() > 0) {
                hashMap.put("quickTeamCount", Integer.valueOf(sHARK_UserActionStatistics.getQuickTeam()));
            }
            if (sHARK_UserActionStatistics.getBluetoothDevice() > 0) {
                hashMap.put("bluetoothDeviceCount", Integer.valueOf(sHARK_UserActionStatistics.getBluetoothDevice()));
            }
            if (sHARK_UserActionStatistics.getHandsFree() > 0) {
                hashMap.put("handsFreeCount", Integer.valueOf(sHARK_UserActionStatistics.getHandsFree()));
            }
            if (sHARK_UserActionStatistics.getChannelScan() > 0) {
                hashMap.put("channelScanCount", Integer.valueOf(sHARK_UserActionStatistics.getChannelScan()));
            }
            if (sHARK_UserActionStatistics.getDoubleFreq() > 0) {
                hashMap.put("doubleFreqCount", Integer.valueOf(sHARK_UserActionStatistics.getDoubleFreq()));
            }
            if (sHARK_UserActionStatistics.getSosMode() > 0) {
                hashMap.put("sosModeCount", Integer.valueOf(sHARK_UserActionStatistics.getSosMode()));
            }
            if (sHARK_UserActionStatistics.getPowerLevel() > 0) {
                hashMap.put("powerLevelCount", Integer.valueOf(sHARK_UserActionStatistics.getPowerLevel()));
            }
            if (sHARK_UserActionStatistics.getBusyLock() > 0) {
                hashMap.put("busyLockCount", Integer.valueOf(sHARK_UserActionStatistics.getBusyLock()));
            }
            if (sHARK_UserActionStatistics.getSquelchTail() > 0) {
                hashMap.put("squelchTailCount", Integer.valueOf(sHARK_UserActionStatistics.getSquelchTail()));
            }
            if (sHARK_UserActionStatistics.getWideNarrow() > 0) {
                hashMap.put("wideNarrowCount", Integer.valueOf(sHARK_UserActionStatistics.getWideNarrow()));
            }
            if (sHARK_UserActionStatistics.getRestoreFactory() > 0) {
                hashMap.put("restoreFactoryCount", Integer.valueOf(sHARK_UserActionStatistics.getRestoreFactory()));
            }
            if (!hashMap.isEmpty()) {
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Shark_Device_Event", hashMap);
            }
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(i iVar) {
        z.d("DataService", "onDeviceConnected");
        this.f5913a = iVar;
        MiTalkiApp.b().a(false);
        int g = d0.g();
        if (g == 1) {
            UserChannelDao f2 = MiTalkiApp.b().g().f();
            this.d = f2;
            f2.deleteAll();
        } else if (g == 4 || g == 5) {
            SealSharkChannelDao b2 = MiTalkiApp.b().g().b();
            this.e = b2;
            b2.deleteAll();
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, ConnectionFailedReason connectionFailedReason) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, b bVar) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void b(String str) {
    }

    private void d(Message message) {
        if (message instanceof SealProtos.SEAL_ChannelStateOperate) {
            SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate = (SealProtos.SEAL_ChannelStateOperate) message;
            com.ifengyu.intercom.eventbus.a.a().a(sEAL_ChannelStateOperate);
            if (sEAL_ChannelStateOperate.hasOption()) {
                a(sEAL_ChannelStateOperate);
            }
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str) {
        z.d("DataService", "onDeviceDisConnected");
        this.f5913a = null;
    }

    public void b(int i) {
        a(1, d.a(MitalkProtos.Command.newBuilder(), i));
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, MitalkProtos.Command command) {
        z.d("DataService", "onDolphinCmdReceived");
        if (command.hasLocationSync()) {
            com.ifengyu.intercom.eventbus.a.a().a(command.getLocationSync());
        }
        if (command.hasParamUpdate()) {
            MitalkProtos.ParamUpdate paramUpdate = command.getParamUpdate();
            z.d("DataService", "hasParamUpdate:\n" + paramUpdate.toString());
            a(paramUpdate);
            com.ifengyu.intercom.eventbus.a.a().a(paramUpdate);
            b bVar = this.f5915c;
            if (bVar != null) {
                bVar.a(paramUpdate);
            }
            if (!paramUpdate.hasShareLoc() || paramUpdate.hasVersionMCU() || paramUpdate.hasVersionHW()) {
                if (paramUpdate.hasShareLoc() && paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.getShareLoc() == 1 && ShareLocationService.a() == null) {
                    MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                }
            } else if (paramUpdate.getShareLoc() != 0) {
                MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
            } else if (!d0.a0()) {
                MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
            }
        }
        if (command.hasParamResp()) {
            MitalkProtos.ParamUpdate paramResp = command.getParamResp();
            z.d("DataService", "hasParamResp:\n" + paramResp.toString());
            a(paramResp);
            com.ifengyu.intercom.eventbus.a.a().a(paramResp);
            if (paramResp.hasShareLoc() && !paramResp.hasVersionMCU() && !paramResp.hasVersionHW()) {
                if (paramResp.getShareLoc() != 0) {
                    MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                } else if (!d0.a0()) {
                    MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                }
            }
        }
        if (command.hasStateResp()) {
            MitalkProtos.StateUpdate stateResp = command.getStateResp();
            if (stateResp.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                int i = d0.f5308a;
                if (i == 1) {
                    a(stateResp);
                } else if (i == 2) {
                    b(stateResp);
                }
            }
            if (z.c()) {
                z.d("DataService", "hasStateResp:\n" + stateResp.toString());
            }
            StateUpdateEvent a2 = a(command);
            com.ifengyu.intercom.eventbus.a.a().a(a2);
            MiTalkiApp.b().a(a2);
            if (stateResp.getOption() == MitalkProtos.CHOPTION.ST_QUERY) {
                if ((!stateResp.hasCh1() || stateResp.getCh1().getType() != MitalkProtos.CHTYPE.SOS) && (!stateResp.hasCh2() || stateResp.getCh2().getType() != MitalkProtos.CHTYPE.SOS)) {
                    if (d0.a0() && !d0.Z()) {
                        MiTalkiApp.b().stopService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                    }
                } else if (!d0.a0()) {
                    MiTalkiApp.b().startService(new Intent(MiTalkiApp.b(), ShareLocationService.class));
                }
                c(stateResp);
            }
        }
    }

    public void b() {
        a(1, d.a(MitalkProtos.Command.newBuilder()));
    }

    private void b(Message message) {
        if (message instanceof SealProtos.SEAL_BtEarScanControl) {
            com.ifengyu.intercom.eventbus.a.a().a((SealProtos.SEAL_BtEarScanControl) message);
        }
    }

    public void c() {
        a(1, d.b(MitalkProtos.Command.newBuilder()));
    }

    public void c(String str) {
        a(1, d.a(MitalkProtos.Command.newBuilder(), str));
    }

    private void c(Message message) {
        if (message instanceof SealProtos.SEAL_ChannelInfoOperate) {
            SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = (SealProtos.SEAL_ChannelInfoOperate) message;
            com.ifengyu.intercom.eventbus.a.a().a(sEAL_ChannelInfoOperate);
            if (sEAL_ChannelInfoOperate.hasCh() && sEAL_ChannelInfoOperate.hasOption()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    private void a(MitalkProtos.StateUpdate stateUpdate) {
        int i = a.f5916a[stateUpdate.getOption().ordinal()];
        if (i != 3 && i != 4 && i != 5) {
            return;
        }
        if (!stateUpdate.hasCh1() || !stateUpdate.hasCh2()) {
            if (stateUpdate.hasCh1()) {
                if (stateUpdate.getCh1().getType() != MitalkProtos.CHTYPE.RELAY) {
                    this.d.insertOrReplace(q.a(stateUpdate.getCh1()));
                }
            } else if (stateUpdate.hasCh2() && stateUpdate.getCh2().getType() != MitalkProtos.CHTYPE.RELAY) {
                this.d.insertOrReplace(q.a(stateUpdate.getCh2()));
            }
        } else if (stateUpdate.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
            this.d.insertOrReplace(q.a(stateUpdate.getCh1(), stateUpdate.getCh2()));
        } else {
            this.d.insertOrReplaceInTx(q.a(stateUpdate.getCh1()), q.a(stateUpdate.getCh2()));
        }
    }

    private void a(MitalkProtos.ParamUpdate paramUpdate) {
        this.f5914b = d0.j().edit();
        try {
            if (paramUpdate.hasDeviceId()) {
                this.f5914b.putString("deviceId", String.valueOf(paramUpdate.getDeviceId()));
            }
            if (paramUpdate.hasSosText()) {
                this.f5914b.putString("sosText", new String(paramUpdate.getSosText().toByteArray(), StringUtils.GB2312));
            }
            if (paramUpdate.hasDevNameGBK()) {
                d0.f(new String(paramUpdate.getDevNameGBK().toByteArray(), StringUtils.GB2312));
            }
            if (paramUpdate.hasVersionBLE()) {
                this.f5914b.putInt("versionBLE", paramUpdate.getVersionBLE());
            }
            if (paramUpdate.hasVersionHW()) {
                this.f5914b.putInt("versionHW", paramUpdate.getVersionHW());
            }
            if (paramUpdate.hasVersionMCU()) {
                this.f5914b.putInt("versionMCU", paramUpdate.getVersionMCU());
            }
            boolean z = false;
            if (paramUpdate.hasShareLoc()) {
                this.f5914b.putBoolean("is_public_loc_info", paramUpdate.getShareLoc() != 0);
            }
            if (paramUpdate.hasStateMode()) {
                if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.SINGLE) {
                    this.f5914b.putBoolean("is_double_frequency_model", false);
                } else if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.DOUBLE) {
                    this.f5914b.putBoolean("is_double_frequency_model", true);
                }
                this.f5914b.putInt("stateMode", paramUpdate.getStateMode().getNumber());
            }
            if (paramUpdate.hasLowPower()) {
                this.f5914b.putBoolean("lowPower", paramUpdate.getLowPower() == MitalkProtos.POWERSTATE.PROHIBITEUPDATE);
            }
            if (paramUpdate.hasActivateChannel()) {
                if (paramUpdate.getActivateChannel() == 1) {
                    z = true;
                }
                d0.a(z);
            }
            String str = "mcu_language_type_chinese";
            if (paramUpdate.hasLanguage()) {
                if (paramUpdate.getLanguage() != 0) {
                    str = "mcu_language_type_english";
                }
                d0.k(str);
            } else {
                d0.k(str);
            }
            this.f5914b.apply();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @Produce
    private StateUpdateEvent a(MitalkProtos.Command command) {
        return new StateUpdateEvent(command.getStateResp());
    }

    public void a(BeanUserLocation beanUserLocation) {
        a(2, d.a(MitalkProtos.Command.newBuilder(), beanUserLocation));
    }

    public void a(MitalkProtos.CHOPTION choption, UserChannel userChannel, UserChannel userChannel2) {
        a(1, d.a(MitalkProtos.Command.newBuilder(), userChannel, userChannel2, choption));
    }

    public void a(int i, String str) {
        a(1, d.a(MitalkProtos.Command.newBuilder(), i, str));
    }

    public void a(MitalkProtos.STATEMODE statemode) {
        a(1, d.a(MitalkProtos.Command.newBuilder(), statemode));
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(int i) {
        z.a("DataService", "onPttKeyEvent valueInt = " + i);
        if (BT_PUBLIC_MSG.BT_HF_CONNECTED.a() == i) {
            z.a("DataService", BT_PUBLIC_MSG.BT_HF_CONNECTED.name());
            c.b().a(BT_PUBLIC_MSG.BT_HF_CONNECTED);
        } else if (BT_PUBLIC_MSG.BT_HF_DISCONNECTED.a() == i) {
            z.a("DataService", BT_PUBLIC_MSG.BT_HF_DISCONNECTED.name());
            c.b().a(BT_PUBLIC_MSG.BT_HF_DISCONNECTED);
        } else if (BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO.a() == i) {
            z.a("DataService", BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO.name());
            c.b().a(BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO);
        } else if (BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO.a() == i) {
            z.a("DataService", BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO.name());
            c.b().a(BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO);
        } else if (BT_PUBLIC_MSG.BT_HF_ACK.a() == i) {
            z.a("DataService", BT_PUBLIC_MSG.BT_HF_ACK.name());
            c.b().a(BT_PUBLIC_MSG.BT_HF_ACK);
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, l lVar) {
        z.d("DataService", "onSealCmdReceived");
        Message b2 = lVar.b();
        int a2 = lVar.a();
        if (a2 == 20005) {
            e(b2);
        } else if (a2 == 20008) {
            d(b2);
        } else if (a2 == 20011) {
            c(b2);
        } else if (a2 == 20016) {
            f(b2);
        } else if (a2 == 20019) {
            a(b2);
        } else if (a2 == 20021) {
            b(b2);
        } else if (a2 == 20025) {
            g(b2);
        }
    }

    private void a(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        if (sEAL_DeviceParam.hasVerHw()) {
            d0.i(sEAL_DeviceParam.getVerHw());
        }
        if (sEAL_DeviceParam.hasVerSoft()) {
            d0.j(sEAL_DeviceParam.getVerSoft());
        }
        try {
            if (sEAL_DeviceParam.hasDeviceName()) {
                d0.f(new String(sEAL_DeviceParam.getDeviceName().toByteArray(), StringUtils.GB2312));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        boolean z = false;
        if (sEAL_DeviceParam.hasActivate()) {
            d0.a(sEAL_DeviceParam.getActivate() == 1);
        }
        if (sEAL_DeviceParam.hasShareLoc()) {
            d0.m(sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasBtAudio()) {
            d0.d(sEAL_DeviceParam.getBtAudio());
        }
        if (sEAL_DeviceParam.hasVoiceAlert()) {
            d0.l(sEAL_DeviceParam.getVoiceAlert() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasIsAllPublic()) {
            d0.k(sEAL_DeviceParam.getIsAllPublic() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasPwsaveMode()) {
            d0.g(sEAL_DeviceParam.getPwsaveMode());
        }
        if (sEAL_DeviceParam.hasVoiceType()) {
            d0.o(sEAL_DeviceParam.getVoiceType().getNumber());
        }
        if (sEAL_DeviceParam.hasCh()) {
            SealProtos.SEAL_ChannelInfo ch = sEAL_DeviceParam.getCh();
            if (ch.hasChSq()) {
                d0.h(ch.getChSq());
            }
            if (ch.hasChVox()) {
                d0.k(ch.getChVox());
            }
            if (ch.hasChElim()) {
                d0.j(ch.getChElim() == SealProtos.SEAL_SWITCH.SEAL_ON);
            }
            if (ch.hasChBand()) {
                d0.f(ch.getChBand());
            }
            if (ch.hasChPolite()) {
                if (ch.getChPolite() == SealProtos.SEAL_SWITCH.SEAL_ON) {
                    z = true;
                }
                d0.o(z);
            }
        }
    }

    private void a(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        int i = a.f5917b[sEAL_ChannelStateOperate.getOption().ordinal()];
    }

    private void a(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SealProtos.SEAL_ChannelInfo ch = sEAL_ChannelInfoOperate.getCh();
        if (ch.getChType() == SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF) {
            int i = a.f5918c[sEAL_ChannelInfoOperate.getOption().ordinal()];
            if (i == 1 || i == 2) {
                if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK) {
                    this.e.insertOrReplace(g0.a(ch));
                }
            } else if (i != 3) {
                if (i == 4 && sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK) {
                    this.e.delete(g0.a(ch));
                }
            } else if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE) {
                this.e.insertOrReplace(g0.a(ch));
            }
        }
    }

    private void a(Message message) {
        if (message instanceof SealProtos.SEAL_BtEarConnectState) {
            com.ifengyu.intercom.eventbus.a.a().a((SealProtos.SEAL_BtEarConnectState) message);
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, m mVar) {
        z.d("DataService", "onSharkCmdReceived");
        Message b2 = mVar.b();
        int a2 = mVar.a();
        if (a2 == 20005) {
            j(b2);
        } else if (a2 == 20008) {
            i(b2);
        } else if (a2 == 20011) {
            h(b2);
        } else if (a2 == 20016) {
            k(b2);
        } else if (a2 == 20025) {
            l(b2);
            h0.f();
        }
    }

    private void a(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        if (sHARK_DeviceParam.hasVerHw()) {
            d0.m(sHARK_DeviceParam.getVerHw());
        }
        if (sHARK_DeviceParam.hasVerSoft()) {
            d0.n(sHARK_DeviceParam.getVerSoft());
        }
        try {
            if (sHARK_DeviceParam.hasDeviceName()) {
                d0.f(new String(sHARK_DeviceParam.getDeviceName().toByteArray(), StringUtils.GB2312));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        boolean z = false;
        if (sHARK_DeviceParam.hasActivate()) {
            d0.a(sHARK_DeviceParam.getActivate() == 1);
        }
        if (sHARK_DeviceParam.hasShareLoc()) {
            if (sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_ON) {
                z = true;
            }
            d0.p(z);
        }
        if (sHARK_DeviceParam.hasCh()) {
            SharkProtos.SHARK_ChannelInfo ch = sHARK_DeviceParam.getCh();
            if (ch.hasChTxPower()) {
                d0.l(ch.getChTxPower());
            }
        }
    }

    private void a(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        int i = a.d[sHARK_ChannelStateOperate.getOption().ordinal()];
    }

    private void a(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        SharkProtos.SHARK_ChannelInfo ch = sHARK_ChannelInfoOperate.getCh();
        if (ch.getChType() == SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF) {
            int i = a.e[sHARK_ChannelInfoOperate.getOption().ordinal()];
            if (i == 1 || i == 2) {
                if (sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK) {
                    this.e.insertOrReplace(h0.a(ch));
                }
            } else if (i != 3) {
                if (i == 4 && sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK) {
                    this.e.delete(h0.a(ch));
                }
            } else if (sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE) {
                this.e.insertOrReplace(h0.a(ch));
            }
        }
    }

    private boolean a(int i, Message message) {
        try {
            if (this.f5913a != null) {
                this.f5913a.a(i, SendDataWrap.a(1, message, -1));
                return true;
            }
            z.e("DataService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e) {
            z.a("DataService", "Got exception while sending Data, ", e);
            return false;
        }
    }

    public boolean a(SendDataWrap sendDataWrap) {
        try {
            if (this.f5913a != null) {
                this.f5913a.a(1, sendDataWrap);
                return true;
            }
            z.e("DataService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e) {
            z.a("DataService", "Got exception while sending Data, ", e);
            return false;
        }
    }

    public void a(b bVar) {
        this.f5915c = bVar;
    }

    public void a() {
        this.f5915c = null;
    }
}
