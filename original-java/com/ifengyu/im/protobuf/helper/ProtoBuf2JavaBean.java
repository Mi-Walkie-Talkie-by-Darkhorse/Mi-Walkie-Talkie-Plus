package com.ifengyu.im.protobuf.helper;

import com.ifengyu.im.DB.entity.DepartmentEntity;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.GroupMember;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.entity.UnreadEntity;
import com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.DepartmentStatusType;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupModifyType;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupType;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupUserInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.MsgType;
import com.ifengyu.im.protobuf.IMBaseDefine.SessionType;
import com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.UserInfo;
import com.ifengyu.im.protobuf.IMGroup.IMGroupCreateRsp;
import com.ifengyu.im.utils.pinyin.PinYin;

public class ProtoBuf2JavaBean {
    public static DepartmentEntity getDepartEntity(DepartInfo departInfo) {
        DepartmentEntity departmentEntity = new DepartmentEntity();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        departmentEntity.setDepartId(departInfo.getDeptId());
        departmentEntity.setDepartName(departInfo.getDeptName());
        departmentEntity.setPriority(departInfo.getPriority());
        departmentEntity.setStatus(getDepartStatus(departInfo.getDeptStatus()));
        departmentEntity.setCreated(currentTimeMillis);
        departmentEntity.setUpdated(currentTimeMillis);
        PinYin.getPinYin(departInfo.getDeptName(), departmentEntity.getPinyinElement());
        return departmentEntity;
    }

    public static GroupMember getInGroupUserEntity(GroupUserInfo groupUserInfo) {
        GroupMember groupMember = new GroupMember();
        groupMember.setGroupId(groupUserInfo.getGroupId());
        groupMember.setUserId(groupUserInfo.getUserId());
        groupMember.setGroupNick(groupUserInfo.getNickNameIngroup());
        groupMember.setJoinTime(groupUserInfo.getCreatedTime());
        return groupMember;
    }

    public static UserEntity getUserEntity(UserInfo userInfo) {
        UserEntity userEntity = new UserEntity();
        long currentTimeMillis = System.currentTimeMillis();
        userEntity.setStatus(userInfo.getStatus());
        userEntity.setAvatar(userInfo.getAvatarUrl());
        userEntity.setCreated(currentTimeMillis);
        userEntity.setDepartmentId(userInfo.getDepartmentId());
        userEntity.setEmail(userInfo.getEmail());
        userEntity.setGender(userInfo.getUserGender());
        userEntity.setMainName(userInfo.getUserNickName());
        userEntity.setPhone(userInfo.getUserTel());
        userEntity.setPinyinName(userInfo.getUserDomain());
        userEntity.setRealName(userInfo.getUserRealName());
        userEntity.setUpdated(currentTimeMillis);
        userEntity.setPeerId(userInfo.getUserId());
        PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
        return userEntity;
    }

    public static UserEntity getUserEntity(GroupUserInfo groupUserInfo) {
        UserEntity userEntity = new UserEntity();
        long currentTimeMillis = System.currentTimeMillis();
        userEntity.setStatus(groupUserInfo.getStatus());
        userEntity.setAvatar(groupUserInfo.getAvatarUrl());
        userEntity.setCreated(currentTimeMillis);
        userEntity.setDepartmentId(groupUserInfo.getDepartmentId());
        userEntity.setEmail(groupUserInfo.getEmail());
        userEntity.setGender(groupUserInfo.getUserGender());
        userEntity.setMainName(groupUserInfo.getUserNickName());
        userEntity.setPhone(groupUserInfo.getUserTel());
        userEntity.setPinyinName(groupUserInfo.getUserDomain());
        userEntity.setRealName(groupUserInfo.getUserRealName());
        userEntity.setUpdated(currentTimeMillis);
        userEntity.setPeerId(groupUserInfo.getUserId());
        PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
        return userEntity;
    }

    public static UserEntity getUserEntity(com.ifengyu.im.account.UserInfo userInfo) {
        UserEntity userEntity = new UserEntity();
        long currentTimeMillis = System.currentTimeMillis();
        userEntity.setAvatar(userInfo.avatar);
        userEntity.setCreated(currentTimeMillis);
        userEntity.setEmail(userInfo.email);
        userEntity.setGender("male".equals(userInfo.gender) ? 1 : 0);
        userEntity.setMainName(userInfo.nickname);
        userEntity.setPhone(userInfo.phone);
        userEntity.setUpdated(currentTimeMillis);
        userEntity.setPeerId(Integer.parseInt(userInfo.userId));
        PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
        return userEntity;
    }

