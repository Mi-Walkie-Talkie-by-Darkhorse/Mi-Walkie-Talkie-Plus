package com.ifengyu.im.imservice.manager;

import android.text.TextUtils;
import com.ifengyu.im.DB.entity.GroupMember;
import com.ifengyu.im.DB.entity.UserEntity;

public class GroupHelper {
    public static String getGroupMemberDisplayName(int i, int i2) {
        String groupNick = getGroupNick(i, i2);
        return !TextUtils.isEmpty(groupNick) ? groupNick : getUserName(i2);
    }

    public static String getGroupNick(int i, int i2) {
        GroupMember findUserInGroup = IMContactManager.instance().findUserInGroup(i, i2);
        if (findUserInGroup == null || TextUtils.isEmpty(findUserInGroup.getGroupNick())) {
            return null;
        }
        return findUserInGroup.getGroupNick();
    }

    public static String getUserName(int i) {
        UserEntity findContact = IMContactManager.instance().findContact(i);
        if (findContact == null || TextUtils.isEmpty(findContact.getMainName())) {
            return String.valueOf(i);
        }
        return findContact.getMainName();
    }
}
