package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.GoogleMapDownLoadedActivity;
import okhttp3.Call;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class OfflineMapTypeSelectActivity extends BaseActivity {

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OfflineMapTypeSelectActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends l {
        b() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if ("OK".equals((String) jSONObject.get("status"))) {
                    d0.d(jSONObject.getJSONObject("result").getJSONObject("addressComponent").getString("city"));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void w() {
        double[] r = d0.r();
        com.ifengyu.intercom.g.a.b(r[0], r[1], new b());
    }

    public void gaodeMapDownloadClicked(View view) {
        startActivity(new Intent(this, GaoDeMapDownLoadedActivity.class));
    }

    public void googleMapDownloadClicked(View view) {
        startActivity(new Intent(this, GoogleMapDownLoadedActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_offline_map_type_select);
        ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.offlinemap_download));
        findViewById(R.id.title_bar_left).setOnClickListener(new a());
        w();
    }
}
