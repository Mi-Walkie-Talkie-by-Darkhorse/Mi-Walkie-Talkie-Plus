package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.library.widget.dialog.a.C0041a;

final /* synthetic */ class ChatRoomInfoFragment$$Lambda$3 implements OnClickListener {
    private final ChatRoomInfoFragment arg$1;
    private final C0041a arg$2;
    private final String arg$3;

    ChatRoomInfoFragment$$Lambda$3(ChatRoomInfoFragment chatRoomInfoFragment, C0041a aVar, String str) {
        this.arg$1 = chatRoomInfoFragment;
        this.arg$2 = aVar;
        this.arg$3 = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.arg$1.lambda$showMyNicknameInGroupDialog$3$ChatRoomInfoFragment(this.arg$2, this.arg$3, dialogInterface, i);
    }
}
