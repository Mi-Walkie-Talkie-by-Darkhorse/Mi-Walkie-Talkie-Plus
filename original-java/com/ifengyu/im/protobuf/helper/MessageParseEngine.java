package com.ifengyu.im.protobuf.helper;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.ifengyu.im.imservice.entity.NotifyCommand;
import com.ifengyu.im.imservice.entity.NotifyCommand.MsgBody;
import com.ifengyu.im.imservice.entity.NotifyCommand.MsgBody.UserInfo;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.library.util.c;
import java.util.List;

public class MessageParseEngine {
    private static final String TAG = MessageParseEngine.class.getSimpleName();

    public static NotifyCommand parseGroupNotifyMsg(String str) {
        String str2;
        String str3;
        String str4;
        if (TextUtils.isEmpty(str)) {
            c.d(TAG, "json string is empty");
            return null;
        }
        try {
            NotifyCommand notifyCommand = (NotifyCommand) new Gson().fromJson(str, NotifyCommand.class);
            switch (notifyCommand.commandId) {
                case CID_GROUP_CHANGE_MEMBER_NOTIFY_VALUE:
                    MsgBody msgBody = notifyCommand.msgBody;
                    if (msgBody.changeType == 1) {
                        List userInfoList = msgBody.getUserInfoList();
                        if (userInfoList == null || userInfoList.size() <= 0) {
                            return notifyCommand;
                        }
                        notifyCommand.setDisplayContent(String.format("\"%s\"加入了群聊", new Object[]{((UserInfo) userInfoList.get(0)).getNickName()}));
                        return notifyCommand;
                    } else if (msgBody.changeType != 2) {
                        return notifyCommand;
                    } else {
                        List userInfoList2 = msgBody.getUserInfoList();
                        if (userInfoList2 == null || userInfoList2.size() <= 0) {
                            return notifyCommand;
                        }
                        UserInfo userInfo = (UserInfo) userInfoList2.get(0);
                        String str5 = "";
                        if (msgBody.leaveType == 1) {
                            str4 = String.format("\"%s\"退出了群聊", new Object[]{userInfo.getNickName()});
                        } else if (msgBody.leaveType == 2) {
                            str4 = String.format("\"%s\"被移出了群聊", new Object[]{userInfo.getNickName()});
                        } else {
                            str4 = str5;
                        }
                        notifyCommand.setDisplayContent(str4);
                        return notifyCommand;
                    }
                case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE:
                    notifyCommand.setDisplayName(notifyCommand.msgBody.reqUserName);
                    notifyCommand.setDisplayContent(String.format("申请加入群组「%s」", new Object[]{notifyCommand.msgBody.groupName}));
                    return notifyCommand;
                case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE:
                    if (notifyCommand.msgBody.getResultCode() == 0) {
                        str2 = "同意了您的加群申请";
                    } else {
                        str2 = "拒绝了您的加群申请";
                    }
                    notifyCommand.setDisplayContent(str2);
                    notifyCommand.setDisplayName(notifyCommand.msgBody.creatorName);
                    return notifyCommand;
                case 1052:
                    notifyCommand.setDisplayName(notifyCommand.msgBody.reqUserName);
                    notifyCommand.setDisplayContent(String.format("邀请您加入群组「%s」", new Object[]{notifyCommand.msgBody.groupName}));
                    return notifyCommand;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE:
                    if (notifyCommand.msgBody.getResultCode() == 0) {
                        str3 = "同意了您的加群邀请";
                    } else {
                        str3 = "拒绝了您的加群邀请";
                    }
                    notifyCommand.setDisplayName(notifyCommand.msgBody.inviteUserName);
                    notifyCommand.setDisplayContent(str3);
                    return notifyCommand;
                default:
                    return notifyCommand;
            }
        } catch (JsonSyntaxException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static MessageEntity parseGroupNotifyMsg(MessageEntity messageEntity) {
        messageEntity.setCommand(parseGroupNotifyMsg(messageEntity.getContent()));
        return messageEntity;
    }
}
