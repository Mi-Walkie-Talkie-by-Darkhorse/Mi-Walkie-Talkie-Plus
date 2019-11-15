package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.squareup.otto.Subscribe;

public class ActivateDeviceActivity extends BaseActivity implements OnClickListener {
    public Runnable a = new Runnable() {
        public void run() {
            ActivateDeviceActivity.this.k();
            new d(ActivateDeviceActivity.this).b(true).a((CharSequence) ActivateDeviceActivity.this.getString(R.string.active_device_fail)).b((CharSequence) ActivateDeviceActivity.this.getString(R.string.please_confirm_device_is_connect_with_phone)).a((CharSequence) ActivateDeviceActivity.this.getString(R.string.active_device_reactive), (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    ActivateDeviceActivity.this.a(false, false, ActivateDeviceActivity.this.getString(R.string.dialog_activating), (int) R.drawable.load_spinner);
                    ad.a(ActivateDeviceActivity.this.a, 5000);
                    ActivateDeviceActivity.this.c();
                }
            }).b((CharSequence) ActivateDeviceActivity.this.getString(R.string.common_cancel), (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).b().c();
        }
    };
    @BindView(2131755164)
    Button mBtnActivate;
    @BindView(2131755162)
    Button mBtnCancel;
    @BindView(2131755128)
    AppCompatCheckBox mCheckbox;
    @BindView(2131755203)
    ImageView mTitleBarLeft;
    @BindView(2131755355)
    ImageView mTitleBarRight;
    @BindView(2131755588)
    TextView mTitleBarTitle;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_activate_device);
        ButterKnife.bind((Activity) this);
        this.mTitleBarLeft.setVisibility(8);
        this.mTitleBarRight.setVisibility(8);
        this.mTitleBarTitle.setText(ad.a((int) R.string.disclaimer));
        this.mCheckbox.setChecked(false);
        this.mBtnActivate.setTextColor(getResources().getColor(R.color.activate_unselected_color));
        this.mBtnActivate.setOnClickListener(this);
        this.mBtnCancel.setOnClickListener(this);
        this.mCheckbox.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    ActivateDeviceActivity.this.mBtnActivate.setTextColor(ActivateDeviceActivity.this.getResources().getColor(R.color.select_color));
                } else {
                    ActivateDeviceActivity.this.mBtnActivate.setTextColor(ActivateDeviceActivity.this.getResources().getColor(R.color.activate_unselected_color));
                }
            }
        });
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_cancel /*2131755162*/:
                finish();
                return;
            case R.id.btn_activate /*2131755164*/:
                if (this.mCheckbox.isChecked()) {
                    a(false, false, getString(R.string.dialog_activating), (int) R.drawable.load_spinner);
                    ad.a(this.a, 5000);
                    c();
                    return;
                }
                v.a((CharSequence) getString(R.string.toast_please_check_agree), false);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        switch (w.ad()) {
            case 1:
                f.a().c();
                return;
            case 4:
                ab.b();
                return;
            case 5:
                aa.b();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        s.c("ActivateDeviceActivity", "onResume");
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        s.c("ActivateDeviceActivity", "onPause");
        super.onPause();
        a.a().b((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        s.c("ActivateDeviceActivity", "onDestroy");
        super.onDestroy();
    }

    @Subscribe
    public void receiveParamResponse(final ParamUpdate paramUpdate) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                ad.b(ActivateDeviceActivity.this.a);
                if (paramUpdate.getResult() == STATECODE.SUCCESS) {
                    ActivateDeviceActivity.this.d();
                } else {
                    ActivateDeviceActivity.this.a.run();
                }
            }
        });
    }

    @Subscribe
    public void receiveParamResponse(final SEAL_DeviceParam sEAL_DeviceParam) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                ad.b(ActivateDeviceActivity.this.a);
                if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                    ActivateDeviceActivity.this.d();
                } else {
                    ActivateDeviceActivity.this.a.run();
                }
            }
        });
    }

    @Subscribe
    public void receiveParamResponse(final SHARK_DeviceParam sHARK_DeviceParam) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                ad.b(ActivateDeviceActivity.this.a);
                if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                    ActivateDeviceActivity.this.d();
                } else {
                    ActivateDeviceActivity.this.a.run();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void d() {
        d(R.drawable.mine_icon_win);
        b(getString(R.string.activation_successful));
        ad.a((Runnable) new Runnable() {
            public void run() {
                String E;
                ActivateDeviceActivity.this.k();
                switch (w.ad()) {
                    case 1:
                        E = w.o();
                        break;
                    case 4:
                        E = w.E();
                        break;
                    case 5:
                        E = w.q();
                        break;
                    default:
                        E = null;
                        break;
                }
                String K = w.K();
                if (!TextUtils.isEmpty(E) && !TextUtils.isEmpty(K)) {
                    com.ifengyu.intercom.a.a.a(K, E, (b) null);
                }
                ActivateDeviceActivity.this.finish();
            }
        }, 800);
        w.p(true);
    }
}
