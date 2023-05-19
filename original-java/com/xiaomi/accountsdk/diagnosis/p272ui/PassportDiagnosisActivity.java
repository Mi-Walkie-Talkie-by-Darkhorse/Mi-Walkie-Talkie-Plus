package com.xiaomi.accountsdk.diagnosis.p272ui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.xiaomi.accountsdk.diagnosis.C5831R;
import com.xiaomi.accountsdk.diagnosis.DiagnosisController;
import com.xiaomi.accountsdk.diagnosis.InterfaceC5845c;
import com.xiaomi.accountsdk.diagnosis.p269c.AsyncTaskC5846a;
import com.xiaomi.accountsdk.diagnosis.p269c.AsyncTaskC5848b;
import com.xiaomi.accountsdk.diagnosis.p271e.C5853a;

/* renamed from: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity */
/* loaded from: classes2.dex */
public class PassportDiagnosisActivity extends AppCompatActivity {

    /* renamed from: a */
    private ScrollView f20793a;

    /* renamed from: b */
    private View f20794b;

    /* renamed from: c */
    private View f20795c;

    /* renamed from: e */
    private ProgressDialog f20797e;

    /* renamed from: d */
    private CompoundButton.OnCheckedChangeListener f20796d = new CompoundButton.OnCheckedChangeListener() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.1
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C5853a.m4204a(DiagnosisController.getApplicationContext(), z);
            PassportDiagnosisActivity.this.m4163a(z);
        }
    };

    /* renamed from: f */
    private volatile boolean f20798f = false;

    /* renamed from: g */
    private View.OnClickListener f20799g = new View.OnClickListener() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PassportDiagnosisActivity.this.f20798f) {
                return;
            }
            PassportDiagnosisActivity.this.f20797e = new ProgressDialog(PassportDiagnosisActivity.this);
            PassportDiagnosisActivity.this.f20797e.setMessage(PassportDiagnosisActivity.this.getString(C5831R.string.sending));
            PassportDiagnosisActivity.this.f20797e.setCancelable(false);
            PassportDiagnosisActivity.this.f20797e.getWindow().setGravity(80);
            PassportDiagnosisActivity.this.f20797e.show();
            PassportDiagnosisActivity.this.f20798f = true;
            new AsyncTaskC5846a(new AsyncTaskC5846a.InterfaceC5847a() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.2.1
                @Override // com.xiaomi.accountsdk.diagnosis.p269c.AsyncTaskC5846a.InterfaceC5847a
                public void onFinished(boolean z, String str) {
                    PassportDiagnosisActivity.this.f20798f = false;
                    if (PassportDiagnosisActivity.this.f20797e != null) {
                        PassportDiagnosisActivity.this.f20797e.dismiss();
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(PassportDiagnosisActivity.this);
                    builder.setMessage((!z || TextUtils.isEmpty(str)) ? PassportDiagnosisActivity.this.getString(C5831R.string.diagnosis_log_send_failed) : PassportDiagnosisActivity.this.getString(C5831R.string.diagnosis_log_sent_format, new Object[]{str}));
                    builder.setNeutralButton(C5831R.string.f20764ok, (DialogInterface.OnClickListener) null);
                    builder.setCancelable(false);
                    builder.show();
                }
            }, false).execute(new Void[0]);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4163a(boolean z) {
        int i = z ? 0 : 8;
        this.f20793a.setVisibility(i);
        this.f20794b.setVisibility(i);
        this.f20795c.setVisibility(i);
    }

    /* renamed from: a */
    private static boolean m4167a() {
        return C5853a.m4205a(DiagnosisController.getApplicationContext());
    }

    /* renamed from: b */
    private void m4162b() {
        new AsyncTaskC5848b(this, new AsyncTaskC5848b.InterfaceC5849a() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.3
            @Override // com.xiaomi.accountsdk.diagnosis.p269c.AsyncTaskC5848b.InterfaceC5849a
            public void onReadLog(String str) {
                ((TextView) PassportDiagnosisActivity.this.findViewById(C5831R.C5834id.tv_log)).setText(str);
                PassportDiagnosisActivity.this.f20793a.post(new Runnable() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PassportDiagnosisActivity.this.f20793a.fullScroll(130);
                    }
                });
            }
        }, 512).execute(new Void[0]);
    }

    public static void start(final Context context) {
        DiagnosisController.get().checkStart(new InterfaceC5845c() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.4
            @Override // com.xiaomi.accountsdk.diagnosis.InterfaceC5845c
            public void onError() {
                Toast.makeText(context, C5831R.string.temporary_not_available, 0).show();
            }

            @Override // com.xiaomi.accountsdk.diagnosis.InterfaceC5845c
            public void onLaunch() {
                context.startActivity(new Intent(context, PassportDiagnosisActivity.class));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C5831R.C5835layout.passport_diagnosis);
        this.f20793a = (ScrollView) findViewById(C5831R.C5834id.log_scroller);
        this.f20795c = findViewById(C5831R.C5834id.upload_diagnosis);
        this.f20794b = findViewById(C5831R.C5834id.footer);
        CompoundButton compoundButton = (CompoundButton) findViewById(C5831R.C5834id.switch_diagnosis);
        compoundButton.setChecked(m4167a());
        compoundButton.setOnCheckedChangeListener(this.f20796d);
        this.f20795c.setOnClickListener(this.f20799g);
        m4162b();
        m4163a(m4167a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
