package com.ifengyu.intercom.node;

import android.content.Intent;
import android.content.SharedPreferences.Editor;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.Message;
import com.google.zxing.common.StringUtils;
import com.ifengyu.im.imservice.event.BT_PUBLIC_MSG;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.SealSharkChannelDao;
import com.ifengyu.intercom.greendao.dao.UserChannelDao;
import com.ifengyu.intercom.node.transport.d;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.POWERSTATE;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.STATEMODE;
import com.ifengyu.intercom.protos.MitalkProtos.StateUpdate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_SWITCH;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatistics;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_SWITCH;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatistics;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.squareup.otto.Produce;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import de.greenrobot.event.c;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* compiled from: DataService */
public class f implements h {
    private static f b = null;
    private j a;
    private Editor c;
    private a d;
    private UserChannelDao e;
    private SealSharkChannelDao f;

    /* compiled from: DataService */
    public interface a {
        void a(ParamUpdate paramUpdate);

        void a(SEAL_DeviceParam sEAL_DeviceParam);

        void a(SHARK_DeviceParam sHARK_DeviceParam);
    }

    private f() {
    }

    public static f a() {
        if (b == null) {
            b = new f();
        }
        return b;
    }

    public void a(j jVar) {
        s.a("DataService", "onDeviceConnected");
        this.a = jVar;
        MiTalkiApp.a().d(false);
        switch (w.ad()) {
            case 1:
                this.e = MiTalkiApp.a().b().g();
                this.e.deleteAll();
                return;
            case 4:
            case 5:
                this.f = MiTalkiApp.a().b().f();
                this.f.deleteAll();
                return;
            default:
                return;
        }
    }

    public void a(String str) {
        s.a("DataService", "onDeviceDisConnected");
        this.a = null;
    }

    public void b(String str) {
    }

    public void a(String str, ConnectionFailedReason connectionFailedReason) {
    }

    public void a(String str, Command command) {
        s.a("DataService", "onDolphinCmdReceived");
        if (command.hasLocationSync()) {
            com.ifengyu.intercom.eventbus.a.a().c((Object) command.getLocationSync());
        }
        if (command.hasParamUpdate()) {
            ParamUpdate paramUpdate = command.getParamUpdate();
            s.a("DataService", "hasParamUpdate:\n" + paramUpdate.toString());
            a(paramUpdate);
            com.ifengyu.intercom.eventbus.a.a().c((Object) paramUpdate);
            if (this.d != null) {
                this.d.a(paramUpdate);
            }
            if (!paramUpdate.hasShareLoc() || paramUpdate.hasVersionMCU() || paramUpdate.hasVersionHW()) {
                if (paramUpdate.hasShareLoc() && paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.getShareLoc() == 1 && ShareLocationService.a() == null) {
                    MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                }
            } else if (paramUpdate.getShareLoc() != 0) {
                MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
            } else if (!w.n()) {
                MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
            }
        }
        if (command.hasParamResp()) {
            ParamUpdate paramResp = command.getParamResp();
            s.a("DataService", "hasParamResp:\n" + paramResp.toString());
            a(paramResp);
            com.ifengyu.intercom.eventbus.a.a().c((Object) paramResp);
            if (paramResp.hasShareLoc() && !paramResp.hasVersionMCU() && !paramResp.hasVersionHW()) {
                if (paramResp.getShareLoc() != 0) {
                    MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                } else if (!w.n()) {
                    MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                }
            }
        }
        if (command.hasStateResp()) {
            StateUpdate stateResp = command.getStateResp();
            if (stateResp.getResult() == STATECODE.SUCCESS) {
                if (w.a == 1) {
                    b(stateResp);
                } else if (w.a == 2) {
                    a(stateResp);
                }
            }
            if (s.a()) {
                s.a("DataService", "hasStateResp:\n" + stateResp.toString());
            }
            StateUpdateEvent a2 = a(command);
            com.ifengyu.intercom.eventbus.a.a().c((Object) a2);
            MiTalkiApp.a().a(a2);
            if (stateResp.getOption() == CHOPTION.ST_QUERY) {
                if ((!stateResp.hasCh1() || stateResp.getCh1().getType() != CHTYPE.SOS) && (!stateResp.hasCh2() || stateResp.getCh2().getType() != CHTYPE.SOS)) {
                    if (w.n() && !w.j()) {
                        MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                    }
                } else if (!w.n()) {
                    MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                }
                c(stateResp);
            }
        }
    }

