package com.ifengyu.intercom.ui.imui.ui.chat.session.helper;

import com.ifengyu.im.imservice.entity.NotifyCommand;
import com.ifengyu.im.imservice.entity.NotifyCommand.MsgBody;
import com.ifengyu.im.imservice.entity.NotifyCommand.MsgBody.UserInfo;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.protobuf.helper.MessageParseEngine;
import com.ifengyu.library.util.c;
import java.util.List;

public class TeamNotificationHelper {
    private static final String TAG = TeamNotificationHelper.class.getSimpleName();

    public static String getTeamNotificationText(MessageEntity messageEntity, String str) {
        String str2;
        NotifyCommand notifyCommand = MessageParseEngine.parseGroupNotifyMsg(messageEntity).command;
        if (notifyCommand == null) {
            c.d(TAG, "notifyCommand is null,return empty str");
            return "";
        }
        if (notifyCommand.commandId == 1037) {
            MsgBody msgBody = notifyCommand.msgBody;
            switch (msgBody.changeType) {
                case 1:
                    List userInfoList = msgBody.getUserInfoList();
                    if (userInfoList != null && userInfoList.size() > 0) {
                        notifyCommand.setDisplayContent(String.format("\"%s\"加入了群聊", new Object[]{((UserInfo) userInfoList.get(0)).getNickName()}));
                        break;
                    }
                case 2:
                    List userInfoList2 = msgBody.getUserInfoList();
                    if (userInfoList2 != null && userInfoList2.size() > 0) {
                        UserInfo userInfo = (UserInfo) userInfoList2.get(0);
                        String str3 = "";
                        if (msgBody.leaveType == 1) {
                            str2 = String.format("\"%s\"退出了群聊", new Object[]{userInfo.getNickName()});
                        } else if (msgBody.leaveType == 2) {
                            str2 = String.format("\"%s\"被移出了群聊", new Object[]{userInfo.getNickName()});
                        } else {
                            str2 = str3;
                        }
                        notifyCommand.setDisplayContent(str2);
                        break;
                    }
            }
        }
        return null;
    }
}
