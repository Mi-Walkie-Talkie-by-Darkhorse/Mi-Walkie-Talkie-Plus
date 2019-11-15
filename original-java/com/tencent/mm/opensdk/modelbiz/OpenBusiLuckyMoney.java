package com.tencent.mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.opensdk.modelbase.BaseReq;

public class OpenBusiLuckyMoney {

    public static class Req extends BaseReq {
        private static final int MAX_URL_LENGHT = 10240;
        public String appId;
        public String nonceStr;
        public String packageExt;
        public String signType;
        public String signature;
        public String timeStamp;

        public boolean checkArgs() {
            return this.appId != null && this.appId.length() > 0 && this.timeStamp != null && this.timeStamp.length() > 0 && this.nonceStr != null && this.nonceStr.length() > 0 && this.signType != null && this.signType.length() > 0 && this.signature != null && this.signature.length() > 0;
        }

        public int getType() {
            return 13;
        }

        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_open_busi_lucky_money_appid", this.appId);
            bundle.putString("_wxapi_open_busi_lucky_money_timeStamp", this.timeStamp);
            bundle.putString("_wxapi_open_busi_lucky_money_nonceStr", this.nonceStr);
            bundle.putString("_wxapi_open_busi_lucky_money_signType", this.signType);
            bundle.putString("_wxapi_open_busi_lucky_money_signature", this.signature);
            bundle.putString("_wxapi_open_busi_lucky_money_package", this.packageExt);
        }
    }
}