    private void a(StateUpdate stateUpdate) {
        switch (stateUpdate.getOption()) {
            case CH_INSERT:
            case CH_MODIFY:
            case CH_QUERY:
                if (stateUpdate.hasCh1()) {
                    UserChannel a2 = m.a(stateUpdate.getCh1());
                    if (!(a2 == null || a2.c() == -1)) {
                        this.e.insertOrReplace(a2);
                    }
                }
                if (stateUpdate.hasCh2()) {
                    UserChannel a3 = m.a(stateUpdate.getCh2());
                    if (a3 != null && a3.c() != -1) {
                        this.e.insertOrReplace(a3);
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void b(StateUpdate stateUpdate) {
        switch (stateUpdate.getOption()) {
            case CH_INSERT:
            case CH_MODIFY:
            case CH_QUERY:
                if (!stateUpdate.hasCh1() || !stateUpdate.hasCh2()) {
                    if (stateUpdate.hasCh1()) {
                        if (stateUpdate.getCh1().getType() != CHTYPE.RELAY) {
                            this.e.insertOrReplace(m.a(stateUpdate.getCh1()));
                            return;
                        }
                        return;
                    } else if (stateUpdate.hasCh2() && stateUpdate.getCh2().getType() != CHTYPE.RELAY) {
                        this.e.insertOrReplace(m.a(stateUpdate.getCh2()));
                        return;
                    } else {
                        return;
                    }
                } else if (stateUpdate.getCh1().getType() == CHTYPE.RELAY) {
                    this.e.insertOrReplace(m.a(stateUpdate.getCh1(), stateUpdate.getCh2()));
                    return;
                } else {
                    this.e.insertOrReplaceInTx((Object[]) new UserChannel[]{m.a(stateUpdate.getCh1()), m.a(stateUpdate.getCh2())});
                    return;
                }
            default:
                return;
        }
    }

    private void c(StateUpdate stateUpdate) {
        boolean z = true;
        boolean z2 = false;
        this.c = w.c().edit();
        if (stateUpdate.hasCh1() && stateUpdate.hasCh2()) {
            Editor editor = this.c;
            String str = "is_sos_model";
            if (stateUpdate.getCh1().getType() == CHTYPE.SOS || stateUpdate.getCh2().getType() == CHTYPE.SOS) {
                z2 = true;
            }
            editor.putBoolean(str, z2);
            this.c.putBoolean("is_double_frequency_model", true);
        } else if (stateUpdate.hasCh1()) {
            this.c.putBoolean("is_double_frequency_model", false);
            Editor editor2 = this.c;
            String str2 = "is_sos_model";
            if (stateUpdate.getCh1().getType() != CHTYPE.SOS) {
                z = false;
            }
            editor2.putBoolean(str2, z);
        } else if (stateUpdate.hasCh2()) {
            this.c.putBoolean("is_double_frequency_model", false);
            Editor editor3 = this.c;
            String str3 = "is_sos_model";
            if (stateUpdate.getCh2().getType() != CHTYPE.SOS) {
                z = false;
            }
            editor3.putBoolean(str3, z);
        }
        if (stateUpdate.hasStateMode()) {
            this.c.putInt("stateMode", stateUpdate.getStateMode().getNumber());
        }
        this.c.apply();
    }

    private void a(ParamUpdate paramUpdate) {
        boolean z = true;
        this.c = w.c().edit();
        try {
            if (paramUpdate.hasDeviceId()) {
                this.c.putString("deviceId", String.valueOf(paramUpdate.getDeviceId()));
            }
            if (paramUpdate.hasSosText()) {
                this.c.putString("sosText", new String(paramUpdate.getSosText().toByteArray(), StringUtils.GB2312));
            }
            if (paramUpdate.hasDevNameGBK()) {
                w.m(new String(paramUpdate.getDevNameGBK().toByteArray(), StringUtils.GB2312));
            }
            if (paramUpdate.hasVersionBLE()) {
                this.c.putInt("versionBLE", paramUpdate.getVersionBLE());
            }
            if (paramUpdate.hasVersionHW()) {
                this.c.putInt("versionHW", paramUpdate.getVersionHW());
            }
            if (paramUpdate.hasVersionMCU()) {
                this.c.putInt("versionMCU", paramUpdate.getVersionMCU());
            }
            if (paramUpdate.hasShareLoc()) {
                this.c.putBoolean("is_public_loc_info", paramUpdate.getShareLoc() != 0);
            }
            if (paramUpdate.hasStateMode()) {
                if (paramUpdate.getStateMode() == STATEMODE.SINGLE) {
                    this.c.putBoolean("is_double_frequency_model", false);
                } else if (paramUpdate.getStateMode() == STATEMODE.DOUBLE) {
                    this.c.putBoolean("is_double_frequency_model", true);
                }
                this.c.putInt("stateMode", paramUpdate.getStateMode().getNumber());
            }
            if (paramUpdate.hasLowPower()) {
                this.c.putBoolean("lowPower", paramUpdate.getLowPower() == POWERSTATE.PROHIBITEUPDATE);
            }
            if (paramUpdate.hasActivateChannel()) {
                if (paramUpdate.getActivateChannel() != 1) {
                    z = false;
                }
                w.p(z);
            }
            if (paramUpdate.hasLanguage()) {
                w.b(paramUpdate.getLanguage() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
            } else {
                w.b("mcu_language_type_chinese");
            }
            this.c.apply();
        } catch (UnsupportedEncodingException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    @Produce
    private StateUpdateEvent a(Command command) {
        return new StateUpdateEvent(command.getStateResp());
    }

    public void a(BeanUserLocation beanUserLocation) {
        a(2, (Message) d.a(Command.newBuilder(), beanUserLocation));
    }

    public void b() {
        a(1, (Message) d.a(Command.newBuilder()));
    }

    public void a(CHOPTION choption, UserChannel userChannel, UserChannel userChannel2) {
        a(1, (Message) d.a(Command.newBuilder(), userChannel, userChannel2, choption));
    }

    public void a(int i, String str) {
        a(1, (Message) d.a(Command.newBuilder(), i, str));
    }

    public void c(String str) {
        a(1, (Message) d.a(Command.newBuilder(), str));
    }

    public void a(STATEMODE statemode) {
        a(1, (Message) d.a(Command.newBuilder(), statemode));
    }

    public void a(int i) {
        a(1, (Message) d.a(Command.newBuilder(), i));
    }

    public void c() {
        a(1, (Message) d.b(Command.newBuilder()));
    }

    public void b(int i) {
        s.b("DataService", "onPttKeyEvent valueInt = " + i);
        if (BT_PUBLIC_MSG.BT_HF_CONNECTED.value() == i) {
            s.b("DataService", BT_PUBLIC_MSG.BT_HF_CONNECTED.name());
            c.a().e(BT_PUBLIC_MSG.BT_HF_CONNECTED);
        } else if (BT_PUBLIC_MSG.BT_HF_DISCONNECTED.value() == i) {
            s.b("DataService", BT_PUBLIC_MSG.BT_HF_DISCONNECTED.name());
            c.a().e(BT_PUBLIC_MSG.BT_HF_DISCONNECTED);
        } else if (BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO.value() == i) {
            s.b("DataService", BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO.name());
            c.a().e(BT_PUBLIC_MSG.BT_OPEN_PHONE_AUDIO);
        } else if (BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO.value() == i) {
            s.b("DataService", BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO.name());
            c.a().e(BT_PUBLIC_MSG.BT_CLOSE_PHONE_AUDIO);
        } else if (BT_PUBLIC_MSG.BT_HF_ACK.value() == i) {
            s.b("DataService", BT_PUBLIC_MSG.BT_HF_ACK.name());
            c.a().e(BT_PUBLIC_MSG.BT_HF_ACK);
        }
    }

    public void a(String str, m mVar) {
        s.a("DataService", "onSealCmdReceived");
        Message b2 = mVar.b();
        switch (mVar.a()) {
            case 20005:
                a(b2);
                return;
            case 20008:
                b(b2);
                return;
            case 20011:
                c(b2);
                return;
            case 20016:
                d(b2);
                return;
            case 20019:
                e(b2);
                return;
            case 20021:
                f(b2);
                return;
            case 20025:
                g(b2);
                return;
            default:
                return;
        }
    }

    private void a(Message message) {
        if (message instanceof SEAL_DeviceParam) {
            SEAL_DeviceParam sEAL_DeviceParam = (SEAL_DeviceParam) message;
            if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK || sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                a(sEAL_DeviceParam);
                if (sEAL_DeviceParam.hasShareLoc()) {
                    if (sEAL_DeviceParam.getShareLoc() == SEAL_SWITCH.SEAL_ON && ShareLocationService.a() == null) {
                        MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                    } else if (sEAL_DeviceParam.getShareLoc() == SEAL_SWITCH.SEAL_OFF && ShareLocationService.a() != null) {
                        MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                    }
                }
            }
            com.ifengyu.intercom.eventbus.a.a().c((Object) sEAL_DeviceParam);
            if (this.d != null) {
                this.d.a(sEAL_DeviceParam);
            }
        }
    }

    private void a(SEAL_DeviceParam sEAL_DeviceParam) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6 = true;
        if (sEAL_DeviceParam.hasVerHw()) {
            w.b(sEAL_DeviceParam.getVerHw());
        }
        if (sEAL_DeviceParam.hasVerSoft()) {
            w.c(sEAL_DeviceParam.getVerSoft());
        }
        try {
            if (sEAL_DeviceParam.hasDeviceName()) {
                w.m(new String(sEAL_DeviceParam.getDeviceName().toByteArray(), StringUtils.GB2312));
            }
        } catch (UnsupportedEncodingException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        if (sEAL_DeviceParam.hasActivate()) {
            if (sEAL_DeviceParam.getActivate() == 1) {
                z5 = true;
            } else {
                z5 = false;
            }
            w.p(z5);
        }
        if (sEAL_DeviceParam.hasShareLoc()) {
            if (sEAL_DeviceParam.getShareLoc() == SEAL_SWITCH.SEAL_ON) {
                z4 = true;
            } else {
                z4 = false;
            }
            w.c(z4);
        }
        if (sEAL_DeviceParam.hasBtAudio()) {
            w.d(sEAL_DeviceParam.getBtAudio());
        }
        if (sEAL_DeviceParam.hasVoiceAlert()) {
            if (sEAL_DeviceParam.getVoiceAlert() == SEAL_SWITCH.SEAL_ON) {
                z3 = true;
            } else {
                z3 = false;
            }
            w.d(z3);
        }
        if (sEAL_DeviceParam.hasIsAllPublic()) {
            if (sEAL_DeviceParam.getIsAllPublic() == SEAL_SWITCH.SEAL_ON) {
                z2 = true;
            } else {
                z2 = false;
            }
            w.e(z2);
        }
        if (sEAL_DeviceParam.hasPwsaveMode()) {
            w.e(sEAL_DeviceParam.getPwsaveMode());
        }
        if (sEAL_DeviceParam.hasVoiceType()) {
            w.f(sEAL_DeviceParam.getVoiceType().getNumber());
        }
        if (sEAL_DeviceParam.hasCh()) {
            SEAL_ChannelInfo ch = sEAL_DeviceParam.getCh();
            if (ch.hasChSq()) {
                w.h(ch.getChSq());
            }
            if (ch.hasChVox()) {
                w.g(ch.getChVox());
            }
            if (ch.hasChElim()) {
                if (ch.getChElim() == SEAL_SWITCH.SEAL_ON) {
                    z = true;
                } else {
                    z = false;
                }
                w.f(z);
            }
            if (ch.hasChBand()) {
                w.i(ch.getChBand());
            }
            if (ch.hasChPolite()) {
                if (ch.getChPolite() != SEAL_SWITCH.SEAL_ON) {
                    z6 = false;
                }
                w.g(z6);
            }
        }
    }

    private void b(Message message) {
        if (message instanceof SEAL_ChannelStateOperate) {
            SEAL_ChannelStateOperate sEAL_ChannelStateOperate = (SEAL_ChannelStateOperate) message;
            com.ifengyu.intercom.eventbus.a.a().c((Object) sEAL_ChannelStateOperate);
            if (sEAL_ChannelStateOperate.hasOption()) {
                a(sEAL_ChannelStateOperate);
            }
        }
    }

    private void a(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        switch (sEAL_ChannelStateOperate.getOption()) {
        }
    }

    private void c(Message message) {
        if (message instanceof SEAL_ChannelInfoOperate) {
            SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = (SEAL_ChannelInfoOperate) message;
            com.ifengyu.intercom.eventbus.a.a().c((Object) sEAL_ChannelInfoOperate);
            if (sEAL_ChannelInfoOperate.hasCh() && sEAL_ChannelInfoOperate.hasOption()) {
                a(sEAL_ChannelInfoOperate);
            }
        }
    }

    private void a(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SEAL_ChannelInfo ch = sEAL_ChannelInfoOperate.getCh();
        if (ch.getChType() == SEAL_CHTYPE.SEAL_USERDEF) {
            switch (sEAL_ChannelInfoOperate.getOption()) {
                case SEAL_CH_INSERT:
                case SEAL_CH_MODIFY:
                    if (sEAL_ChannelInfoOperate.getResult() == SEAL_CH_UERR.SEAL_CH_OK) {
                        this.f.insertOrReplace(aa.a(ch));
                        return;
                    }
                    return;
                case SEAL_CH_QUERY:
                    if (sEAL_ChannelInfoOperate.getResult() == SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE) {
                        this.f.insertOrReplace(aa.a(ch));
                        return;
                    }
                    return;
                case SEAL_CH_DELETE:
                    if (sEAL_ChannelInfoOperate.getResult() == SEAL_CH_UERR.SEAL_CH_OK) {
                        this.f.delete(aa.a(ch));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void d(Message message) {
        if (message instanceof SEAL_LocationInfo) {
            com.ifengyu.intercom.eventbus.a.a().c((Object) (SEAL_LocationInfo) message);
        }
    }

    private void e(Message message) {
        if (message instanceof SEAL_BtEarConnectState) {
            com.ifengyu.intercom.eventbus.a.a().c((Object) (SEAL_BtEarConnectState) message);
        }
    }

    private void f(Message message) {
        if (message instanceof SEAL_BtEarScanControl) {
            com.ifengyu.intercom.eventbus.a.a().c((Object) (SEAL_BtEarScanControl) message);
        }
    }

    private void g(Message message) {
        if (message instanceof SEAL_UserActionStatistics) {
            SEAL_UserActionStatistics sEAL_UserActionStatistics = (SEAL_UserActionStatistics) message;
            if (sEAL_UserActionStatistics.getPowerOn() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "powerOnCount", (long) sEAL_UserActionStatistics.getPowerOn());
            }
            if (sEAL_UserActionStatistics.getFactoryReset() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "factoryResetCount", (long) sEAL_UserActionStatistics.getFactoryReset());
            }
            if (sEAL_UserActionStatistics.getDeviceIdQuery() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "deviceIdQueryCount", (long) sEAL_UserActionStatistics.getDeviceIdQuery());
            }
            if (sEAL_UserActionStatistics.getKeyLock() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "keyLockCount", (long) sEAL_UserActionStatistics.getKeyLock());
            }
            if (sEAL_UserActionStatistics.getPowerLevelQuery() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "powerLevelQueryCount", (long) sEAL_UserActionStatistics.getPowerLevelQuery());
            }
            if (sEAL_UserActionStatistics.getFmOpen() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "fmOpenCount", (long) sEAL_UserActionStatistics.getFmOpen());
            }
            if (sEAL_UserActionStatistics.getConnBtEar() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_1S", "connBtEarCount", (long) sEAL_UserActionStatistics.getConnBtEar());
            }
        }
    }

    public void a(String str, n nVar) {
        s.a("DataService", "onSharkCmdReceived");
        Message b2 = nVar.b();
        switch (nVar.a()) {
            case 20005:
                h(b2);
                return;
            case 20008:
                i(b2);
                return;
            case 20011:
                j(b2);
                return;
            case 20016:
                k(b2);
                return;
            case 20025:
                l(b2);
                ab.c();
                return;
            default:
                return;
        }
    }

    private void h(Message message) {
        if (message instanceof SHARK_DeviceParam) {
            SHARK_DeviceParam sHARK_DeviceParam = (SHARK_DeviceParam) message;
            if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK || sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                a(sHARK_DeviceParam);
                if (sHARK_DeviceParam.hasShareLoc()) {
                    if (sHARK_DeviceParam.getShareLoc() == SHARK_SWITCH.SHARK_ON && ShareLocationService.a() == null) {
                        MiTalkiApp.a().startService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                    } else if (sHARK_DeviceParam.getShareLoc() == SHARK_SWITCH.SHARK_OFF && ShareLocationService.a() != null) {
                        MiTalkiApp.a().stopService(new Intent(MiTalkiApp.a(), ShareLocationService.class));
                    }
                }
            }
            com.ifengyu.intercom.eventbus.a.a().c((Object) sHARK_DeviceParam);
            if (this.d != null) {
                this.d.a(sHARK_DeviceParam);
            }
        }
    }

    private void a(SHARK_DeviceParam sHARK_DeviceParam) {
        boolean z;
        boolean z2 = true;
        if (sHARK_DeviceParam.hasVerHw()) {
            w.j(sHARK_DeviceParam.getVerHw());
        }
        if (sHARK_DeviceParam.hasVerSoft()) {
            w.k(sHARK_DeviceParam.getVerSoft());
        }
        try {
            if (sHARK_DeviceParam.hasDeviceName()) {
                w.m(new String(sHARK_DeviceParam.getDeviceName().toByteArray(), StringUtils.GB2312));
            }
        } catch (UnsupportedEncodingException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        if (sHARK_DeviceParam.hasActivate()) {
            if (sHARK_DeviceParam.getActivate() == 1) {
                z = true;
            } else {
                z = false;
            }
            w.p(z);
        }
        if (sHARK_DeviceParam.hasShareLoc()) {
            if (sHARK_DeviceParam.getShareLoc() != SHARK_SWITCH.SHARK_ON) {
                z2 = false;
            }
            w.j(z2);
        }
        if (sHARK_DeviceParam.hasCh()) {
            SHARK_ChannelInfo ch = sHARK_DeviceParam.getCh();
            if (ch.hasChTxPower()) {
                w.l(ch.getChTxPower());
            }
        }
    }

    private void i(Message message) {
        if (message instanceof SHARK_ChannelStateOperate) {
            SHARK_ChannelStateOperate sHARK_ChannelStateOperate = (SHARK_ChannelStateOperate) message;
            com.ifengyu.intercom.eventbus.a.a().c((Object) sHARK_ChannelStateOperate);
            if (sHARK_ChannelStateOperate.hasOption()) {
                a(sHARK_ChannelStateOperate);
            }
        }
    }

    private void a(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        switch (sHARK_ChannelStateOperate.getOption()) {
        }
    }

    private void j(Message message) {
        if (message instanceof SHARK_ChannelInfoOperate) {
            SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = (SHARK_ChannelInfoOperate) message;
            com.ifengyu.intercom.eventbus.a.a().c((Object) sHARK_ChannelInfoOperate);
            if (sHARK_ChannelInfoOperate.hasCh() && sHARK_ChannelInfoOperate.hasOption()) {
                a(sHARK_ChannelInfoOperate);
            }
        }
    }

    private void a(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        SHARK_ChannelInfo ch = sHARK_ChannelInfoOperate.getCh();
        if (ch.getChType() == SHARK_CHTYPE.SHARK_USERDEF) {
            switch (sHARK_ChannelInfoOperate.getOption()) {
                case SHARK_CH_INSERT:
                case SHARK_CH_MODIFY:
                    if (sHARK_ChannelInfoOperate.getResult() == SHARK_CH_UERR.SHARK_CH_OK) {
                        this.f.insertOrReplace(ab.a(ch));
                        return;
                    }
                    return;
                case SHARK_CH_QUERY:
                    if (sHARK_ChannelInfoOperate.getResult() == SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE) {
                        this.f.insertOrReplace(ab.a(ch));
                        return;
                    }
                    return;
                case SHARK_CH_DELETE:
                    if (sHARK_ChannelInfoOperate.getResult() == SHARK_CH_UERR.SHARK_CH_OK) {
                        this.f.delete(ab.a(ch));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void k(Message message) {
        if (message instanceof SHARK_LocationInfo) {
            com.ifengyu.intercom.eventbus.a.a().c((Object) (SHARK_LocationInfo) message);
        }
    }

    private void l(Message message) {
        if (message instanceof SHARK_UserActionStatistics) {
            SHARK_UserActionStatistics sHARK_UserActionStatistics = (SHARK_UserActionStatistics) message;
            if (sHARK_UserActionStatistics.getPowerOn() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "powerOnCount", (long) sHARK_UserActionStatistics.getPowerOn());
            }
            if (sHARK_UserActionStatistics.getAzimuthMap() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "azimuthMapCount", (long) sHARK_UserActionStatistics.getAzimuthMap());
            }
            if (sHARK_UserActionStatistics.getFmRadio() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "fmRadioCount", (long) sHARK_UserActionStatistics.getFmRadio());
            }
            if (sHARK_UserActionStatistics.getQuickTeam() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "quickTeamCount", (long) sHARK_UserActionStatistics.getQuickTeam());
            }
            if (sHARK_UserActionStatistics.getBluetoothDevice() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "bluetoothDeviceCount", (long) sHARK_UserActionStatistics.getBluetoothDevice());
            }
            if (sHARK_UserActionStatistics.getHandsFree() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "handsFreeCount", (long) sHARK_UserActionStatistics.getHandsFree());
            }
            if (sHARK_UserActionStatistics.getChannelScan() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "channelScanCount", (long) sHARK_UserActionStatistics.getChannelScan());
            }
            if (sHARK_UserActionStatistics.getDoubleFreq() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "doubleFreqCount", (long) sHARK_UserActionStatistics.getDoubleFreq());
            }
            if (sHARK_UserActionStatistics.getSosMode() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "sosModeCount", (long) sHARK_UserActionStatistics.getSosMode());
            }
            if (sHARK_UserActionStatistics.getPowerLevel() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "powerLevelCount", (long) sHARK_UserActionStatistics.getPowerLevel());
            }
            if (sHARK_UserActionStatistics.getBusyLock() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "busyLockCount", (long) sHARK_UserActionStatistics.getBusyLock());
            }
            if (sHARK_UserActionStatistics.getSquelchTail() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "squelchTailCount", (long) sHARK_UserActionStatistics.getSquelchTail());
            }
            if (sHARK_UserActionStatistics.getWideNarrow() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "wideNarrowCount", (long) sHARK_UserActionStatistics.getWideNarrow());
            }
            if (sHARK_UserActionStatistics.getRestoreFactory() > 0) {
                MiStatInterface.recordCalculateEvent("Device_Mi_PTT_2", "restoreFactoryCount", (long) sHARK_UserActionStatistics.getRestoreFactory());
            }
        }
    }

    public void a(String str, c cVar) {
    }

    private boolean a(int i, Message message) {
        try {
            if (this.a != null) {
                this.a.a(i, SendDataWrap.a(1, message, -1));
                return true;
            }
            s.d("DataService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e2) {
            s.b("DataService", "Got exception while sending Data, ", e2);
        }
    }

    public boolean a(SendDataWrap sendDataWrap) {
        try {
            if (this.a != null) {
                this.a.a(1, sendDataWrap);
                return true;
            }
            s.d("DataService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e2) {
            s.b("DataService", "Got exception while sending Data, ", e2);
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public void d() {
        this.d = null;
    }
}
