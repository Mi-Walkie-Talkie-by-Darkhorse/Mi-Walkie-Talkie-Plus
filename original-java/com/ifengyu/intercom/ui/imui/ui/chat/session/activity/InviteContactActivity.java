package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.library.util.l;
import java.util.ArrayList;
import java.util.List;

public class InviteContactActivity extends BaseSearchContactActivity {
    private int mSessionId;

    public static void start(Context context, int i) {
        Intent intent = new Intent(context, InviteContactActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(Extras.EXTRA_SESSION_ID, i);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        super.initBundle(bundle);
        if (bundle != null) {
            this.mSessionId = bundle.getInt(Extras.EXTRA_SESSION_ID);
        }
    }

    /* access modifiers changed from: protected */
    public String getBarTitle() {
        return getString(R.string.invite_contact);
    }

    /* access modifiers changed from: protected */
    public String getRightButtonText() {
        return getString(R.string.common_ok);
    }

    /* access modifiers changed from: protected */
    public void onRightButtonClick() {
        inviteContact();
    }

    private void inviteContact() {
        List<UserEntity> selectedItems = getSelectedItems();
        if (selectedItems.size() == 0) {
            l.a((CharSequence) "还未搜索好友");
            return;
        }
        showTipDiaog();
        ArrayList arrayList = new ArrayList();
        for (UserEntity peerId : selectedItems) {
            arrayList.add(Integer.valueOf(peerId.getPeerId()));
        }
        IMGroupManager.instance().reqInviteUserJoinGroup(this.mSessionId, arrayList, new Packetlistener() {
            public void onSuccess(Object obj) {
                InviteContactActivity.this.hideTipDialog();
                l.a((CharSequence) "已发出好友邀请");
                InviteContactActivity.this.finish();
            }

            public void onFaild() {
                InviteContactActivity.this.hideTipDialog();
            }

            public void onTimeout() {
                InviteContactActivity.this.hideTipDialog();
                l.c(R.string.no_network_error_toast);
            }
        });
    }
}
