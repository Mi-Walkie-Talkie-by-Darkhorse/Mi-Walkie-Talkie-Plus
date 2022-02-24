package com.ifengyu.intercom.ui.activity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class ActivateDeviceActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.btn_activate)
    Button mBtnActivate;
    @BindView(R.id.btn_cancel)
    Button mBtnCancel;
    @BindView(R.id.checkbox)
    AppCompatCheckBox mCheckbox;
    @BindView(R.id.title_bar_left)
    ImageView mTitleBarLeft;
    @BindView(R.id.title_bar_right)
    ImageView mTitleBarRight;
    @BindView(R.id.title_bar_title)
    TextView mTitleBarTitle;
    public Runnable q = new b();

    /* loaded from: classes2.dex */
    class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                ActivateDeviceActivity activateDeviceActivity = ActivateDeviceActivity.this;
                activateDeviceActivity.mBtnActivate.setTextColor(activateDeviceActivity.getResources().getColor(R.color.select_color));
                return;
            }
            ActivateDeviceActivity activateDeviceActivity2 = ActivateDeviceActivity.this;
            activateDeviceActivity2.mBtnActivate.setTextColor(activateDeviceActivity2.getResources().getColor(R.color.activate_unselected_color));
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* loaded from: classes2.dex */
        class a implements DialogInterface.OnClickListener {
            a(b bVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.ifengyu.intercom.ui.activity.ActivateDeviceActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class DialogInterface$OnClickListenerC0155b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC0155b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ActivateDeviceActivity activateDeviceActivity = ActivateDeviceActivity.this;
                activateDeviceActivity.a(false, false, activateDeviceActivity.getString(R.string.dialog_activating), R.drawable.load_spinner);
                k0.a(ActivateDeviceActivity.this.q, 5000L);
                ActivateDeviceActivity.this.x();
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActivateDeviceActivity.this.j();
            com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(ActivateDeviceActivity.this);
            fVar.a(true);
            fVar.b(ActivateDeviceActivity.this.getString(R.string.active_device_fail));
            fVar.a(ActivateDeviceActivity.this.getString(R.string.please_confirm_device_is_connect_with_phone));
            fVar.a(ActivateDeviceActivity.this.getString(R.string.active_device_reactive), new DialogInterface$OnClickListenerC0155b());
            fVar.c(ActivateDeviceActivity.this.getString(R.string.common_cancel), new a(this));
            fVar.a();
            fVar.d();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f6014a;

        c(MitalkProtos.ParamUpdate paramUpdate) {
            this.f6014a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(ActivateDeviceActivity.this.q);
            if (this.f6014a.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                ActivateDeviceActivity.this.w();
            } else {
                ActivateDeviceActivity.this.q.run();
            }
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6016a;

        d(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6016a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(ActivateDeviceActivity.this.q);
            if (this.f6016a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                ActivateDeviceActivity.this.w();
            } else {
                ActivateDeviceActivity.this.q.run();
            }
        }
    }

    /* loaded from: classes2.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f6018a;

        e(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f6018a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(ActivateDeviceActivity.this.q);
            if (this.f6018a.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                ActivateDeviceActivity.this.w();
            } else {
                ActivateDeviceActivity.this.q.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            ActivateDeviceActivity.this.j();
            int g = d0.g();
            if (g == 1) {
                str = d0.h();
            } else if (g != 4) {
                str = g != 5 ? null : d0.u();
            } else {
                str = d0.F();
            }
            String N = d0.N();
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(N)) {
                com.ifengyu.intercom.g.a.a(N, str, (com.ifengyu.intercom.g.d.b) null);
            }
            ActivateDeviceActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        b(R.drawable.mine_icon_win);
        b(getString(R.string.activation_successful));
        k0.a(new f(), 800L);
        d0.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        int g = d0.g();
        if (g == 1) {
            com.ifengyu.intercom.node.e.d().b();
        } else if (g == 4) {
            h0.c();
        } else if (g == 5) {
            g0.c();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_activate) {
            if (id == R.id.btn_cancel) {
                finish();
            }
        } else if (this.mCheckbox.isChecked()) {
            a(false, false, getString(R.string.dialog_activating), R.drawable.load_spinner);
            k0.a(this.q, 5000L);
            x();
        } else {
            c0.a((CharSequence) getString(R.string.toast_please_check_agree), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_activate_device);
        ButterKnife.bind(this);
        this.mTitleBarLeft.setVisibility(8);
        this.mTitleBarRight.setVisibility(8);
        this.mTitleBarTitle.setText(k0.c(R.string.disclaimer));
        this.mCheckbox.setChecked(false);
        this.mBtnActivate.setTextColor(getResources().getColor(R.color.activate_unselected_color));
        this.mBtnActivate.setOnClickListener(this);
        this.mBtnCancel.setOnClickListener(this);
        this.mCheckbox.setOnCheckedChangeListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        z.c("ActivateDeviceActivity", "onDestroy");
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        z.c("ActivateDeviceActivity", "onPause");
        super.onPause();
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        z.c("ActivateDeviceActivity", "onResume");
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    @Subscribe
    public void receiveParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        k0.a(new c(paramUpdate));
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        k0.a(new d(sEAL_DeviceParam));
    }

    @Subscribe
    public void receiveParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        k0.a(new e(sHARK_DeviceParam));
    }
}
