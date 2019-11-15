package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.content.Context;
import android.content.Intent;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.account.UserCache;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.im.imservice.event.GroupEvent;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import java.util.ArrayList;
import java.util.List;

public class CreateGroupActivity extends BaseSearchContactActivity {
    public static void start(Context context) {
        context.startActivity(new Intent(context, CreateGroupActivity.class));
    }

    /* access modifiers changed from: protected */
    public void initListener() {
        super.initListener();
        c.a(this.TAG, "initListener");
        de.greenrobot.event.c.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        de.greenrobot.event.c.a().d(this);
    }

    /* access modifiers changed from: protected */
    public String getBarTitle() {
        return getString(R.string.create_group);
    }

    /* access modifiers changed from: protected */
    public String getRightButtonText() {
        return getString(R.string.create);
    }

    /* access modifiers changed from: protected */
    public void onRightButtonClick() {
        c.a(this.TAG, "onRightButtonClick");
        createGroup();
    }

    private void createGroup() {
        List selectedItems = getSelectedItems();
        if (selectedItems.size() == 0) {
            l.a((CharSequence) "还未搜索好友");
            return;
        }
        UserInfo userInfo = UserCache.instance().getUserInfo();
        String str = userInfo == null ? "" : userInfo.nickname;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < selectedItems.size()) {
                arrayList.add(Integer.valueOf(((UserEntity) selectedItems.get(i2)).getPeerId()));
                i = i2 + 1;
            } else {
                showTipDiaog();
                IMGroupManager.instance().reqCreateTempGroup(str, arrayList);
                return;
            }
        }
    }

    public void onEventMainThread(GroupEvent groupEvent) {
        hideTipDialog();
        switch (groupEvent.getEvent()) {
            case CREATE_GROUP_OK:
                l.a((CharSequence) "创建成功");
                finish();
                return;
            default:
                return;
        }
    }
}
