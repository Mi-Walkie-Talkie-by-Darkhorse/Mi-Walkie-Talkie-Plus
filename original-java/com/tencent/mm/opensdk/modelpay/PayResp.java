package com.tencent.mm.opensdk.modelpay;

import android.os.Bundle;
import com.tencent.mm.opensdk.modelbase.BaseResp;

public class PayResp extends BaseResp {
    public String extData;
    public String prepayId;
    public String returnKey;

    public PayResp() {
    }

    public PayResp(Bundle bundle) {
        fromBundle(bundle);
    }

    public boolean checkArgs() {
        return true;
    }

    public void fromBundle(Bundle bundle) {
        super.fromBundle(bundle);
        this.prepayId = bundle.getString("_wxapi_payresp_prepayid");
        this.returnKey = bundle.getString("_wxapi_payresp_returnkey");
        this.extData = bundle.getString("_wxapi_payresp_extdata");
    }

    public int getType() {
        return 5;
    }

    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putString("_wxapi_payresp_prepayid", this.prepayId);
        bundle.putString("_wxapi_payresp_returnkey", this.returnKey);
        bundle.putString("_wxapi_payresp_extdata", this.extData);
    }
}
