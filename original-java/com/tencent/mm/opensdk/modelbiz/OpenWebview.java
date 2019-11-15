package com.tencent.mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import java.net.URLEncoder;

public class OpenWebview {

    public static class Req extends BaseReq {
        private static final int MAX_URL_LENGHT = 10240;
        public String url;

        public boolean checkArgs() {
            return this.url != null && this.url.length() >= 0 && this.url.length() <= MAX_URL_LENGHT;
        }

        public int getType() {
            return 12;
        }

        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_jump_to_webview_url", URLEncoder.encode(this.url));
        }
    }

    public static class Resp extends BaseResp {
        public String result;

        public Resp() {
        }

        public Resp(Bundle bundle) {
            fromBundle(bundle);
        }

        public boolean checkArgs() {
            return true;
        }

        public void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.result = bundle.getString("_wxapi_open_webview_result");
        }

        public int getType() {
            return 12;
        }

        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_open_webview_result", this.result);
        }
    }
}
