package com.ifengyu.intercom.ui.setting.dolphin;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.PickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.PickerDialog.a;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.o;
import com.ifengyu.intercom.ui.widget.dialog.p;
import com.ifengyu.intercom.ui.widget.dialog.p.c;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;
import com.ifengyu.intercom.ui.widget.view.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class DolphinRelayEditActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public int a;
    /* access modifiers changed from: private */
    public int b;
    private int c;
    private int d;
    @BindView(2131755308)
    Button mBtnRelayEditDelete;
    @BindView(2131755299)
    ClearEditText mEtRelayEditName;
    @BindView(2131755302)
    FrameLayout mFlRelayEditDownFreq;
    @BindView(2131755306)
    FrameLayout mFlRelayEditDownTone;
    @BindView(2131755300)
    FrameLayout mFlRelayEditUpFreq;
    @BindView(2131755304)
    FrameLayout mFlRelayEditUpTone;
    @BindView(2131755836)
    TextView mTitleBarConfirm;
    @BindView(2131755203)
    ImageView mTitleBarLeft;
    @BindView(2131755588)
    TextView mTitleBarTitle;
    @BindView(2131755303)
    TextView mTvRelayEditDownFreq;
    @BindView(2131755307)
    TextView mTvRelayEditDownTone;
    @BindView(2131755301)
    TextView mTvRelayEditUpFreq;
    @BindView(2131755305)
    TextView mTvRelayEditUpTone;
    private int q;
    /* access modifiers changed from: private */
    public UserChannel r;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_relay_edit);
        ButterKnife.bind((Activity) this);
        c();
        d();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    private void c() {
        Typeface typeface = l.b;
        this.mTvRelayEditUpFreq.setTypeface(typeface);
        this.mTvRelayEditDownFreq.setTypeface(typeface);
        this.mTvRelayEditUpTone.setTypeface(typeface);
        this.mTvRelayEditDownTone.setTypeface(typeface);
        this.mTitleBarLeft.setOnClickListener(this);
        this.mTitleBarConfirm.setOnClickListener(this);
        this.mFlRelayEditUpFreq.setOnClickListener(this);
        this.mFlRelayEditDownFreq.setOnClickListener(this);
        this.mFlRelayEditUpTone.setOnClickListener(this);
        this.mFlRelayEditDownTone.setOnClickListener(this);
        this.mBtnRelayEditDelete.setOnClickListener(this);
        this.mTitleBarConfirm.setVisibility(0);
        this.mTitleBarConfirm.setText(R.string.completed);
    }

    private void d() {
        int i;
        float f;
        float f2 = 16.0f;
        Intent intent = getIntent();
        if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(intent.getAction())) {
            this.mBtnRelayEditDelete.setVisibility(0);
            this.r = (UserChannel) intent.getParcelableExtra("relayInfo");
            if (this.r != null) {
                this.q = this.r.b();
                this.a = this.r.e();
                this.c = this.r.f() < l.e.length ? this.r.f() : 0;
                this.b = this.r.g();
                if (this.r.h() < l.e.length) {
                    i = this.r.h();
                } else {
                    i = 0;
                }
                this.d = i;
                this.mTitleBarTitle.setText(R.string.edit_relay);
                this.mEtRelayEditName.setText(this.r.d());
                this.mEtRelayEditName.setSelection(this.r.d().length());
                this.mEtRelayEditName.setHint(ad.a((int) R.string.default_relay, Integer.valueOf(this.q + 1)));
                this.mTvRelayEditUpFreq.setText(v.c(this.a));
                this.mTvRelayEditUpTone.setText(l.e[this.c]);
                TextView textView = this.mTvRelayEditUpTone;
                if (this.c == 0) {
                    f = 16.0f;
                } else {
                    f = 18.0f;
                }
                textView.setTextSize(2, f);
                this.mTvRelayEditDownFreq.setText(v.c(this.b));
                this.mTvRelayEditDownTone.setText(l.e[this.d]);
                TextView textView2 = this.mTvRelayEditDownTone;
                if (this.d != 0) {
                    f2 = 18.0f;
                }
                textView2.setTextSize(2, f2);
            }
        } else {
            this.q = intent.getIntExtra("channelNum", 0);
            this.mTitleBarTitle.setText(R.string.add_relay);
            this.mEtRelayEditName.setHint(ad.a((int) R.string.default_relay, Integer.valueOf(this.q + 1)));
        }
        this.mEtRelayEditName.setFilters(new InputFilter[]{new b(this.mEtRelayEditName)});
    }

    public void onClick(View view) {
        int i;
        String obj;
        int i2 = 1;
        int i3 = 0;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fl_relay_edit_up_freq /*2131755300*/:
                v.a((View) this.mFlRelayEditUpFreq);
                if (v.a()) {
                    a((String) null, 1, (c) new c() {
                        public void a(String str) {
                            s.b(DolphinRelayEditActivity.this.e, "insert up freq:" + str);
                            DolphinRelayEditActivity.this.a = v.a(str);
                            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
                        }

                        public void b(String str) {
                        }
                    });
                    return;
                } else {
                    a((String) null, 1, (o.c) new o.c() {
                        public void a(String str) {
                            s.b(DolphinRelayEditActivity.this.e, "insert up freq:" + str);
                            DolphinRelayEditActivity.this.a = v.a(str);
                            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
                        }

                        public void b(String str) {
                        }
                    });
                    return;
                }
            case R.id.fl_relay_edit_down_freq /*2131755302*/:
                v.a((View) this.mFlRelayEditDownFreq);
                if (v.a()) {
                    a((String) null, 1, (c) new c() {
                        public void a(String str) {
                            s.b(DolphinRelayEditActivity.this.e, "insert down freq:" + str);
                            DolphinRelayEditActivity.this.b = v.a(str);
                            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
                        }

                        public void b(String str) {
                        }
                    });
                    return;
                } else {
                    a((String) null, 2, (o.c) new o.c() {
                        public void a(String str) {
                            s.b(DolphinRelayEditActivity.this.e, "insert down freq:" + str);
                            DolphinRelayEditActivity.this.b = v.a(str);
                            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
                        }

                        public void b(String str) {
                        }
                    });
                    return;
                }
            case R.id.fl_relay_edit_up_tone /*2131755304*/:
                v.a((View) this.mFlRelayEditUpTone);
                if (this.c == 0) {
                    i = 0;
                    i3 = 1;
                } else if (this.c > 0 && this.c <= 39) {
                    i = this.c;
                } else if (this.c > 39 && this.c <= 123) {
                    i = this.c - 40;
                    i3 = 1;
                } else if (this.c > 123) {
                    i3 = 2;
                    i = this.c - 124;
                } else {
                    i = 0;
                }
                new PickerDialog(this).b(R.string.receive_sub_tone).a(i3, i).b(R.string.common_select, new a() {
                    public void a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
                        DolphinRelayEditActivity.this.a(i, i2);
                        DolphinRelayEditActivity.this.mTvRelayEditUpTone.setText(str2);
                        DolphinRelayEditActivity.this.mTvRelayEditUpTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                    }
                }).a((int) R.string.common_cancel, (a) null).show();
                return;
            case R.id.fl_relay_edit_down_tone /*2131755306*/:
                v.a((View) this.mFlRelayEditDownTone);
                if (this.d != 0) {
                    if (this.d > 0 && this.d <= 39) {
                        i2 = 0;
                        i3 = this.d;
                    } else if (this.d > 39 && this.d <= 123) {
                        i3 = this.d - 40;
                    } else if (this.d > 123) {
                        i2 = 2;
                        i3 = this.d - 124;
                    } else {
                        i2 = 0;
                    }
                }
                new PickerDialog(this).b(R.string.emissive_sub_tone).a(i2, i3).b(R.string.common_select, new a() {
                    public void a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
                        DolphinRelayEditActivity.this.b(i, i2);
                        DolphinRelayEditActivity.this.mTvRelayEditDownTone.setText(str2);
                        DolphinRelayEditActivity.this.mTvRelayEditDownTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                    }
                }).a((int) R.string.common_cancel, (a) null).show();
                return;
            case R.id.btn_relay_edit_delete /*2131755308*/:
                new d(this).a((int) R.string.common_delete).c((int) R.string.dialog_message_are_you_sure_delete_selected_relay_channel).b(true).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        DolphinRelayEditActivity.this.setResult(2, new Intent().putExtra("relayInfo", DolphinRelayEditActivity.this.r));
                        DolphinRelayEditActivity.this.finish();
                    }
                }).b().c();
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                if (TextUtils.isEmpty(this.mTvRelayEditUpFreq.getText()) || TextUtils.isEmpty(this.mTvRelayEditDownFreq.getText())) {
                    v.a((CharSequence) ad.a((int) R.string.toast_please_edit_frequency), false);
                    return;
                }
                if (TextUtils.isEmpty(this.mEtRelayEditName.getText())) {
                    obj = ad.a((int) R.string.relay_d, Integer.valueOf(this.q + 1));
                } else {
                    obj = this.mEtRelayEditName.getText().toString();
                }
                String trim = obj.trim();
                UserChannel userChannel = new UserChannel();
                if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(getIntent().getAction())) {
                    userChannel.a(Long.valueOf(((long) this.q) + 100));
                    userChannel.a(this.q);
                    userChannel.b(8);
                    userChannel.a(trim);
                    userChannel.c(this.a);
                    userChannel.d(this.c);
                    userChannel.e(this.b);
                    userChannel.f(this.d);
                    setResult(1, new Intent().putExtra("relayInfo", userChannel));
                } else if ("com.ifengyu.action.RELAY_INSERT_CHANNEL".equals(getIntent().getAction())) {
                    userChannel.a(Long.valueOf(((long) this.q) + 100));
                    userChannel.a(this.q);
                    userChannel.b(8);
                    userChannel.a(trim);
                    userChannel.c(this.a);
                    userChannel.d(this.c);
                    userChannel.e(this.b);
                    userChannel.f(this.d);
                    setResult(0, new Intent().putExtra("relayInfo", userChannel));
                }
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(int i, int i2) {
        if (i2 == 0) {
            this.c = 0;
            return;
        }
        switch (i) {
            case 0:
                this.c = i2;
                return;
            case 1:
                this.c = i2 + 40;
                return;
            case 2:
                this.c = i2 + 124;
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void b(int i, int i2) {
        if (i2 == 0) {
            this.d = 0;
            return;
        }
        switch (i) {
            case 0:
                this.d = i2;
                return;
            case 1:
                this.d = i2 + 40;
                return;
            case 2:
                this.d = i2 + 124;
                return;
            default:
                return;
        }
    }

    private void a(String str, int i, o.c cVar) {
        o oVar;
        if (!TextUtils.isEmpty(str)) {
            oVar = new o(this, str, i);
        } else {
            oVar = new o(this, null, i);
        }
        oVar.a(cVar);
        oVar.show();
    }

    private void a(String str, int i, c cVar) {
        p pVar;
        if (!TextUtils.isEmpty(str)) {
            pVar = new p(this, str, i);
        } else {
            pVar = new p(this, null, i);
        }
        pVar.a(cVar);
        pVar.show();
    }
}
