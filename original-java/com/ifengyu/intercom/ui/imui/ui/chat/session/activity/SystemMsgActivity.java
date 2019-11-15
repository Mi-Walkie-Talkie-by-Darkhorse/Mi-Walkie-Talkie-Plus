package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import butterknife.BindView;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.entity.ApplyNotify;
import com.ifengyu.im.imservice.entity.InviteNotify;
import com.ifengyu.im.imservice.entity.NotifyCommand;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.protobuf.helper.EntityChangeEngine;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.base.a;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import io.reactivex.k;
import io.reactivex.s;
import java.util.List;

public class SystemMsgActivity extends BaseActivity {
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755389)
    RecyclerViewEmptySupport mRvMsgList;
    /* access modifiers changed from: private */
    public SystemMsgAdapter mSystemMsgAdapter;
    @BindView(2131755370)
    TextView mTvEmptyView;
    @BindView(2131755443)
    TextView mTvTitle;

    class SystemMsgAdapter extends BaseRecyclerAdapter<MessageEntity> {
        SystemMsgAdapter(Context context, List<MessageEntity> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.im_sytem_message_list_item;
        }

        public void bindData(a aVar, int i, MessageEntity messageEntity) {
            int i2 = 8;
            aVar.b(R.id.top_line, i == 0 ? 0 : 8);
            NotifyCommand command = messageEntity.getCommand();
            switch (command.commandId) {
                case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE:
                    aVar.a((int) R.id.tv_nick_name, command.msgBody.reqUserName);
                    aVar.a((int) R.id.tv_last_msg, command.displayContent);
                    aVar.b(R.id.btn_reply, messageEntity.status == 4 ? 0 : 8);
                    if (messageEntity.status != 4) {
                        i2 = 0;
                    }
                    aVar.b(R.id.tv_status, i2);
                    aVar.a((int) R.id.btn_reply, "同意");
                    aVar.a((int) R.id.tv_status, "已同意");
                    aVar.a((int) R.id.btn_reply, (OnClickListener) new SystemMsgActivity$SystemMsgAdapter$$Lambda$1(this, messageEntity));
                    aVar.a((int) R.id.iv_avatar, (int) R.drawable.system_icon_apply);
                    return;
                case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE:
                    aVar.a((int) R.id.tv_nick_name, TextUtils.isEmpty(command.msgBody.creatorName) ? String.valueOf(command.msgBody.creatorId) : command.msgBody.creatorName);
                    aVar.a((int) R.id.tv_last_msg, command.displayContent);
                    aVar.b(R.id.btn_reply, 8);
                    aVar.b(R.id.tv_status, 8);
                    aVar.a((int) R.id.iv_avatar, command.msgBody.resultCode == 0 ? R.drawable.system_icon_apply : R.drawable.system_icon_refuse);
                    return;
                case 1052:
                    aVar.a((int) R.id.tv_nick_name, command.msgBody.reqUserName);
                    aVar.a((int) R.id.tv_last_msg, command.displayContent);
                    aVar.b(R.id.btn_reply, messageEntity.status == 4 ? 0 : 8);
                    if (messageEntity.status != 4) {
                        i2 = 0;
                    }
                    aVar.b(R.id.tv_status, i2);
                    aVar.a((int) R.id.btn_reply, "加入");
                    aVar.a((int) R.id.tv_status, "已加入");
                    aVar.a((int) R.id.btn_reply, (OnClickListener) new SystemMsgActivity$SystemMsgAdapter$$Lambda$0(this, messageEntity));
                    aVar.a((int) R.id.iv_avatar, (int) R.drawable.system_icon_invite);
                    return;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE:
                    aVar.a((int) R.id.tv_nick_name, command.msgBody.inviteUserName);
                    aVar.a((int) R.id.tv_last_msg, command.displayContent);
                    aVar.b(R.id.btn_reply, 8);
                    aVar.b(R.id.tv_status, 8);
                    aVar.a((int) R.id.iv_avatar, command.msgBody.resultCode == 0 ? R.drawable.system_icon_invite : R.drawable.system_icon_refuse);
                    return;
                default:
                    return;
            }
        }

        /* access modifiers changed from: 0000 */
        public final /* synthetic */ void lambda$bindData$0$SystemMsgActivity$SystemMsgAdapter(MessageEntity messageEntity, View view) {
            SystemMsgActivity.this.agreeOrRejectInvite(messageEntity, true);
        }

        /* access modifiers changed from: 0000 */
        public final /* synthetic */ void lambda$bindData$1$SystemMsgActivity$SystemMsgAdapter(MessageEntity messageEntity, View view) {
            SystemMsgActivity.this.agreeOrRegectApply(messageEntity, true);
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, SystemMsgActivity.class));
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_system_msg;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mTvTitle.setText(R.string.chat_system_message);
        this.mSystemMsgAdapter = new SystemMsgAdapter(this, null);
        this.mRvMsgList.setEmptyView(this.mTvEmptyView);
        this.mRvMsgList.setAdapter(this.mSystemMsgAdapter);
        this.mRvMsgList.setLayoutManager(new LinearLayoutManagerWapper(this, 1, false));
        IMUnreadMsgManager.instance().readUnreadSession(EntityChangeEngine.getSessionKey(1, 1));
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"CheckResult"})
    public void initData() {
        s a = k.defer(new SystemMsgActivity$$Lambda$0(this)).map(SystemMsgActivity$$Lambda$1.$instance).filter(SystemMsgActivity$$Lambda$2.$instance).toList().b(io.reactivex.e.a.b()).a(io.reactivex.a.b.a.a());
        SystemMsgAdapter systemMsgAdapter = this.mSystemMsgAdapter;
        systemMsgAdapter.getClass();
        a.a(SystemMsgActivity$$Lambda$3.get$Lambda(systemMsgAdapter), new SystemMsgActivity$$Lambda$4(this));
    }

    static final /* synthetic */ boolean lambda$initData$0$SystemMsgActivity(MessageEntity messageEntity) {
        NotifyCommand notifyCommand = messageEntity.command;
        if (notifyCommand == null) {
            return false;
        }
        int i = notifyCommand.commandId;
        if (i == 1052 || i == 1055 || i == 1046 || i == 1049) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initData$1$SystemMsgActivity(Throwable th) throws Exception {
        c.d(this.TAG, th.toString());
    }

    /* access modifiers changed from: private */
    /* renamed from: getSystemMsg */
    public k<MessageEntity> bridge$lambda$0$SystemMsgActivity() {
        return k.fromIterable(DBInterface.instance().getAllSystemMsg());
    }

    /* access modifiers changed from: protected */
    public void initListener() {
        this.mIbLeft.setOnClickListener(new SystemMsgActivity$$Lambda$5(this));
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initListener$2$SystemMsgActivity(View view) {
        finish();
    }

    /* access modifiers changed from: private */
    public void agreeOrRejectInvite(final MessageEntity messageEntity, boolean z) {
        NotifyCommand command = messageEntity.getCommand();
        UserEntity loginInfo = IMLoginManager.instance().getLoginInfo();
        InviteNotify inviteNotify = new InviteNotify();
        inviteNotify.setGroupId(command.msgBody.groupId);
        inviteNotify.setGroupName(command.msgBody.groupName);
        inviteNotify.setInvitedUserId(command.msgBody.inviteUserId);
        inviteNotify.setInvitedUserName(loginInfo == null ? "" : loginInfo.getMainName());
        inviteNotify.setReqUserId(command.msgBody.reqUserId);
        IMGroupManager.instance().rspAcceptOrRejectGroupInvite(inviteNotify, z, new Packetlistener() {
            public void onSuccess(Object obj) {
                messageEntity.setStatus(3);
                DBInterface.instance().insertOrUpdateMessage(messageEntity);
                if (SystemMsgActivity.this.isActivated()) {
                    SystemMsgActivity.this.mSystemMsgAdapter.notifyDataSetChanged();
                }
            }

            public void onFaild() {
                l.a((CharSequence) "发送失败");
            }

            public void onTimeout() {
                l.a((CharSequence) "发送超时");
            }
        });
    }

    /* access modifiers changed from: private */
    public void agreeOrRegectApply(final MessageEntity messageEntity, boolean z) {
        NotifyCommand command = messageEntity.getCommand();
        ApplyNotify applyNotify = new ApplyNotify();
        applyNotify.setCreatorId(command.msgBody.creatorId);
        applyNotify.setGroupId(command.msgBody.groupId);
        applyNotify.setGroupName(command.msgBody.groupName);
        applyNotify.setReqUserId(command.msgBody.reqUserId);
        IMGroupManager.instance().rspApplyJoinGroup(applyNotify, z, new Packetlistener() {
            public void onSuccess(Object obj) {
                messageEntity.setStatus(3);
                DBInterface.instance().insertOrUpdateMessage(messageEntity);
                if (SystemMsgActivity.this.isActivated()) {
                    SystemMsgActivity.this.mSystemMsgAdapter.notifyDataSetChanged();
                }
            }

            public void onFaild() {
                l.a((CharSequence) "发送失败");
            }

            public void onTimeout() {
                l.a((CharSequence) "发送超时");
            }
        });
    }
}