    public static GroupEntity getGroupEntity(GroupInfo groupInfo) {
        GroupEntity groupEntity = new GroupEntity();
        long currentTimeMillis = System.currentTimeMillis();
        groupEntity.setUpdated(currentTimeMillis);
        groupEntity.setCreated(currentTimeMillis);
        groupEntity.setMainName(groupInfo.getGroupName());
        groupEntity.setAvatar(groupInfo.getGroupAvatar());
        groupEntity.setCreatorId(groupInfo.getGroupCreatorId());
        groupEntity.setPeerId(groupInfo.getGroupId());
        groupEntity.setGroupType(getJavaGroupType(groupInfo.getGroupType()));
        groupEntity.setStatus(groupInfo.getShieldStatus());
        groupEntity.setUserCnt(groupInfo.getGroupMemberListCount());
        groupEntity.setVersion(groupInfo.getVersion());
        groupEntity.setlistGroupMemberIds(groupInfo.getGroupMemberListList());
        PinYin.getPinYin(groupEntity.getMainName(), groupEntity.getPinyinElement());
        return groupEntity;
    }

    public static GroupEntity getGroupEntity(IMGroupCreateRsp iMGroupCreateRsp) {
        GroupEntity groupEntity = new GroupEntity();
        long currentTimeMillis = System.currentTimeMillis();
        groupEntity.setMainName(iMGroupCreateRsp.getGroupName());
        groupEntity.setlistGroupMemberIds(iMGroupCreateRsp.getUserIdListList());
        groupEntity.setCreatorId(iMGroupCreateRsp.getUserId());
        groupEntity.setPeerId(iMGroupCreateRsp.getGroupId());
        groupEntity.setUpdated(currentTimeMillis);
        groupEntity.setCreated(currentTimeMillis);
        groupEntity.setAvatar(iMGroupCreateRsp.getGroupAvatar());
        groupEntity.setGroupType(2);
        groupEntity.setStatus(0);
        groupEntity.setUserCnt(iMGroupCreateRsp.getUserIdListCount());
        groupEntity.setVersion(1);
        PinYin.getPinYin(groupEntity.getMainName(), groupEntity.getPinyinElement());
        return groupEntity;
    }

    public static UnreadEntity getUnreadEntity(UnreadInfo unreadInfo) {
        UnreadEntity unreadEntity = new UnreadEntity();
        unreadEntity.setSessionType(getJavaSessionType(unreadInfo.getSessionType()));
        unreadEntity.setLatestMsgData(unreadInfo.getLatestMsgData().toString());
        unreadEntity.setPeerId(unreadInfo.getSessionId());
        unreadEntity.setLaststMsgId(unreadInfo.getLatestMsgId());
        unreadEntity.setUnReadCnt(unreadInfo.getUnreadCnt());
        unreadEntity.buildSessionKey();
        return unreadEntity;
    }

    public static int getJavaMsgType(MsgType msgType) {
        switch (msgType) {
            case MSG_TYPE_GROUP_TEXT:
                return 17;
            case MSG_TYPE_GROUP_AUDIO:
                return 18;
            case MSG_TYPE_SINGLE_AUDIO:
                return 2;
            case MSG_TYPE_SINGLE_TEXT:
                return 1;
            default:
                throw new IllegalArgumentException("msgType is illegal,cause by #getProtoMsgType#" + msgType);
        }
    }

    public static int getJavaSessionType(SessionType sessionType) {
        switch (sessionType) {
            case SESSION_TYPE_SINGLE:
                return 1;
            case SESSION_TYPE_GROUP:
                return 2;
            default:
                throw new IllegalArgumentException("sessionType is illegal,cause by #getProtoSessionType#" + sessionType);
        }
    }

    public static int getJavaGroupType(GroupType groupType) {
        switch (groupType) {
            case GROUP_TYPE_NORMAL:
                return 1;
            case GROUP_TYPE_TMP:
                return 2;
            default:
                throw new IllegalArgumentException("sessionType is illegal,cause by #getProtoSessionType#" + groupType);
        }
    }

    public static int getGroupChangeType(GroupModifyType groupModifyType) {
        switch (groupModifyType) {
            case GROUP_MODIFY_TYPE_ADD:
                return 0;
            case GROUP_MODIFY_TYPE_DEL:
                return 1;
            default:
                throw new IllegalArgumentException("GroupModifyType is illegal,cause by " + groupModifyType);
        }
    }

    public static int getDepartStatus(DepartmentStatusType departmentStatusType) {
        switch (departmentStatusType) {
            case DEPT_STATUS_OK:
                return 0;
            case DEPT_STATUS_DELETE:
                return 1;
            default:
                throw new IllegalArgumentException("getDepartStatus is illegal,cause by " + departmentStatusType);
        }
    }
}
