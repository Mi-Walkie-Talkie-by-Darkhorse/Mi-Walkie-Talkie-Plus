package com.xiaomi.accountsdk.diagnosis.ui;

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
import com.xiaomi.accountsdk.diagnosis.DiagnosisController;
import com.xiaomi.accountsdk.diagnosis.R;
import com.xiaomi.accountsdk.diagnosis.c;
import com.xiaomi.accountsdk.diagnosis.c.a;
import com.xiaomi.accountsdk.diagnosis.c.b;
import com.xiaomi.accountsdk.diagnosis.e.a;

/* loaded from: classes2.dex */
public class PassportDiagnosisActivity extends AppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    private ScrollView f8637a;

    /* renamed from: b  reason: collision with root package name */
    private View f8638b;

    /* renamed from: c  reason: collision with root package name */
    private View f8639c;
    private ProgressDialog e;
    private CompoundButton.OnCheckedChangeListener d = new CompoundButton.OnCheckedChangeListener() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.1
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            a.a(DiagnosisController.getApplicationContext(), z);
            PassportDiagnosisActivity.this.a(z);
        }
    };
    private volatile boolean f = false;
    private View.OnClickListener g = new View.OnClickListener() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!PassportDiagnosisActivity.this.f) {
                PassportDiagnosisActivity.this.e = new ProgressDialog(PassportDiagnosisActivity.this);
                PassportDiagnosisActivity.this.e.setMessage(PassportDiagnosisActivity.this.getString(R.string.sending));
                PassportDiagnosisActivity.this.e.setCancelable(false);
                PassportDiagnosisActivity.this.e.getWindow().setGravity(80);
                PassportDiagnosisActivity.this.e.show();
                PassportDiagnosisActivity.this.f = true;
                new com.xiaomi.accountsdk.diagnosis.c.a(new a.AbstractC0233a() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.2.1
                    @Override // com.xiaomi.accountsdk.diagnosis.c.a.AbstractC0233a
                    public void onFinished(boolean z, String str) {
                        PassportDiagnosisActivity.this.f = false;
                        if (PassportDiagnosisActivity.this.e != null) {
                            PassportDiagnosisActivity.this.e.dismiss();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(PassportDiagnosisActivity.this);
                        builder.setMessage((!z || TextUtils.isEmpty(str)) ? PassportDiagnosisActivity.this.getString(R.string.diagnosis_log_send_failed) : PassportDiagnosisActivity.this.getString(R.string.diagnosis_log_sent_format, new Object[]{str}));
                        builder.setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
                        builder.setCancelable(false);
                        builder.show();
                    }
                }, false).execute(new Void[0]);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        int i = z ? 0 : 8;
        this.f8637a.setVisibility(i);
        this.f8638b.setVisibility(i);
        this.f8639c.setVisibility(i);
    }

    private static boolean a() {
        return com.xiaomi.accountsdk.diagnosis.e.a.a(DiagnosisController.getApplicationContext());
    }

    private void b() {
        new b(this, new b.a() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.3
            @Override // com.xiaomi.accountsdk.diagnosis.c.b.a
            public void onReadLog(String str) {
                ((TextView) PassportDiagnosisActivity.this.findViewById(R.id.tv_log)).setText(str);
                PassportDiagnosisActivity.this.f8637a.post(new Runnable() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PassportDiagnosisActivity.this.f8637a.fullScroll(130);
                    }
                });
            }
        }, 512).execute(new Void[0]);
    }

    public static void start(final Context context) {
        DiagnosisController.get().checkStart(new c() { // from class: com.xiaomi.accountsdk.diagnosis.ui.PassportDiagnosisActivity.4
            @Override // com.xiaomi.accountsdk.diagnosis.c
            public void onError() {
                Toast.makeText(context, R.string.temporary_not_available, 0).show();
            }

            @Override // com.xiaomi.accountsdk.diagnosis.c
            public void onLaunch() {
                context.startActivity(new Intent(context, PassportDiagnosisActivity.class));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.passport_diagnosis);
        this.f8637a = (ScrollView) findViewById(R.id.log_scroller);
        this.f8639c = findViewById(R.id.upload_diagnosis);
        this.f8638b = findViewById(R.id.footer);
        CompoundButton compoundButton = (CompoundButton) findViewById(R.id.switch_diagnosis);
        compoundButton.setChecked(a());
        compoundButton.setOnCheckedChangeListener(this.d);
        this.f8639c.setOnClickListener(this.g);
        b();
        a(a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
