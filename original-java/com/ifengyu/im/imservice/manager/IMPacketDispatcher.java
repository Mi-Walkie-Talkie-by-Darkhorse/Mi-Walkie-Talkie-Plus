package com.ifengyu.im.imservice.manager;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.CodedInputStream;
import com.ifengyu.im.protobuf.IMBuddy.IMAllUserRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMDepartmentRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMPCLoginStatusNotify;
import com.ifengyu.im.protobuf.IMBuddy.IMRecentContactSessionRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMRemoveSessionRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMUsersInfoRsp;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToApplicantRspNotify;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToCreatorNotify;
import com.ifengyu.im.protobuf.IMGroup.IMChangeNickNameInGroupNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupChangeMemberNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupInfoChangeNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupInfoListRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupUserInfoRsp;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupReqNotify;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupRspNotify;
import com.ifengyu.im.protobuf.IMGroup.IMNormalGroupListRsp;
import com.ifengyu.im.protobuf.IMGroup.IMQueryGroupImInRsp;
import com.ifengyu.im.protobuf.IMLogin.IMKickUser;
import com.ifengyu.im.protobuf.IMLogin.IMLogoutRsp;
import com.ifengyu.im.protobuf.IMMessage.IMGetMsgByIdRsp;
import com.ifengyu.im.protobuf.IMMessage.IMGetMsgListRsp;
import com.ifengyu.im.protobuf.IMMessage.IMMsgData;
import com.ifengyu.im.protobuf.IMMessage.IMMsgDataReadNotify;
import com.ifengyu.im.protobuf.IMMessage.IMUnreadMsgCntRsp;
import com.ifengyu.im.utils.Logger;
import java.io.IOException;

public class IMPacketDispatcher {
    private static Logger logger = Logger.getLogger(IMPacketDispatcher.class);

    public static void loginPacketDispatcher(int i, CodedInputStream codedInputStream) {
        switch (i) {
            case 262:
                try {
                    IMLoginManager.instance().onRepLoginOut(IMLogoutRsp.parseFrom(codedInputStream));
                    return;
                } catch (IOException e) {
                    logger.e("loginPacketDispatcher# error,cid:%d", Integer.valueOf(i));
                }
            case 263:
                IMLoginManager.instance().onKickout(IMKickUser.parseFrom(codedInputStream));
                return;
            default:
                return;
        }
        logger.e("loginPacketDispatcher# error,cid:%d", Integer.valueOf(i));
    }

    public static void buddyPacketDispatcher(int i, CodedInputStream codedInputStream) {
        switch (i) {
            case 514:
                IMRecentContactSessionRsp.parseFrom(codedInputStream);
                return;
            case 517:
                IMContactManager.instance().onRepDetailUsers(IMUsersInfoRsp.parseFrom(codedInputStream));
                return;
            case 519:
                IMRemoveSessionRsp.parseFrom(codedInputStream);
                return;
            case 521:
                try {
                    IMContactManager.instance().onRepAllUsers(IMAllUserRsp.parseFrom(codedInputStream));
                    return;
                } catch (IOException e) {
                    logger.e("buddyPacketDispatcher# error,cid:%d", Integer.valueOf(i));
                }
            case 526:
                IMLoginManager.instance().onLoginStatusNotify(IMPCLoginStatusNotify.parseFrom(codedInputStream));
                return;
            case 529:
                IMContactManager.instance().onRepDepartment(IMDepartmentRsp.parseFrom(codedInputStream));
                return;
            default:
                return;
        }
        logger.e("buddyPacketDispatcher# error,cid:%d", Integer.valueOf(i));
    }

    public static void msgPacketDispatcher(int i, CodedInputStream codedInputStream) {
        switch (i) {
            case CID_MSG_DATA_VALUE:
                IMMsgData.parseFrom(codedInputStream);
                return;
            case CID_MSG_READ_NOTIFY_VALUE:
                IMMsgDataReadNotify.parseFrom(codedInputStream);
                return;
            case CID_MSG_UNREAD_CNT_RESPONSE_VALUE:
                IMUnreadMsgCntRsp.parseFrom(codedInputStream);
                return;
            case CID_MSG_LIST_RESPONSE_VALUE:
                try {
                    IMGetMsgListRsp.parseFrom(codedInputStream);
                    return;
                } catch (IOException e) {
                    logger.e("msgPacketDispatcher# error,cid:%d", Integer.valueOf(i));
                }
            case CID_MSG_GET_BY_MSG_ID_RES_VALUE:
                IMGetMsgByIdRsp.parseFrom(codedInputStream);
                return;
            default:
                return;
        }
        logger.e("msgPacketDispatcher# error,cid:%d", Integer.valueOf(i));
    }

    public static void groupPacketDispatcher(int i, CodedInputStream codedInputStream) {
        switch (i) {
            case 1026:
                IMGroupManager.instance().onRespQueryGroupList(IMQueryGroupImInRsp.parseFrom(codedInputStream));
                return;
            case 1028:
                try {
                    IMGroupManager.instance().onRepNormalGroupList(IMNormalGroupListRsp.parseFrom(codedInputStream));
                    return;
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    logger.e("groupPacketDispatcher# error,cid:%d", Integer.valueOf(i));
                }
            case CID_GROUP_INFO_RESPONSE_VALUE:
                IMGroupManager.instance().onRepGroupDetailInfo(IMGroupInfoListRsp.parseFrom(codedInputStream));
                return;
            case CID_GROUP_CHANGE_MEMBER_NOTIFY_VALUE:
                IMGroupManager.instance().receiveGroupChangeMemberNotify(IMGroupChangeMemberNotify.parseFrom(codedInputStream));
                return;
            case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE:
                IMGroupManager.instance().onApplyJoinGroupNotify(IMApplyJoinGroupToCreatorNotify.parseFrom(codedInputStream));
                return;
            case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE:
                IMGroupManager.instance().onReceiveAgreeOrRejectUserJoinGroupNotify(IMApplyJoinGroupToApplicantRspNotify.parseFrom(codedInputStream));
                return;
            case 1052:
                IMGroupManager.instance().onInviteUserJoinGroupNotify(IMInviteUserJoinGroupReqNotify.parseFrom(codedInputStream));
                return;
            case CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE:
                IMGroupManager.instance().onReceiveAgreeOrRejectGroupInviteNotify(IMInviteUserJoinGroupRspNotify.parseFrom(codedInputStream));
                return;
            case CID_GROUP_USER_INFO_RESPONSE_VALUE:
                IMContactManager.instance().onRepGroupMembers(IMGroupUserInfoRsp.parseFrom(codedInputStream));
                return;
            case CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY_VALUE:
                IMContactManager.instance().onUserNicknameChangeInGroupNotify(IMChangeNickNameInGroupNotify.parseFrom(codedInputStream));
                return;
            case CID_GROUP_INFO_CHANGE_NOTIFY_VALUE:
                IMGroupManager.instance().onGroupInfoChangeNotify(IMGroupInfoChangeNotify.parseFrom(codedInputStream));
                return;
            default:
                return;
        }
        ThrowableExtension.printStackTrace(e);
        logger.e("groupPacketDispatcher# error,cid:%d", Integer.valueOf(i));
    }
}
