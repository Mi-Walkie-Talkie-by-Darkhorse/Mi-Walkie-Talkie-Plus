package com.ifengyu.intercom.device.oldDevice;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.MapView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.lite.LiteUpgradeActivity;
import com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity;
import com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateManager;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.OnCheckDolphinUpdateCallback;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.device.oldDevice.sealshark.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelSettingActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.GlobalDialogUtil;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.PopupUtils;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.GaoDeMapToolOperateActivity;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.base.old.BaseHandler;
import com.ifengyu.intercom.p216ui.p218c.GaoDeMapOperate;
import com.ifengyu.intercom.p216ui.widget.view.ShadowLayout;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4972m;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.squareup.otto.Subscribe;
import com.xiaomi.mipush.sdk.Constants;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import p048b.p076e.p077a.RxPermissions;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class BleDeviceMapActivity extends BaseActivity1 implements View.OnClickListener, OnCheckDolphinUpdateCallback {

    /* renamed from: B */
    private Disposable f12735B;

    /* renamed from: C */
    private String f12736C;
    @BindView(R.id.bottom_channel_display_layout)
    ShadowLayout bottomChannelLayout;
    @BindView(R.id.bottom_channel_layout_name)
    TextView bottomChannelName;
    @BindView(R.id.bottom_channel_layout_number)
    TextView bottomChannelNumber;

    /* renamed from: j */
    private PopupWindow f12737j;

    /* renamed from: k */
    private PopupWindow f12738k;

    /* renamed from: l */
    private TranslateAnimation f12739l;
    @BindView(R.id.map_icon_location_share_iv)
    ImageView locationShareIV;

    /* renamed from: m */
    private GaoDeMapOperate f12740m;
    @BindView(R.id.map_kit_iv)
    TextView mapKitBtn;
    @BindView(R.id.map_switch_type_btn)
    TextView mapSwitchTypeBtn;
    @BindView(R.id.mapView)
    MapView mapView;
    @BindView(R.id.top_have_mcu_update_close)
    ImageView mcuHaveUpdateCloseBtn;
    @BindView(R.id.top_have_mcu_update_layout)
    ShadowLayout mcuHaveUpdateLayout;
    @BindView(R.id.top_mcu_update_tv)
    TextView mcuHaveUpdateTV;
    @BindView(R.id.top_mcu_update_immediately)
    TextView mcuUpdateImmediatelyBtn;
    @BindView(R.id.map_icon_my_locate_iv)
    ImageView myLocateIV;

    /* renamed from: n */
    private ImageView f12741n;

    /* renamed from: o */
    private ImageView f12742o;

    /* renamed from: p */
    private TextView f12743p;

    /* renamed from: q */
    private TextView f12744q;

    /* renamed from: t */
    private VersionInfo f12747t;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_right)
    ImageView titleBarRight;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;

    /* renamed from: v */
    private SealSharkChannelModel f12749v;

    /* renamed from: w */
    private int f12750w;

    /* renamed from: x */
    private QMUIDialog f12751x;

    /* renamed from: y */
    private QMUIDialog f12752y;
    @BindView(R.id.map_icon_zoom_big_iv)
    ImageView zoomBigIV;
    @BindView(R.id.map_icon_zoom_small_iv)
    ImageView zoomSmallIV;

    /* renamed from: r */
    private boolean f12745r = true;

    /* renamed from: s */
    private boolean f12746s = true;

    /* renamed from: u */
    private int f12748u = -1;

    /* renamed from: z */
    private boolean f12753z = false;

    /* renamed from: A */
    private HandlerC3519o f12734A = new HandlerC3519o(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$a */
    /* loaded from: classes2.dex */
    public class C3504a implements PopupWindow.OnDismissListener {
        C3504a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            BleDeviceMapActivity bleDeviceMapActivity = BleDeviceMapActivity.this;
            PopupUtils.m11170b(bleDeviceMapActivity, bleDeviceMapActivity.f12737j, 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$b */
    /* loaded from: classes2.dex */
    public class RunnableC3505b implements Runnable {
        RunnableC3505b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BleDeviceMapActivity.this.locationShareIV.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$c */
    /* loaded from: classes2.dex */
    public class C3506c implements BaseActivity1.InterfaceC4462d {
        C3506c() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: a */
        public void mo10270a() {
            String m11211g = MiTalkClientUtil.m11211g();
            if (TextUtils.isEmpty(m11211g)) {
                return;
            }
            BleDeviceMapActivity.this.m13364U(m11211g);
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: b */
        public void mo10269b() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: c */
        public void mo10268c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$d */
    /* loaded from: classes2.dex */
    public class C3507d extends ErrorConsumer {
        C3507d(BleDeviceMapActivity bleDeviceMapActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("BleDeviceMapActivity", "activateDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$e */
    /* loaded from: classes2.dex */
    public class RunnableC3508e implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$e$a */
        /* loaded from: classes2.dex */
        class RunnableC3509a implements Runnable {
            RunnableC3509a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BleDeviceMapActivity.this.m10283n();
                BaseActivity1.InterfaceC4462d interfaceC4462d = BleDeviceMapActivity.this.f15062h;
                if (interfaceC4462d != null) {
                    interfaceC4462d.mo10270a();
                }
            }
        }

        RunnableC3508e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BleDeviceMapActivity.this.m10277t(R.drawable.load_success);
            BleDeviceMapActivity.this.m10276u(R.string.activation_successful);
            UIUtils.m8599s(new RunnableC3509a(), 800L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$f */
    /* loaded from: classes2.dex */
    public class C3510f extends ErrorConsumer {
        C3510f(BleDeviceMapActivity bleDeviceMapActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$g */
    /* loaded from: classes2.dex */
    public class C3511g extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ DeviceModel f12759a;

        C3511g(DeviceModel deviceModel) {
            this.f12759a = deviceModel;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            BleDeviceMapActivity.this.m13360W(this.f12759a.getDeviceType());
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$h */
    /* loaded from: classes2.dex */
    class RunnableC3512h implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f12761a;

        RunnableC3512h(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f12761a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            BleDeviceMapActivity.this.m13363U0();
            if (BleDeviceMapActivity.this.f12753z && this.f12761a.hasCh() && this.f12761a.getCh().getChVox() > 0) {
                BleDeviceMapActivity.this.f12753z = false;
                GlobalDialogUtil.m11067a().m11061g();
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$i */
    /* loaded from: classes2.dex */
    class RunnableC3513i implements Runnable {
        RunnableC3513i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BleDeviceMapActivity.this.m13363U0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$j */
    /* loaded from: classes2.dex */
    public class C3514j extends ErrorConsumer {
        C3514j(BleDeviceMapActivity bleDeviceMapActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("BleDeviceMapActivity", "uploadInterPhoneInfo fail");
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$k */
    /* loaded from: classes2.dex */
    class RunnableC3515k implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f12764a;

        RunnableC3515k(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f12764a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f12764a.hasResult() && this.f12764a.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK && this.f12764a.hasCh1()) {
                SealProtos.SEAL_ChannelInfo ch1 = this.f12764a.getCh1();
                if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                    BleDeviceMapActivity.this.f12749v = BleChannelUtils.m11815f(ch1);
                    if (BleDeviceMapActivity.this.f12749v != null) {
                        if (BleDeviceMapActivity.this.f12749v.isStChannel()) {
                            BleDeviceMapActivity bleDeviceMapActivity = BleDeviceMapActivity.this;
                            bleDeviceMapActivity.bottomChannelName.setText(bleDeviceMapActivity.f12749v.getName());
                            BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(17.0f);
                            BleDeviceMapActivity bleDeviceMapActivity2 = BleDeviceMapActivity.this;
                            bleDeviceMapActivity2.bottomChannelNumber.setText(MethodsUtils.m11290j(bleDeviceMapActivity2.f12749v.getRxFreq()));
                            return;
                        }
                        String format = String.format(Locale.getDefault(), "C%02d", Integer.valueOf(BleDeviceMapActivity.this.f12749v.getNo() + 1));
                        if (BleDeviceMapActivity.this.f12749v.getName().trim().length() == 0) {
                            BleDeviceMapActivity.this.bottomChannelName.setText(format);
                        } else {
                            TextView textView = BleDeviceMapActivity.this.bottomChannelName;
                            textView.setText(format + " " + BleDeviceMapActivity.this.f12749v.getName().trim());
                        }
                        BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(17.0f);
                        BleDeviceMapActivity bleDeviceMapActivity3 = BleDeviceMapActivity.this;
                        bleDeviceMapActivity3.bottomChannelNumber.setText(MethodsUtils.m11290j(bleDeviceMapActivity3.f12749v.getRxFreq()));
                    }
                }
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$l */
    /* loaded from: classes2.dex */
    class RunnableC3516l implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f12766a;

        RunnableC3516l(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f12766a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSharkChannelModel m11814g;
            if (this.f12766a.hasResult() && this.f12766a.getResult() == SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK && this.f12766a.hasDeviceMode()) {
                BleDeviceMapActivity.this.f12748u = this.f12766a.getDeviceMode().getNumber();
                if (BleDeviceMapActivity.this.f12748u != SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                    if (BleDeviceMapActivity.this.f12748u != 1 && BleDeviceMapActivity.this.f12748u != 2) {
                        int i = BleDeviceMapActivity.this.f12748u;
                        if (i == 3 || i == 4) {
                            BleDeviceMapActivity bleDeviceMapActivity = BleDeviceMapActivity.this;
                            bleDeviceMapActivity.bottomChannelName.setText(bleDeviceMapActivity.getString(R.string.device_mode_channel_scan));
                            BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(15.0f);
                            BleDeviceMapActivity bleDeviceMapActivity2 = BleDeviceMapActivity.this;
                            bleDeviceMapActivity2.bottomChannelNumber.setText(bleDeviceMapActivity2.getString(R.string.device_mode_channel_scan_ing_describe));
                        } else if (i == 5 || i == 6) {
                            BleDeviceMapActivity bleDeviceMapActivity3 = BleDeviceMapActivity.this;
                            bleDeviceMapActivity3.bottomChannelName.setText(bleDeviceMapActivity3.getString(R.string.device_mode_team));
                            BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(15.0f);
                            BleDeviceMapActivity bleDeviceMapActivity4 = BleDeviceMapActivity.this;
                            bleDeviceMapActivity4.bottomChannelNumber.setText(bleDeviceMapActivity4.getString(R.string.device_mode_team_ing_describe));
                        }
                    } else if (this.f12766a.hasCh1() && this.f12766a.hasCh2() && (m11814g = BleChannelUtils.m11814g(this.f12766a.getCh1())) != null) {
                        BleDeviceMapActivity.this.bottomChannelName.setText(m11814g.getName());
                        BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(17.0f);
                        BleDeviceMapActivity.this.bottomChannelNumber.setText(MethodsUtils.m11290j(m11814g.getRxFreq()));
                    }
                } else if (this.f12766a.hasStateMode()) {
                    int stateMode = this.f12766a.getStateMode();
                    if (stateMode == 1) {
                        if (this.f12766a.hasCh1()) {
                            BleDeviceMapActivity.this.f12749v = BleChannelUtils.m11814g(this.f12766a.getCh1());
                            BleDeviceMapActivity.this.f12750w = 1;
                        } else if (this.f12766a.hasCh2()) {
                            BleDeviceMapActivity.this.f12749v = BleChannelUtils.m11814g(this.f12766a.getCh2());
                            BleDeviceMapActivity.this.f12750w = 2;
                        }
                        BleDeviceMapActivity bleDeviceMapActivity5 = BleDeviceMapActivity.this;
                        bleDeviceMapActivity5.bottomChannelName.setText(bleDeviceMapActivity5.f12749v.getName());
                        BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(17.0f);
                        BleDeviceMapActivity bleDeviceMapActivity6 = BleDeviceMapActivity.this;
                        bleDeviceMapActivity6.bottomChannelNumber.setText(MethodsUtils.m11290j(bleDeviceMapActivity6.f12749v.getRxFreq()));
                    } else if (stateMode == 2) {
                        if (this.f12766a.getCurrentChId() == 2) {
                            BleDeviceMapActivity.this.f12749v = BleChannelUtils.m11814g(this.f12766a.getCh2());
                            BleDeviceMapActivity.this.f12750w = 2;
                        } else {
                            BleDeviceMapActivity.this.f12749v = BleChannelUtils.m11814g(this.f12766a.getCh1());
                            BleDeviceMapActivity.this.f12750w = 1;
                        }
                        BleDeviceMapActivity bleDeviceMapActivity7 = BleDeviceMapActivity.this;
                        bleDeviceMapActivity7.bottomChannelName.setText(bleDeviceMapActivity7.f12749v.getName());
                        BleDeviceMapActivity.this.bottomChannelNumber.setTextSize(17.0f);
                        BleDeviceMapActivity bleDeviceMapActivity8 = BleDeviceMapActivity.this;
                        bleDeviceMapActivity8.bottomChannelNumber.setText(MethodsUtils.m11290j(bleDeviceMapActivity8.f12749v.getRxFreq()));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$m  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class animationAnimation$AnimationListenerC3517m implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3517m() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (BleDeviceMapActivity.this.mcuHaveUpdateLayout.getVisibility() == 0) {
                BleDeviceMapActivity.this.mcuHaveUpdateLayout.clearAnimation();
                BleDeviceMapActivity.this.mcuHaveUpdateLayout.setVisibility(8);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$n */
    /* loaded from: classes2.dex */
    public class C3518n implements PopupWindow.OnDismissListener {
        C3518n() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            BleDeviceMapActivity bleDeviceMapActivity = BleDeviceMapActivity.this;
            PopupUtils.m11170b(bleDeviceMapActivity, bleDeviceMapActivity.f12738k, 0.6f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$o */
    /* loaded from: classes2.dex */
    public static class HandlerC3519o extends BaseHandler<BleDeviceMapActivity> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$o$a */
        /* loaded from: classes2.dex */
        public class RunnableC3520a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ BleDeviceMapActivity f12770a;

            RunnableC3520a(HandlerC3519o handlerC3519o, BleDeviceMapActivity bleDeviceMapActivity) {
                this.f12770a = bleDeviceMapActivity;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f12770a.m10283n();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity$o$b */
        /* loaded from: classes2.dex */
        public class RunnableC3521b implements Runnable {

            /* renamed from: a */
            final /* synthetic */ BleDeviceMapActivity f12771a;

            RunnableC3521b(HandlerC3519o handlerC3519o, BleDeviceMapActivity bleDeviceMapActivity) {
                this.f12771a = bleDeviceMapActivity;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f12771a.m10283n();
            }
        }

        public HandlerC3519o(BleDeviceMapActivity bleDeviceMapActivity) {
            super(bleDeviceMapActivity);
        }

        /* renamed from: b */
        private void m13319b(Message message, final BleDeviceMapActivity bleDeviceMapActivity) {
            int i = message.arg1;
            if (i == 1) {
                DolphinUpdateManager.m13109f().m13111d(true, message.arg2);
            } else if (i == 4) {
                AppServiceClient.m11355a().m11387T("shark", MiTalkClientUtil.m11251L(), MiTalkClientUtil.m11253K(), "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.d
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        BleDeviceMapActivity.HandlerC3519o.m13313h(BleDeviceMapActivity.this, (VersionInfo) obj);
                    }
                }, C3832t.f13623a);
            } else if (i != 5) {
            } else {
                AppServiceClient.m11355a().m11387T("seal", MiTalkClientUtil.m11265E(), MiTalkClientUtil.m11267D(), "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.c
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        BleDeviceMapActivity.HandlerC3519o.m13314g(BleDeviceMapActivity.this, (VersionInfo) obj);
                    }
                }, C3832t.f13623a);
            }
        }

        /* renamed from: c */
        private void m13318c(BleDeviceMapActivity bleDeviceMapActivity) {
            if (MiTalkClientUtil.m11218c0()) {
                bleDeviceMapActivity.titleBarRight.setImageResource(R.drawable.home_icon_set_news);
            }
            bleDeviceMapActivity.mcuHaveUpdateLayout.setVisibility(0);
            bleDeviceMapActivity.mcuUpdateImmediatelyBtn.setClickable(true);
            bleDeviceMapActivity.mcuHaveUpdateCloseBtn.setClickable(true);
            int m11191q = MiTalkClientUtil.m11191q();
            if (m11191q != 1) {
                if (m11191q != 4) {
                    if (m11191q != 5) {
                        return;
                    }
                    bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_mcu_update_please_update));
                }
                bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_mcu_update_please_update));
            } else if (MethodsUtils.m11297c()) {
                if (MiTalkClientUtil.m11209h().equals("mcu_language_type_english")) {
                    bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_mcu_update_please_update));
                } else {
                    bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_different_language_update));
                }
            } else if (MethodsUtils.m11296d()) {
                if (MiTalkClientUtil.m11209h().equals("mcu_language_type_chinese")) {
                    bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_mcu_update_please_update));
                } else {
                    bleDeviceMapActivity.mcuHaveUpdateTV.setText(UIUtils.m8603o(R.string.have_different_language_update));
                }
            }
        }

        /* renamed from: e */
        private void m13316e(BleDeviceMapActivity bleDeviceMapActivity) {
            if ((bleDeviceMapActivity.titleBarRight != null) & (bleDeviceMapActivity.locationShareIV != null)) {
                bleDeviceMapActivity.titleBarTitle.setText(MiTalkClientUtil.m11193p());
                bleDeviceMapActivity.titleBarRight.setVisibility(0);
                if (MiTalkClientUtil.m11191q() == 9) {
                    bleDeviceMapActivity.locationShareIV.setVisibility(8);
                } else {
                    bleDeviceMapActivity.locationShareIV.setVisibility(0);
                }
                int m11191q = MiTalkClientUtil.m11191q();
                if (m11191q != 5 && m11191q != 4) {
                    bleDeviceMapActivity.bottomChannelLayout.setVisibility(8);
                } else {
                    bleDeviceMapActivity.bottomChannelLayout.setVisibility(0);
                }
                bleDeviceMapActivity.m13348c0();
            }
            if (bleDeviceMapActivity.f12740m != null) {
                bleDeviceMapActivity.f12740m.m10241t();
            }
        }

        /* renamed from: f */
        private void m13315f(Message message, BleDeviceMapActivity bleDeviceMapActivity) {
            if (message.arg2 == 9 || MiTalkClientUtil.m11191q() != 9) {
                if ((bleDeviceMapActivity.titleBarRight != null) & (bleDeviceMapActivity.locationShareIV != null)) {
                    bleDeviceMapActivity.titleBarTitle.setText(R.string.device_not_connected);
                    bleDeviceMapActivity.titleBarRight.setVisibility(8);
                    bleDeviceMapActivity.locationShareIV.setVisibility(8);
                    bleDeviceMapActivity.bottomChannelLayout.setVisibility(8);
                    bleDeviceMapActivity.mcuHaveUpdateLayout.clearAnimation();
                    bleDeviceMapActivity.mcuHaveUpdateLayout.setVisibility(8);
                    bleDeviceMapActivity.m13349b1();
                }
                if (bleDeviceMapActivity.f12740m != null) {
                    bleDeviceMapActivity.f12740m.m10240u();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: g */
        public static /* synthetic */ void m13314g(BleDeviceMapActivity bleDeviceMapActivity, VersionInfo versionInfo) throws Exception {
            if (versionInfo.isHasNewVersion()) {
                MiTalkClientUtil.m11254J0(true);
                bleDeviceMapActivity.f12734A.sendEmptyMessage(2);
                bleDeviceMapActivity.f12747t = versionInfo;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: h */
        public static /* synthetic */ void m13313h(BleDeviceMapActivity bleDeviceMapActivity, VersionInfo versionInfo) throws Exception {
            if (versionInfo.isHasNewVersion()) {
                MiTalkClientUtil.m11234T0(true);
                bleDeviceMapActivity.f12734A.sendEmptyMessage(2);
                bleDeviceMapActivity.f12747t = versionInfo;
            }
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseHandler
        /* renamed from: d */
        public void mo10264a(Message message, BleDeviceMapActivity bleDeviceMapActivity) {
            switch (message.what) {
                case 1:
                    m13319b(message, bleDeviceMapActivity);
                    return;
                case 2:
                    m13318c(bleDeviceMapActivity);
                    return;
                case 3:
                    ImageView imageView = bleDeviceMapActivity.locationShareIV;
                    if (imageView != null) {
                        imageView.setImageResource(R.drawable.home_icon_position_open);
                    }
                    bleDeviceMapActivity.m10275v(bleDeviceMapActivity.getString(R.string.share_location_opened));
                    bleDeviceMapActivity.m10277t(R.drawable.load_success);
                    BaseApp.m8713a().postDelayed(new RunnableC3520a(this, bleDeviceMapActivity), 500L);
                    return;
                case 4:
                    ImageView imageView2 = bleDeviceMapActivity.locationShareIV;
                    if (imageView2 != null) {
                        imageView2.setImageResource(R.drawable.home_icon_position);
                    }
                    bleDeviceMapActivity.m10275v(bleDeviceMapActivity.getString(R.string.share_location_closed));
                    bleDeviceMapActivity.m10277t(R.drawable.load_success);
                    BaseApp.m8713a().postDelayed(new RunnableC3521b(this, bleDeviceMapActivity), 500L);
                    return;
                case 5:
                    try {
                        m13316e(bleDeviceMapActivity);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 6:
                    try {
                        m13315f(message, bleDeviceMapActivity);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B0 */
    public /* synthetic */ void m13395C0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D0 */
    public /* synthetic */ void m13393E0(DeviceModel deviceModel, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        int deviceType = deviceModel.getDeviceType();
        UserPrivacyReportUtil.m11157b(DeviceConstants.m11982a(deviceType), deviceModel.getDeviceId());
        m13352a0(deviceType);
        m13360W(deviceType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public /* synthetic */ void m13389G0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m13385I0(String str, DeviceModel deviceModel, int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11157b(str, deviceModel.getDeviceId());
        UserPrivacyReportUtil.m11135x(i, this.f12736C);
        m13360W(deviceModel.getDeviceType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public /* synthetic */ void m13381K0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        startActivity(new Intent(this, MainActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ void m13377M0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public /* synthetic */ void m13372P0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("BleDeviceMapActivity", "uploadInterPhoneInfo success");
        if (BleCoreClient.m12373n().m12381f(this.f12736C) != null) {
            BleCoreClient.m12373n().m12381f(this.f12736C).m11984j0(false);
        }
    }

    /* renamed from: Q0 */
    private void m13371Q0() {
        boolean m14282v = MiTalkiApp.m14296h().m14282v();
        MiTalkiApp.m14296h().m14302H(!m14282v);
        this.myLocateIV.setImageResource(!m14282v ? R.drawable.home_icon_location_open : R.drawable.home_icon_location);
        this.f12740m.m10247n(!m14282v);
    }

    /* renamed from: R0 */
    private void m13369R0(int i) {
        if (i == 1) {
            this.f12741n.setImageResource(R.drawable.map_gaode_standard_selected);
            this.f12743p.setTextColor(getResources().getColor(R.color.select_color));
            this.f12742o.setImageResource(R.drawable.map_gaode_satellite_unselected);
            this.f12744q.setTextColor(getResources().getColor(R.color.black80));
        } else if (i != 2) {
        } else {
            this.f12741n.setImageResource(R.drawable.map_gaode_standard_unselected);
            this.f12743p.setTextColor(getResources().getColor(R.color.black80));
            this.f12742o.setImageResource(R.drawable.map_gaode_satellite_selected);
            this.f12744q.setTextColor(getResources().getColor(R.color.select_color));
        }
    }

    /* renamed from: T0 */
    private void m13365T0() {
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q == 1) {
            BleCoreClient.m12373n().m12378i(this.f12736C).m12317p1();
        } else if (m11191q == 4) {
            BleCoreClient.m12373n().m12374m(this.f12736C).m12035k1();
        } else if (m11191q != 5) {
        } else {
            BleCoreClient.m12373n().m12375l(this.f12736C).m12088r1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: U */
    public void m13364U(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 1);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3613h.f13053a, new C3507d(this));
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: V */
    private void m13362V() {
        Observable.just(this.f12736C).map(C3621n.f13064a).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13334k0((DeviceModel) obj);
            }
        }, C3832t.f13623a);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: V0 */
    private void m13361V0() {
        new RxPermissions(this).m21013l("android.permission.ACCESS_FINE_LOCATION").subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13324v0((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m13360W(int i) {
        if (this.f12746s) {
            this.f12746s = false;
            boolean z = true;
            if (i == 1) {
                z = BleCoreClient.m12373n().m12378i(this.f12736C).m12361D0();
            } else if (i == 4) {
                z = BleCoreClient.m12373n().m12374m(this.f12736C).m12071A0();
            } else if (i == 5) {
                z = BleCoreClient.m12373n().m12375l(this.f12736C).m12143C0();
            }
            if (z) {
                return;
            }
            m10289B(new C3506c());
        }
    }

    /* renamed from: W0 */
    private void m13359W0(int i, int i2) {
        if (this.f12745r) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.arg1 = i;
            obtain.arg2 = i2;
            this.f12734A.sendMessage(obtain);
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: X */
    private void m13358X(final DeviceModel deviceModel) {
        AppServiceClient.m11355a().m11396K(DeviceConstants.m11982a(deviceModel.getDeviceType())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13332m0((Disposable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13330o0(deviceModel, (PrivacyInfoEntity) obj);
            }
        }, new C3511g(deviceModel));
    }

    /* renamed from: X0 */
    private void m13357X0() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_location_permission).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.device.oldDevice.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BleDeviceMapActivity.this.m13322x0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: Y */
    private void m13356Y() {
        m13369R0(1);
        this.f12740m.m10235z();
        MiTalkClientUtil.m11208h0(1);
        this.f12737j.dismiss();
    }

    /* renamed from: Y0 */
    private void m13355Y0() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.after_refuse_location_permission).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_to_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.device.oldDevice.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BleDeviceMapActivity.this.m13320z0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: Z */
    private void m13354Z() {
        m13369R0(2);
        this.f12740m.m10263A();
        MiTalkClientUtil.m11208h0(2);
        this.f12737j.dismiss();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: Z0 */
    private void m13353Z0(final DeviceModel deviceModel) {
        QMUIDialog qMUIDialog = this.f12752y;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
            messageDialogBuilder.m7286t(false);
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7285u(false);
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7282x(R.string.dialog_privacy_policy_title);
            MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
            messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11146m(DeviceConstants.m11982a(deviceModel.getDeviceType())));
            messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.g
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog2, int i) {
                    BleDeviceMapActivity.this.m13395C0(qMUIDialog2, i);
                }
            });
            MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
            messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.l
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog2, int i) {
                    BleDeviceMapActivity.this.m13393E0(deviceModel, qMUIDialog2, i);
                }
            });
            QMUIDialog m7296f = messageDialogBuilder5.m7296f(R.style.DialogTheme1);
            this.f12752y = m7296f;
            try {
                m7296f.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: a0 */
    private void m13352a0(int i) {
        String m11982a = DeviceConstants.m11982a(i);
        if (TextUtils.isEmpty(m11982a)) {
            return;
        }
        AppServiceClient.m11355a().m11396K(m11982a).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13328q0((PrivacyInfoEntity) obj);
            }
        }, new C3510f(this));
    }

    /* renamed from: a1 */
    private void m13351a1(final DeviceModel deviceModel, final int i) {
        QMUIDialog qMUIDialog = this.f12752y;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            final String m11982a = DeviceConstants.m11982a(deviceModel.getDeviceType());
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
            messageDialogBuilder.m7286t(false);
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7285u(false);
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7282x(R.string.user_protocol_updated);
            MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
            messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11145n(m11982a));
            messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.k
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog2, int i2) {
                    BleDeviceMapActivity.this.m13389G0(qMUIDialog2, i2);
                }
            });
            MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
            messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.e
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog2, int i2) {
                    BleDeviceMapActivity.this.m13385I0(m11982a, deviceModel, i, qMUIDialog2, i2);
                }
            });
            QMUIDialog m7296f = messageDialogBuilder5.m7296f(R.style.DialogTheme1);
            this.f12752y = m7296f;
            try {
                m7296f.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b0 */
    private void m13350b0() {
        BaseApp.m8713a().post(new RunnableC3508e());
    }

    /* renamed from: c1 */
    private void m13347c1() {
        View inflate = View.inflate(this, R.layout.map_tool_kit_layout, null);
        inflate.findViewById(R.id.map_kit_ranging_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_altitude_btn_layout).setOnClickListener(this);
        inflate.findViewById(R.id.map_kit_latandlong_btn_layout).setOnClickListener(this);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.f12738k = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.f12738k.setFocusable(true);
        this.f12738k.setOutsideTouchable(true);
        this.f12738k.setBackgroundDrawable(new ColorDrawable(0));
        this.f12738k.setOnDismissListener(new C3518n());
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        Variables.m12426c(this);
        this.f12738k.showAtLocation(this.mapKitBtn, 0, (Variables.f13702a / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        PopupUtils.m11170b(this, this.f12738k, 0.6f);
    }

    /* renamed from: d0 */
    private void m13346d0() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, -1.0f);
        this.f12739l = translateAnimation;
        translateAnimation.setDuration(500L);
        this.f12739l.setAnimationListener(new animationAnimation$AnimationListenerC3517m());
    }

    /* renamed from: e0 */
    private void m13345e0() {
        this.titleBarLeft.setOnClickListener(this);
        this.titleBarRight.setOnClickListener(this);
        this.locationShareIV.setOnClickListener(this);
        this.zoomBigIV.setOnClickListener(this);
        this.zoomSmallIV.setOnClickListener(this);
        this.myLocateIV.setOnClickListener(this);
        this.mapKitBtn.setOnClickListener(this);
        this.mapSwitchTypeBtn.setOnClickListener(this);
        this.mcuUpdateImmediatelyBtn.setOnClickListener(this);
        this.mcuHaveUpdateCloseBtn.setOnClickListener(this);
        this.bottomChannelLayout.setOnClickListener(this);
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13326t0((ConnectStateEvent) obj);
            }
        });
    }

    /* renamed from: e1 */
    private void m13344e1() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.pls_open_location_service_at_setting_when_use_map).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_to_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.device.oldDevice.p
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BleDeviceMapActivity.this.m13377M0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: f0 */
    private void m13343f0(Bundle bundle) {
        GaoDeMapOperate gaoDeMapOperate = new GaoDeMapOperate(this, this.mapView);
        this.f12740m = gaoDeMapOperate;
        gaoDeMapOperate.m10246o(bundle);
        this.f12740m.m10256e(true);
    }

    /* renamed from: f1 */
    private void m13342f1() {
        View inflate = View.inflate(this, R.layout.map_switch_mode_layout, null);
        this.f12741n = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_normal);
        this.f12743p = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_normal_tv);
        this.f12742o = (ImageView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite);
        this.f12744q = (TextView) inflate.findViewById(R.id.map_switch_mode_gaode_satellite_tv);
        this.f12741n.setOnClickListener(this);
        this.f12742o.setOnClickListener(this);
        if (this.f12740m.m10259b() == 1) {
            m13369R0(1);
        } else {
            m13369R0(2);
        }
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.f12737j = popupWindow;
        popupWindow.setAnimationStyle(R.style.Animation_Popup_Window_Tool);
        this.f12737j.setFocusable(true);
        this.f12737j.setOutsideTouchable(true);
        this.f12737j.setBackgroundDrawable(new ColorDrawable(0));
        this.f12737j.setOnDismissListener(new C3504a());
        int[] iArr = new int[2];
        this.mapKitBtn.getLocationOnScreen(iArr);
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        Variables.m12426c(this);
        this.f12737j.showAtLocation(this.mapKitBtn, 0, (Variables.f13702a / 2) - (inflate.getMeasuredWidth() / 2), iArr[1]);
        PopupUtils.m11170b(this, this.f12737j, 0.6f);
    }

    /* renamed from: g0 */
    private void m13341g0() {
        this.bottomChannelNumber.setTypeface(AppConstants.f13909c);
        if (!MethodsUtils.m11296d()) {
            this.mapKitBtn.setTextSize(8.0f);
            this.mapSwitchTypeBtn.setTextSize(8.0f);
        }
        this.myLocateIV.setImageResource(MiTalkiApp.m14296h().m14282v() ? R.drawable.home_icon_location_open : R.drawable.home_icon_location);
    }

    /* renamed from: g1 */
    private void m13340g1() {
        this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
        MiTalkClientUtil.m11176x0(false);
        if (BleCoreClient.m12373n().m12372o(this.f12736C)) {
            Intent intent = new Intent();
            intent.putExtra("device_mac_address", this.f12736C);
            int m11191q = MiTalkClientUtil.m11191q();
            if (m11191q == 1) {
                intent.setClass(this, DolphinSettingActivity.class);
            } else if (m11191q == 4) {
                intent.setClass(this, SharkSettingActivity.class);
            } else if (m11191q == 5) {
                intent.setClass(this, SealSettingActivity.class);
            }
            startActivity(intent);
        }
    }

    /* renamed from: h1 */
    private void m13338h1() {
        if (BleCoreClient.m12373n().m12372o(this.f12736C)) {
            this.locationShareIV.setClickable(false);
            BaseApp.m8713a().postDelayed(new RunnableC3505b(), 500L);
            int m11191q = MiTalkClientUtil.m11191q();
            if (m11191q != 1) {
                if (m11191q != 4) {
                    if (m11191q == 5) {
                        if (MiTalkClientUtil.m11175y()) {
                            BleCoreClient.m12373n().m12375l(this.f12736C).m12144B1(false);
                            this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                        } else {
                            BleCoreClient.m12373n().m12375l(this.f12736C).m12144B1(true);
                            this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                        }
                    }
                } else if (MiTalkClientUtil.m11259H()) {
                    BleCoreClient.m12373n().m12374m(this.f12736C).m12037i1(false);
                    this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                } else {
                    BleCoreClient.m12373n().m12374m(this.f12736C).m12037i1(true);
                    this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                }
            } else if (MiTalkClientUtil.m11224Z()) {
                BleCoreClient.m12373n().m12378i(this.f12736C).m12321n1(0);
                this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                MiTalkClientUtil.m11184t0(false);
            } else {
                BleCoreClient.m12373n().m12378i(this.f12736C).m12321n1(1);
                this.locationShareIV.setImageResource(R.drawable.home_icon_position_open);
                MiTalkClientUtil.m11184t0(true);
            }
            m10287D(false, false, getString(R.string.please_wait), R.drawable.load_spinner);
        } else if (MiTalkClientUtil.m11191q() == 1) {
            if (MiTalkClientUtil.m11224Z()) {
                this.locationShareIV.setImageResource(R.drawable.home_icon_position);
                MiTalkClientUtil.m11184t0(false);
                stopService(new Intent(this, ShareLocationService.class));
                return;
            }
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: i1 */
    private void m13336i1(String str, String str2, int i, boolean z) {
        String str3;
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append((i / 16777216) % 256);
            sb.append(".");
            sb.append((i / 65536) % 256);
            sb.append(".");
            sb.append(i % 65536);
        }
        try {
            str3 = MiTalkiApp.m14296h().getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str3 = "unknown";
        }
        HashMap hashMap = new HashMap();
        hashMap.put("active", z ? "1" : "0");
        hashMap.put("appVersion", str3);
        hashMap.put("category", str);
        hashMap.put("deviceId", str2);
        hashMap.put("mcuVersion", sb.toString());
        hashMap.put("phoneModel", Build.MANUFACTURER + Constants.COLON_SEPARATOR + Build.MODEL);
        hashMap.put("phoneSys", "android");
        hashMap.put("phoneSysVersion", Build.VERSION.RELEASE);
        AppServiceClient.m11355a().m11381a(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.s
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BleDeviceMapActivity.this.m13372P0((NewHttpResult) obj);
            }
        }, new C3514j(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m13334k0(DeviceModel deviceModel) throws Exception {
        if (deviceModel.getAgreedProtocolVersion() == 0) {
            m13353Z0(deviceModel);
        } else {
            m13358X(deviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m13332m0(Disposable disposable) throws Exception {
        this.f12735B = disposable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m13330o0(DeviceModel deviceModel, PrivacyInfoEntity privacyInfoEntity) throws Exception {
        int parseInt = Integer.parseInt(privacyInfoEntity.getVersion());
        if (parseInt > deviceModel.getAgreedProtocolVersion()) {
            m13351a1(deviceModel, parseInt);
        } else {
            m13360W(deviceModel.getDeviceType());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m13328q0(PrivacyInfoEntity privacyInfoEntity) throws Exception {
        UserPrivacyReportUtil.m11135x(Integer.parseInt(privacyInfoEntity.getVersion()), this.f12736C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r0 */
    public /* synthetic */ void m13326t0(ConnectStateEvent connectStateEvent) throws Exception {
        if (BleCoreClient.m12373n().m12372o(this.f12736C)) {
            return;
        }
        m13367S0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u0 */
    public /* synthetic */ void m13324v0(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            UserPrivacyReportUtil.m11142q("location");
            return;
        }
        UserPrivacyReportUtil.m11150i("location");
        m13355Y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w0 */
    public /* synthetic */ void m13322x0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        m13361V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y0 */
    public /* synthetic */ void m13320z0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        startActivity(C4972m.m8641a());
    }

    /* renamed from: S0 */
    public void m13367S0() {
        Message obtain = Message.obtain();
        obtain.what = 6;
        obtain.arg1 = 1;
        obtain.arg2 = 0;
        this.f12734A.sendMessage(obtain);
    }

    /* renamed from: U0 */
    public void m13363U0() {
        int m11191q = MiTalkClientUtil.m11191q();
        int i = R.drawable.home_icon_position_open;
        if (m11191q == 1) {
            this.locationShareIV.setVisibility(0);
            ImageView imageView = this.locationShareIV;
            if (!MiTalkClientUtil.m11224Z()) {
                i = R.drawable.home_icon_position;
            }
            imageView.setImageResource(i);
        } else if (m11191q == 9) {
            this.locationShareIV.setVisibility(8);
        } else if (m11191q == 4) {
            this.locationShareIV.setVisibility(0);
            ImageView imageView2 = this.locationShareIV;
            if (!MiTalkClientUtil.m11259H()) {
                i = R.drawable.home_icon_position;
            }
            imageView2.setImageResource(i);
        } else if (m11191q != 5) {
        } else {
            this.locationShareIV.setVisibility(0);
            ImageView imageView3 = this.locationShareIV;
            if (!MiTalkClientUtil.m11175y()) {
                i = R.drawable.home_icon_position;
            }
            imageView3.setImageResource(i);
        }
    }

    /* renamed from: b1 */
    protected void m13349b1() {
        QMUIDialog qMUIDialog = this.f12751x;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
            messageDialogBuilder.m7248E(R.string.main_ble_have_unconnect);
            messageDialogBuilder.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.a
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog2, int i) {
                    BleDeviceMapActivity.this.m13381K0(qMUIDialog2, i);
                }
            });
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7286t(false);
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7285u(false);
            QMUIDialog m7296f = messageDialogBuilder3.m7296f(R.style.DialogTheme1);
            this.f12751x = m7296f;
            try {
                m7296f.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c0 */
    protected void m13348c0() {
        QMUIDialog qMUIDialog = this.f12751x;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            return;
        }
        this.f12751x.dismiss();
        this.f12751x = null;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.OnCheckDolphinUpdateCallback
    /* renamed from: i */
    public void mo13063i(boolean z) {
        if (!z) {
            this.f12734A.sendEmptyMessage(2);
            if (MiTalkClientUtil.f14440a == 1) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.please_update_your_firmware), true);
            }
        } else if (MethodsUtils.m11297c()) {
            if (MiTalkClientUtil.m11209h().equals("mcu_language_type_english")) {
                return;
            }
            this.f12734A.sendEmptyMessage(2);
        } else if (!MethodsUtils.m11296d() || MiTalkClientUtil.m11209h().equals("mcu_language_type_chinese")) {
        } else {
            this.f12734A.sendEmptyMessage(2);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m10286E(MainActivity.class);
    }

    @Subscribe
    public void onBeanUserLocationChanged(BeanUserLocation beanUserLocation) {
        this.f12740m.m10260a(beanUserLocation);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SealSharkChannelModel sealSharkChannelModel;
        switch (view.getId()) {
            case R.id.bottom_channel_display_layout /* 2131296381 */:
                int m11191q = MiTalkClientUtil.m11191q();
                if (m11191q != 4) {
                    if (m11191q == 5 && (sealSharkChannelModel = this.f12749v) != null) {
                        SealChannelSettingActivity.m12862I(this, sealSharkChannelModel, true, this.f12736C);
                        return;
                    }
                    return;
                }
                switch (this.f12748u) {
                    case 0:
                        SealSharkChannelModel sealSharkChannelModel2 = this.f12749v;
                        if (sealSharkChannelModel2 != null) {
                            SharkChannelSettingActivity.m12699I(this, sealSharkChannelModel2, this.f12750w == 1, this.f12736C);
                            return;
                        }
                        return;
                    case 1:
                    case 2:
                        MethodsUtils.m11302H(getString(R.string.sos_mode_can_not_setting), false);
                        return;
                    case 3:
                    case 4:
                        MethodsUtils.m11302H(getString(R.string.scan_mode_can_not_setting), false);
                        return;
                    case 5:
                    case 6:
                        MethodsUtils.m11302H(getString(R.string.team_mode_can_not_setting), false);
                        return;
                    default:
                        return;
                }
            case R.id.map_icon_location_share_iv /* 2131296972 */:
                m13338h1();
                return;
            case R.id.map_icon_my_locate_iv /* 2131296973 */:
                m13371Q0();
                return;
            case R.id.map_icon_zoom_big_iv /* 2131296974 */:
                this.f12740m.m10262B();
                return;
            case R.id.map_icon_zoom_small_iv /* 2131296976 */:
                this.f12740m.m10261C();
                return;
            case R.id.map_kit_altitude_btn_layout /* 2131296977 */:
                this.f12738k.dismiss();
                Intent intent = new Intent(this, GaoDeMapToolOperateActivity.class);
                intent.putExtra("map_kit_measure_what", "measure_altitude");
                intent.putExtra("gaode_map_cameraposition", this.f12740m.m10258c());
                startActivity(intent);
                return;
            case R.id.map_kit_iv /* 2131296978 */:
                m13347c1();
                return;
            case R.id.map_kit_latandlong_btn_layout /* 2131296979 */:
                this.f12738k.dismiss();
                Intent intent2 = new Intent(this, GaoDeMapToolOperateActivity.class);
                intent2.putExtra("map_kit_measure_what", "measure_latLong");
                intent2.putExtra("gaode_map_cameraposition", this.f12740m.m10258c());
                Location m10257d = this.f12740m.m10257d();
                intent2.putExtra("gaode_my_location_longitude", m10257d.getLongitude());
                intent2.putExtra("gaode_my_location_latitude", m10257d.getLatitude());
                startActivity(intent2);
                return;
            case R.id.map_kit_ranging_btn_layout /* 2131296984 */:
                this.f12738k.dismiss();
                Intent intent3 = new Intent(this, GaoDeMapToolOperateActivity.class);
                intent3.putExtra("map_kit_measure_what", "measure_distance");
                intent3.putExtra("gaode_map_cameraposition", this.f12740m.m10258c());
                startActivity(intent3);
                return;
            case R.id.map_switch_mode_gaode_normal /* 2131296986 */:
                m13356Y();
                return;
            case R.id.map_switch_mode_gaode_satellite /* 2131296988 */:
                m13354Z();
                return;
            case R.id.map_switch_type_btn /* 2131296990 */:
                m13342f1();
                return;
            case R.id.title_bar_left /* 2131297422 */:
                onBackPressed();
                return;
            case R.id.title_bar_right /* 2131297423 */:
                m13340g1();
                return;
            case R.id.top_have_mcu_update_close /* 2131297441 */:
                this.mcuHaveUpdateLayout.startAnimation(this.f12739l);
                this.mcuHaveUpdateCloseBtn.setClickable(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                this.f12745r = false;
                return;
            case R.id.top_mcu_update_immediately /* 2131297445 */:
                this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
                MiTalkClientUtil.m11176x0(false);
                this.mcuUpdateImmediatelyBtn.setClickable(false);
                int m11191q2 = MiTalkClientUtil.m11191q();
                if (m11191q2 == 1) {
                    Intent intent4 = new Intent(this, DolphinUpdateMcuActivity.class);
                    intent4.putExtra("device_mac_address", this.f12736C);
                    int m11205j = MiTalkClientUtil.m11205j();
                    String str = DolphinUpdateManager.m13109f().m13108g().get("versionCode");
                    intent4.putExtra("key_update_type", m11205j >= 65542 ? "update_type_mcu_ble" : "update_type_mcu");
                    intent4.putExtra("key_mcu_server_version_code", Integer.parseInt(str));
                    intent4.setAction("com.ifengyu.intercom.ACTION_UPDATE_IMMEDIATELY");
                    startActivity(intent4);
                } else if (m11191q2 == 9) {
                    LiteUpgradeActivity.start(this);
                } else if (m11191q2 == 4) {
                    Intent intent5 = new Intent(this, SealSharkMcuUpdateActivity.class);
                    intent5.putExtra("device_mac_address", this.f12736C);
                    intent5.putExtra("mcu_update_device_type", "shark");
                    intent5.putExtra("mcu_have_update", true);
                    intent5.putExtra("mcu_update_info", this.f12747t);
                    intent5.setAction("mcu_update_action_from_main");
                    startActivity(intent5);
                } else if (m11191q2 == 5) {
                    Intent intent6 = new Intent(this, SealSharkMcuUpdateActivity.class);
                    intent6.putExtra("device_mac_address", this.f12736C);
                    intent6.putExtra("mcu_update_device_type", "seal");
                    intent6.putExtra("mcu_have_update", true);
                    intent6.putExtra("mcu_update_info", this.f12747t);
                    intent6.setAction("mcu_update_action_from_main");
                    startActivity(intent6);
                }
                this.mcuHaveUpdateLayout.setVisibility(8);
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activty_ble_device_map);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f12736C = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m13341g0();
        m13345e0();
        m13343f0(bundle);
        m13346d0();
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        C4161y.m11049f("BleDeviceMapActivity", "onDestroy");
        super.onDestroy();
        this.f12734A.removeCallbacksAndMessages(null);
        this.f12740m.m10245p();
        this.f12740m = null;
        RxBus.m11806d().m11803g(this);
        Disposable disposable = this.f12735B;
        if (disposable != null) {
            disposable.dispose();
            this.f12735B = null;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mcuHaveUpdateLayout.setVisibility(8);
        this.f12740m.m10244q();
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        C4161y.m11049f("BleDeviceMapActivity", "onResume");
        super.onResume();
        this.f12740m.m10243r();
        if (BleCoreClient.m12373n().m12372o(this.f12736C)) {
            m13365T0();
            this.f12734A.sendEmptyMessage(5);
            this.titleBarRight.setImageResource(R.drawable.home_icon_set_n);
            m13348c0();
            VersionInfo versionInfo = this.f12747t;
            if (versionInfo != null) {
                int versionCode = versionInfo.getVersionCode();
                int m11191q = MiTalkClientUtil.m11191q();
                if (m11191q != 4) {
                    if (m11191q == 5 && this.mcuHaveUpdateLayout.getVisibility() == 0 && MiTalkClientUtil.m11265E() >= versionCode) {
                        this.mcuHaveUpdateLayout.clearAnimation();
                        this.mcuHaveUpdateLayout.setVisibility(8);
                    }
                } else if (this.mcuHaveUpdateLayout.getVisibility() == 0 && MiTalkClientUtil.m11251L() >= versionCode) {
                    this.mcuHaveUpdateLayout.clearAnimation();
                    this.mcuHaveUpdateLayout.setVisibility(8);
                }
            }
        } else {
            this.f12734A.sendEmptyMessage(6);
        }
        m13363U0();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f12740m.m10242s(bundle);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C4161y.m11049f("BleDeviceMapActivity", "onStart");
        super.onStart();
        MiBus.getInstance().m6411j(this);
        DolphinUpdateManager.m13109f().m13097r(this);
        if (!C4972m.m8639c()) {
            m13344e1();
        } else if (C4972m.m8640b("android.permission.ACCESS_FINE_LOCATION")) {
        } else {
            m13357X0();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C4161y.m11049f("BleDeviceMapActivity", "onStop");
        MiBus.getInstance().m6409l(this);
        DolphinUpdateManager.m13109f().m13099p();
    }

    @Subscribe
    public void receiveDolphinParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        OldBleDeviceDbManager m12497b;
        ConnectionConfiguration m12498a;
        C4161y.m11049f("BleDeviceMapActivity", "receive dolphin ParamResponse");
        if (paramUpdate.hasDevNameGBK() && (m12498a = (m12497b = OldBleDeviceDbManager.m12497b()).m12498a(this.f12736C)) != null) {
            m12498a.m12499h(MiTalkClientUtil.m11193p());
            m12498a.m12500g(true);
            m12497b.m12496c(m12498a);
        }
        if (paramUpdate.hasShareLoc()) {
            if (paramUpdate.getShareLoc() != 0) {
                this.f12734A.sendEmptyMessage(3);
            } else {
                this.f12734A.sendEmptyMessage(4);
            }
        }
        if (paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.hasDeviceId()) {
            m13359W0(1, paramUpdate.getVersionMCU());
            m13362V();
        }
        if (paramUpdate.hasResult() && paramUpdate.hasActivateChannel()) {
            UIUtils.m8596v(this.f15063i);
            if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS && paramUpdate.getActivateChannel() == 1) {
                m13350b0();
            } else {
                this.f15063i.run();
            }
        }
        if (!BleCoreClient.m12373n().m12378i(this.f12736C).m11990d0() || MiTalkClientUtil.m11211g() == null || MiTalkClientUtil.m11203k() <= 0) {
            return;
        }
        m13336i1("dolphin", MiTalkClientUtil.m11211g(), MiTalkClientUtil.m11203k(), BleCoreClient.m12373n().m12378i(this.f12736C).m12361D0());
    }

    @Subscribe
    public void receiveSealChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11049f("BleDeviceMapActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new RunnableC3515k(sEAL_ChannelStateOperate));
        if (!BleCoreClient.m12373n().m12375l(this.f12736C).m11990d0() || MiTalkClientUtil.m11181v() == null || MiTalkClientUtil.m11265E() <= 0) {
            return;
        }
        BleCoreClient.m12373n().m12375l(this.f12736C).m12146A1();
        m13336i1("seal", MiTalkClientUtil.m11181v(), MiTalkClientUtil.m11265E(), BleCoreClient.m12373n().m12375l(this.f12736C).m12143C0());
    }

    @Subscribe
    public void receiveSealParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        C4161y.m11049f("BleDeviceMapActivity", "receive seal ParamResponse");
        if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
                ConnectionConfiguration m12498a = m12497b.m12498a(this.f12736C);
                m12498a.m12499h(MiTalkClientUtil.m11193p());
                m12498a.m12500g(true);
                m12497b.m12496c(m12498a);
            }
            runOnUiThread(new RunnableC3512h(sEAL_DeviceParam));
            m13359W0(5, sEAL_DeviceParam.getVerSoft());
            m13362V();
            BleCoreClient.m12373n().m12375l(this.f12736C).m12106g1();
        } else if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
            if (sEAL_DeviceParam.hasShareLoc()) {
                this.f12734A.sendEmptyMessage(MiTalkClientUtil.m11175y() ? 3 : 4);
            } else if (sEAL_DeviceParam.hasActivate()) {
                UIUtils.m8596v(this.f15063i);
                if (sEAL_DeviceParam.hasActivate() && sEAL_DeviceParam.getActivate() == 1) {
                    m13350b0();
                } else {
                    this.f15063i.run();
                }
            }
        }
    }

    @Subscribe
    public void receiveSharkChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11049f("BleDeviceMapActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new RunnableC3516l(sHARK_ChannelStateOperate));
        if (!BleCoreClient.m12373n().m12374m(this.f12736C).m11990d0() || MiTalkClientUtil.m11261G() == null || MiTalkClientUtil.m11251L() <= 0) {
            return;
        }
        BleCoreClient.m12373n().m12374m(this.f12736C).m12027o1();
        m13336i1("shark", MiTalkClientUtil.m11261G(), MiTalkClientUtil.m11251L(), BleCoreClient.m12373n().m12374m(this.f12736C).m12071A0());
    }

    @Subscribe
    public void receiveSharkParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        C4161y.m11049f("BleDeviceMapActivity", "receive shark ParamResponse");
        if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
                ConnectionConfiguration m12498a = m12497b.m12498a(this.f12736C);
                m12498a.m12499h(MiTalkClientUtil.m11193p());
                m12498a.m12500g(true);
                m12497b.m12496c(m12498a);
            }
            runOnUiThread(new RunnableC3513i());
            m13359W0(4, sHARK_DeviceParam.getVerSoft());
            m13362V();
            BleCoreClient.m12373n().m12374m(this.f12736C).m12042d1();
        } else if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
            if (sHARK_DeviceParam.hasShareLoc()) {
                this.f12734A.sendEmptyMessage(MiTalkClientUtil.m11259H() ? 3 : 4);
            } else if (sHARK_DeviceParam.hasActivate()) {
                UIUtils.m8596v(this.f15063i);
                if (sHARK_DeviceParam.hasActivate() && sHARK_DeviceParam.getActivate() == 1) {
                    m13350b0();
                } else {
                    this.f15063i.run();
                }
            }
        }
    }
}
