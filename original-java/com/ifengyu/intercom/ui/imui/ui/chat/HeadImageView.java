package com.ifengyu.intercom.ui.imui.ui.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.c;
import com.bumptech.glide.request.d;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.QMUIRadiusImageView;
import com.mi.milinkforgame.sdk.base.os.Http;

public class HeadImageView extends QMUIRadiusImageView {
    public HeadImageView(Context context) {
        super(context);
    }

    public HeadImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HeadImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void loadBuddyAvatar(Object obj) {
        if (obj instanceof MessageEntity) {
            UserEntity findContact = IMContactManager.instance().findContact(Integer.parseInt(((MessageEntity) obj).getFromId()));
            if (findContact != null) {
                String avatar = findContact.getAvatar();
                if (avatar == null) {
                    return;
                }
                if (avatar.startsWith(Http.PROTOCOL_PREFIX) || avatar.startsWith("https://")) {
                    c.a((View) this).a((Object) avatar).a(new d().a((int) R.drawable.my_head_default).b((int) R.drawable.my_head_default)).a((ImageView) this);
                }
            }
        }
    }
}
