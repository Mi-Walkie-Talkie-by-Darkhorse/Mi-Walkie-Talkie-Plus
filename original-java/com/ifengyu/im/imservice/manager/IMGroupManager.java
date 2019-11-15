package com.ifengyu.im.imservice.manager;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.CodedInputStream;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.entity.ApplyNotify;
import com.ifengyu.im.imservice.entity.InviteNotify;
import com.ifengyu.im.imservice.event.GroupEvent;
import com.ifengyu.im.imservice.event.GroupEvent.Event;
import com.ifengyu.im.imservice.event.GroupNotifyEvent;
import com.ifengyu.im.imservice.event.SessionEvent;
import com.ifengyu.im.imservice.services.IMSessionManager;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupModifyType;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupType;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupVersionInfo;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToApplicantRsp;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToApplicantRspNotify;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToCreatorNotify;
import com.ifengyu.im.protobuf.IMGroup.IMApplyJoinGroupToCreatorReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupChangeMemberNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupChangeMemberReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupChangeMemberRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupCreateReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupCreateReq.Builder;
import com.ifengyu.im.protobuf.IMGroup.IMGroupCreateRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupInfoChangeNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupInfoListReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupInfoListRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupLeaveGroupReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupLeaveGroupRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupShieldReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupShieldRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupTransferCreatorReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupTransferCreatorRsp;
import com.ifengyu.im.protobuf.IMGroup.IMGroupUpdateGroupNameReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupUpdateGroupNameRsp;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupReq;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupReqNotify;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupRsp;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupRspAck;
import com.ifengyu.im.protobuf.IMGroup.IMInviteUserJoinGroupRspNotify;
import com.ifengyu.im.protobuf.IMGroup.IMNormalGroupListReq;
import com.ifengyu.im.protobuf.IMGroup.IMNormalGroupListRsp;
import com.ifengyu.im.protobuf.IMGroup.IMQueryGroupImInReq;
import com.ifengyu.im.protobuf.IMGroup.IMQueryGroupImInRsp;
import com.ifengyu.im.protobuf.helper.EntityChangeEngine;
import com.ifengyu.im.protobuf.helper.ProtoBuf2JavaBean;
import com.ifengyu.im.utils.IMUIHelper;
import com.ifengyu.im.utils.Logger;
import com.ifengyu.im.utils.pinyin.PinYin;
import de.greenrobot.event.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class IMGroupManager extends IMManager {
    private static IMGroupManager inst = new IMGroupManager();
    /* access modifiers changed from: private */
    public DBInterface dbInterface = DBInterface.instance();
    /* access modifiers changed from: private */
    public Map<Integer, GroupEntity> groupMap = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public IMContactManager imContactManager = IMContactManager.instance();
    private IMLoginManager imLoginManager = IMLoginManager.instance();
    private IMSocketManager imSocketManager = IMSocketManager.instance();
    private boolean isGroupReady = false;
    /* access modifiers changed from: private */
    public Logger logger = Logger.getLogger(IMGroupManager.class);

    public static IMGroupManager instance() {
        return inst;
    }

    public void doOnStart() {
    }

    public void onNormalLoginOk() {
        onLocalLoginOk();
        onLocalNetOk();
    }

    public void onLocalLoginOk() {
        this.logger.i("group#loadFromDb", new Object[0]);
        if (!c.a().c(inst)) {
            c.a().b(inst);
        }
        for (GroupEntity groupEntity : this.dbInterface.loadAllGroup()) {
            this.groupMap.put(Integer.valueOf(groupEntity.getPeerId()), groupEntity);
        }
        triggerEvent(new GroupEvent(Event.GROUP_INFO_OK));
    }

    public void onLocalNetOk() {
        reqQueryGroupList();
    }

    public void reset() {
        this.isGroupReady = false;
        this.groupMap.clear();
        c.a().d(inst);
    }

    public void onEvent(SessionEvent sessionEvent) {
        switch (sessionEvent) {
            case RECENT_SESSION_LIST_UPDATE:
                loadSessionGroupInfo();
                return;
            default:
                return;
        }
    }

    private void loadSessionGroupInfo() {
    }

    public synchronized void triggerEvent(GroupEvent groupEvent) {
        switch (groupEvent.getEvent()) {
            case GROUP_INFO_OK:
                this.isGroupReady = true;
                break;
            case GROUP_INFO_UPDATED:
                this.isGroupReady = true;
                break;
        }
        c.a().g(groupEvent);
    }

    public synchronized void triggerEvent(GroupNotifyEvent groupNotifyEvent) {
        c.a().g(groupNotifyEvent);
    }

    private void reqGetNormalGroupList() {
        this.logger.i("group#reqGetNormalGroupList", new Object[0]);
        this.imSocketManager.sendRequest(IMNormalGroupListReq.newBuilder().setUserId(this.imLoginManager.getLoginId()).build(), 4, 1027);
        this.logger.i("group#send packet to server", new Object[0]);
    }

    public void onRepNormalGroupList(IMNormalGroupListRsp iMNormalGroupListRsp) {
        this.logger.i("group#onRepNormalGroupList", new Object[0]);
        this.logger.i("group#onRepNormalGroupList cnt:%d", Integer.valueOf(iMNormalGroupListRsp.getGroupVersionListCount()));
        List<GroupVersionInfo> groupVersionListList = iMNormalGroupListRsp.getGroupVersionListList();
        ArrayList arrayList = new ArrayList();
        for (GroupVersionInfo groupVersionInfo : groupVersionListList) {
            int groupId = groupVersionInfo.getGroupId();
            int version = groupVersionInfo.getVersion();
            if (!this.groupMap.containsKey(Integer.valueOf(groupId)) || ((GroupEntity) this.groupMap.get(Integer.valueOf(groupId))).getVersion() != version) {
                arrayList.add(GroupVersionInfo.newBuilder().setVersion(0).setGroupId(groupId).build());
            }
        }
        if (arrayList.size() > 0) {
            reqGetGroupDetailInfo(arrayList);
        }
    }

    public void reqGroupDetailInfo(int i, final boolean z, final Packetlistener packetlistener) {
        GroupVersionInfo build = GroupVersionInfo.newBuilder().setGroupId(i).setVersion(0).build();
        ArrayList arrayList = new ArrayList();
        arrayList.add(build);
        this.imSocketManager.sendRequest(IMGroupInfoListReq.newBuilder().setUserId(this.imLoginManager.getLoginId()).addAllGroupVersionList(arrayList).build(), 4, 1029, new Packetlistener() {
            public void onSuccess(Object obj) {
                IMGroupInfoListRsp iMGroupInfoListRsp;
                try {
                    iMGroupInfoListRsp = IMGroupInfoListRsp.parseFrom((CodedInputStream) obj);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    iMGroupInfoListRsp = null;
                }
                if (iMGroupInfoListRsp == null) {
                    IMGroupManager.this.logger.e("reqGroupDetailInfo#groupInfoListRsp is null", new Object[0]);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                    return;
                }
                int groupInfoListCount = iMGroupInfoListRsp.getGroupInfoListCount();
                IMGroupManager.this.logger.i("group#onRepGroupDetailInfo cnt:%d", Integer.valueOf(groupInfoListCount));
                if (groupInfoListCount <= 0) {
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (GroupInfo groupEntity : iMGroupInfoListRsp.getGroupInfoListList()) {
                    GroupEntity groupEntity2 = ProtoBuf2JavaBean.getGroupEntity(groupEntity);
                    IMGroupManager.this.logger.i("group#groupEntity %s", groupEntity2.toString());
                    arrayList.add(groupEntity2);
                }
                GroupEntity groupEntity3 = (GroupEntity) arrayList.get(0);
                IMGroupManager.this.successRunOnUiThread(packetlistener, groupEntity3);
                if (z) {
                    if (((GroupEntity) IMGroupManager.this.groupMap.get(Integer.valueOf(groupEntity3.getPeerId()))) == null) {
                        IMGroupManager.this.dbInterface.insertOrUpdateGroup(groupEntity3);
                        IMGroupManager.this.groupMap.put(Integer.valueOf(groupEntity3.getPeerId()), groupEntity3);
                    }
                    IMSessionManager.instance().updateSession(groupEntity3);
                    IMGroupManager.this.imContactManager.reqGroupMembers(groupEntity3.getPeerId());
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void reqGroupDetailInfo(int i) {
        GroupVersionInfo build = GroupVersionInfo.newBuilder().setGroupId(i).setVersion(0).build();
        ArrayList arrayList = new ArrayList();
        arrayList.add(build);
        reqGetGroupDetailInfo(arrayList);
    }

    public void reqGetGroupDetailInfo(List<GroupVersionInfo> list) {
        this.logger.i("group#reqGetGroupDetailInfo", new Object[0]);
        if (list == null || list.size() <= 0) {
            this.logger.e("group#reqGetGroupDetailInfo# please check your params,cause by empty/null", new Object[0]);
            return;
        }
        this.imSocketManager.sendRequest(IMGroupInfoListReq.newBuilder().setUserId(this.imLoginManager.getLoginId()).addAllGroupVersionList(list).build(), 4, 1029);
    }

    public void onRepGroupDetailInfo(IMGroupInfoListRsp iMGroupInfoListRsp) {
        this.logger.i("group#onRepGroupDetailInfo", new Object[0]);
        int groupInfoListCount = iMGroupInfoListRsp.getGroupInfoListCount();
        int userId = iMGroupInfoListRsp.getUserId();
        int loginId = this.imLoginManager.getLoginId();
        this.logger.i("group#onRepGroupDetailInfo cnt:%d", Integer.valueOf(groupInfoListCount));
        if (groupInfoListCount <= 0 || userId != loginId) {
            this.logger.i("group#onRepGroupDetailInfo size empty or userid[%d]≠ loginId[%d]", Integer.valueOf(userId), Integer.valueOf(loginId));
            triggerEvent(new GroupEvent(Event.GROUP_INFO_FAIL));
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (GroupInfo groupEntity : iMGroupInfoListRsp.getGroupInfoListList()) {
            GroupEntity groupEntity2 = ProtoBuf2JavaBean.getGroupEntity(groupEntity);
            this.logger.i("group#groupEntity %s", groupEntity2.toString());
            this.groupMap.put(Integer.valueOf(groupEntity2.getPeerId()), groupEntity2);
            arrayList2.add(Integer.valueOf(groupEntity2.getPeerId()));
            arrayList.add(groupEntity2);
        }
        this.dbInterface.batchInsertOrUpdateGroup(arrayList);
        triggerEvent(new GroupEvent(Event.GROUP_INFO_UPDATED));
        this.imContactManager.reqGroupMembers((List<Integer>) arrayList2);
    }

    public void reqCreateTempGroup(String str, List<Integer> list) {
        String avatar;
        this.logger.i("group#reqCreateTempGroup, tempGroupName = %s", str);
        int loginId = this.imLoginManager.getLoginId();
        UserEntity loginInfo = this.imLoginManager.getLoginInfo();
        Builder groupName = IMGroupCreateReq.newBuilder().setUserId(loginId).setUserName(loginInfo != null ? loginInfo.getMainName() : "").setGroupType(GroupType.GROUP_TYPE_TMP).setGroupName(str);
        if (loginInfo == null) {
            avatar = "";
        } else {
            avatar = loginInfo.getAvatar();
        }
        this.imSocketManager.sendRequest(groupName.setGroupAvatar(avatar).addAllMemberIdList(list).build(), 4, GroupCmdID.CID_GROUP_CREATE_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupManager.instance().onReqCreateTempGroup(IMGroupCreateRsp.parseFrom((CodedInputStream) obj));
                } catch (IOException e) {
                    IMGroupManager.this.logger.e("reqCreateTempGroup parse error", new Object[0]);
                    IMGroupManager.this.triggerEvent(new GroupEvent(Event.CREATE_GROUP_FAIL));
                }
            }

            public void onFaild() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.CREATE_GROUP_FAIL));
            }

            public void onTimeout() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.CREATE_GROUP_TIMEOUT));
            }
        });
    }

    public void onReqCreateTempGroup(IMGroupCreateRsp iMGroupCreateRsp) {
        this.logger.d("group#onReqCreateTempGroup", new Object[0]);
        if (iMGroupCreateRsp.getResultCode() != 0) {
            this.logger.e("group#createGroup failed", new Object[0]);
            triggerEvent(new GroupEvent(Event.CREATE_GROUP_FAIL));
            return;
        }
        GroupEntity groupEntity = ProtoBuf2JavaBean.getGroupEntity(iMGroupCreateRsp);
        int loginId = this.imLoginManager.getLoginId();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(loginId));
        groupEntity.setlistGroupMemberIds(arrayList);
        this.groupMap.put(Integer.valueOf(groupEntity.getPeerId()), groupEntity);
        IMSessionManager.instance().updateSession(groupEntity);
        this.dbInterface.insertOrUpdateGroup(groupEntity);
        triggerEvent(new GroupEvent(Event.CREATE_GROUP_OK, groupEntity));
    }

    public void reqRemoveGroupMember(int i, Set<Integer> set) {
        reqChangeGroupMember(i, GroupModifyType.GROUP_MODIFY_TYPE_DEL, set);
    }

    public void reqAddGroupMember(int i, Set<Integer> set) {
        reqChangeGroupMember(i, GroupModifyType.GROUP_MODIFY_TYPE_ADD, set);
    }

    private void reqChangeGroupMember(int i, GroupModifyType groupModifyType, Set<Integer> set) {
        this.logger.i("group#reqChangeGroupMember, changeGroupMemberType = %s", groupModifyType.toString());
        this.imSocketManager.sendRequest(IMGroupChangeMemberReq.newBuilder().setUserId(this.imLoginManager.getLoginId()).setChangeType(groupModifyType).addAllMemberIdList(set).setGroupId(i).build(), 4, GroupCmdID.CID_GROUP_CHANGE_MEMBER_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupManager.instance().onReqChangeGroupMember(IMGroupChangeMemberRsp.parseFrom((CodedInputStream) obj));
                } catch (IOException e) {
                    IMGroupManager.this.logger.e("reqChangeGroupMember parse error!", new Object[0]);
                    IMGroupManager.this.triggerEvent(new GroupEvent(Event.CHANGE_GROUP_MEMBER_FAIL));
                }
            }

            public void onFaild() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.CHANGE_GROUP_MEMBER_FAIL));
            }

            public void onTimeout() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.CHANGE_GROUP_MEMBER_TIMEOUT));
            }
        });
    }

    public void onReqChangeGroupMember(IMGroupChangeMemberRsp iMGroupChangeMemberRsp) {
        if (iMGroupChangeMemberRsp.getResultCode() != 0) {
            triggerEvent(new GroupEvent(Event.CHANGE_GROUP_MEMBER_FAIL));
            return;
        }
        int groupId = iMGroupChangeMemberRsp.getGroupId();
        List chgUserIdListList = iMGroupChangeMemberRsp.getChgUserIdListList();
        GroupModifyType changeType = iMGroupChangeMemberRsp.getChangeType();
        GroupEntity groupEntity = (GroupEntity) this.groupMap.get(Integer.valueOf(groupId));
        groupEntity.setlistGroupMemberIds(iMGroupChangeMemberRsp.getCurUserIdListList());
        this.groupMap.put(Integer.valueOf(groupId), groupEntity);
        this.dbInterface.insertOrUpdateGroup(groupEntity);
        GroupEvent groupEvent = new GroupEvent(Event.CHANGE_GROUP_MEMBER_SUCCESS);
        groupEvent.setChangeList(chgUserIdListList);
        groupEvent.setChangeType(ProtoBuf2JavaBean.getGroupChangeType(changeType));
        groupEvent.setGroupEntity(groupEntity);
        triggerEvent(groupEvent);
    }

    public void reqShieldGroup(int i, int i2) {
        final GroupEntity groupEntity = (GroupEntity) this.groupMap.get(Integer.valueOf(i));
        if (groupEntity == null) {
            this.logger.i("GroupEntity do not exist!", new Object[0]);
            return;
        }
        final int loginId = IMLoginManager.instance().getLoginId();
        final int i3 = i;
        final int i4 = i2;
        this.imSocketManager.sendRequest(IMGroupShieldReq.newBuilder().setShieldStatus(i2).setGroupId(i).setUserId(loginId).build(), 4, GroupCmdID.CID_GROUP_SHIELD_GROUP_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupShieldRsp parseFrom = IMGroupShieldRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() != 0) {
                        IMGroupManager.this.triggerEvent(new GroupEvent(Event.SHIELD_GROUP_FAIL));
                    } else if (parseFrom.getGroupId() == i3 && parseFrom.getUserId() == loginId) {
                        groupEntity.setStatus(i4);
                        IMGroupManager.this.dbInterface.insertOrUpdateGroup(groupEntity);
                        if (i4 == 1) {
                        }
                        IMGroupManager.this.triggerEvent(new GroupEvent(Event.SHIELD_GROUP_OK, groupEntity));
                    }
                } catch (IOException e) {
                    IMGroupManager.this.logger.e("reqChangeGroupMember parse error!", new Object[0]);
                    IMGroupManager.this.triggerEvent(new GroupEvent(Event.SHIELD_GROUP_FAIL));
                }
            }

            public void onFaild() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.SHIELD_GROUP_FAIL));
            }

            public void onTimeout() {
                IMGroupManager.this.triggerEvent(new GroupEvent(Event.SHIELD_GROUP_TIMEOUT));
            }
        });
    }

    public void receiveGroupChangeMemberNotify(IMGroupChangeMemberNotify iMGroupChangeMemberNotify) {
        int groupId = iMGroupChangeMemberNotify.getGroupId();
        int groupChangeType = ProtoBuf2JavaBean.getGroupChangeType(iMGroupChangeMemberNotify.getChangeType());
        List chgUserIdListList = iMGroupChangeMemberNotify.getChgUserIdListList();
        List curUserIdListList = iMGroupChangeMemberNotify.getCurUserIdListList();
        if (this.groupMap.containsKey(Integer.valueOf(groupId))) {
            GroupEntity groupEntity = (GroupEntity) this.groupMap.get(Integer.valueOf(groupId));
            groupEntity.setlistGroupMemberIds(curUserIdListList);
            this.dbInterface.insertOrUpdateGroup(groupEntity);
            this.groupMap.put(Integer.valueOf(groupId), groupEntity);
            GroupEvent groupEvent = new GroupEvent(Event.CHANGE_GROUP_MEMBER_SUCCESS);
            groupEvent.setChangeList(chgUserIdListList);
            groupEvent.setChangeType(groupChangeType);
            groupEvent.setGroupEntity(groupEntity);
            triggerEvent(groupEvent);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(groupEntity.peerId));
            this.imContactManager.reqGroupMembers((List<Integer>) arrayList);
        }
    }

    public List<GroupEntity> getNormalGroupList() {
        ArrayList arrayList = new ArrayList();
        for (Entry value : this.groupMap.entrySet()) {
            GroupEntity groupEntity = (GroupEntity) value.getValue();
            if (groupEntity != null && groupEntity.getGroupType() == 1) {
                arrayList.add(groupEntity);
            }
        }
        return arrayList;
    }

    public List<GroupEntity> getNormalGroupSortedList() {
        List<GroupEntity> normalGroupList = getNormalGroupList();
        Collections.sort(normalGroupList, new Comparator<GroupEntity>() {
            public int compare(GroupEntity groupEntity, GroupEntity groupEntity2) {
                if (groupEntity.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(groupEntity.getMainName(), groupEntity.getPinyinElement());
                }
                if (groupEntity2.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(groupEntity2.getMainName(), groupEntity2.getPinyinElement());
                }
                return groupEntity.getPinyinElement().pinyin.compareToIgnoreCase(groupEntity2.getPinyinElement().pinyin);
            }
        });
        return normalGroupList;
    }

    public List<GroupEntity> getAllGroupList() {
        ArrayList arrayList = new ArrayList();
        for (Entry value : this.groupMap.entrySet()) {
            GroupEntity groupEntity = (GroupEntity) value.getValue();
            if (groupEntity != null) {
                arrayList.add(groupEntity);
            }
        }
        return arrayList;
    }

    public GroupEntity findGroup(int i) {
        this.logger.d("group#findGroup groupId:%s", Integer.valueOf(i));
        if (this.groupMap.containsKey(Integer.valueOf(i))) {
            return (GroupEntity) this.groupMap.get(Integer.valueOf(i));
        }
        return null;
    }

    public List<GroupEntity> getSearchAllGroupList(String str) {
        ArrayList arrayList = new ArrayList();
        for (Entry value : this.groupMap.entrySet()) {
            GroupEntity groupEntity = (GroupEntity) value.getValue();
            if (IMUIHelper.handleGroupSearch(str, groupEntity)) {
                arrayList.add(groupEntity);
            }
        }
        return arrayList;
    }

    public List<UserEntity> getGroupMembers(int i) {
        this.logger.d("group#getGroupMembers groupId:%s", Integer.valueOf(i));
        GroupEntity findGroup = findGroup(i);
        if (findGroup == null) {
            this.logger.e("group#no such group id:%s", Integer.valueOf(i));
            return null;
        }
        Set<Integer> set = findGroup.getlistGroupMemberIds();
        ArrayList arrayList = new ArrayList();
        for (Integer num : set) {
            UserEntity findContact = IMContactManager.instance().findContact(num.intValue());
            if (findContact == null) {
                this.logger.e("group#no such contact id:%s", num);
            } else {
                arrayList.add(findContact);
            }
        }
        return arrayList;
    }

    public Map<Integer, GroupEntity> getGroupMap() {
        return this.groupMap;
    }

    public boolean isGroupReady() {
        return this.isGroupReady;
    }

    public void reqApplyJoinGroup(int i, int i2, final Packetlistener packetlistener) {
        this.imSocketManager.sendRequest(IMApplyJoinGroupToCreatorReq.newBuilder().setCreatorId(i2).setGroupId(i).setReqUserId(this.imLoginManager.getLoginId()).setReqUserName(this.imLoginManager.getLoginInfo().getMainName()).build(), 4, GroupCmdID.CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                IMGroupManager.this.successRunOnUiThread(packetlistener, obj);
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void onApplyJoinGroupNotify(IMApplyJoinGroupToCreatorNotify iMApplyJoinGroupToCreatorNotify) {
        ApplyNotify applyNotify = new ApplyNotify();
        applyNotify.setCreatorId(iMApplyJoinGroupToCreatorNotify.getCreatorId());
        applyNotify.setGroupId(iMApplyJoinGroupToCreatorNotify.getGroupId());
        applyNotify.setGroupName(iMApplyJoinGroupToCreatorNotify.getGroupName());
        applyNotify.setReqUserId(iMApplyJoinGroupToCreatorNotify.getReqUserId());
        applyNotify.setReqUserName(iMApplyJoinGroupToCreatorNotify.getReqUserName());
        c.a().g(new GroupNotifyEvent(applyNotify, GroupNotifyEvent.Event.APPLY_JOIN_NOTIFY));
    }

    public void rspApplyJoinGroup(final ApplyNotify applyNotify, boolean z, final Packetlistener packetlistener) {
        String mainName;
        UserEntity loginInfo = this.imLoginManager.getLoginInfo();
        IMApplyJoinGroupToApplicantRsp.Builder creatorId = IMApplyJoinGroupToApplicantRsp.newBuilder().setCreatorId(applyNotify.getCreatorId());
        if (loginInfo == null) {
            mainName = "";
        } else {
            mainName = loginInfo.getMainName();
        }
        this.imSocketManager.sendRequest(creatorId.setCreatorName(mainName).setGroupId(applyNotify.getGroupId()).setGroupName(applyNotify.getGroupName()).setReqUserId(applyNotify.getReqUserId()).setResultCode(z ? 0 : 1).build(), 4, GroupCmdID.CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                IMGroupManager.this.successRunOnUiThread(packetlistener, obj);
                IMGroupManager.instance().reqGroupDetailInfo(applyNotify.getGroupId());
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void onReceiveAgreeOrRejectUserJoinGroupNotify(IMApplyJoinGroupToApplicantRspNotify iMApplyJoinGroupToApplicantRspNotify) {
        ApplyNotify applyNotify = new ApplyNotify();
        applyNotify.setCreatorId(iMApplyJoinGroupToApplicantRspNotify.getCreatorId());
        applyNotify.setGroupId(iMApplyJoinGroupToApplicantRspNotify.getGroupId());
        applyNotify.setGroupName(iMApplyJoinGroupToApplicantRspNotify.getGroupName());
        applyNotify.setReqUserId(iMApplyJoinGroupToApplicantRspNotify.getReqUserId());
        if (iMApplyJoinGroupToApplicantRspNotify.getResultCode() == 0) {
            triggerEvent(new GroupNotifyEvent(applyNotify, GroupNotifyEvent.Event.AGREE_APPLY_NOTIFY));
            reqGroupDetailInfo(applyNotify.getGroupId(), true, null);
            return;
        }
        triggerEvent(new GroupNotifyEvent(applyNotify, GroupNotifyEvent.Event.REJECT_APPLY_NOTIFY));
    }

    public void reqInviteUserJoinGroup(int i, List<Integer> list, final Packetlistener packetlistener) {
        String mainName;
        String mainName2;
        int loginId = this.imLoginManager.getLoginId();
        UserEntity loginInfo = this.imLoginManager.getLoginInfo();
        GroupEntity findGroup = instance().findGroup(i);
        IMInviteUserJoinGroupReq.Builder reqUserId = IMInviteUserJoinGroupReq.newBuilder().setReqUserId(loginId);
        if (loginInfo == null) {
            mainName = "未知";
        } else {
            mainName = loginInfo.getMainName();
        }
        IMInviteUserJoinGroupReq.Builder groupId = reqUserId.setReqUserName(mainName).setGroupId(i);
        if (findGroup == null) {
            mainName2 = "未知";
        } else {
            mainName2 = findGroup.getMainName();
        }
        this.imSocketManager.sendRequest(groupId.setGroupName(mainName2).addAllInviteeUidList(list).build(), 4, GroupCmdID.CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                IMGroupManager.this.successRunOnUiThread(packetlistener, obj);
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }
        });
    }

    public void onInviteUserJoinGroupNotify(IMInviteUserJoinGroupReqNotify iMInviteUserJoinGroupReqNotify) {
        InviteNotify inviteNotify = new InviteNotify();
        inviteNotify.setGroupId(iMInviteUserJoinGroupReqNotify.getGroupId());
        inviteNotify.setGroupName(iMInviteUserJoinGroupReqNotify.getGroupName());
        inviteNotify.setInvitedUserId(iMInviteUserJoinGroupReqNotify.getInviteUserId());
        inviteNotify.setReqUserId(iMInviteUserJoinGroupReqNotify.getReqUserId());
        inviteNotify.setReqUserName(iMInviteUserJoinGroupReqNotify.getReqUserName());
        c.a().g(new GroupNotifyEvent(inviteNotify, GroupNotifyEvent.Event.INVITED_JOIN_NOTIFY));
    }

    public void rspAcceptOrRejectGroupInvite(final InviteNotify inviteNotify, final boolean z, final Packetlistener packetlistener) {
        String mainName;
        this.imLoginManager.getLoginId();
        UserEntity loginInfo = this.imLoginManager.getLoginInfo();
        IMInviteUserJoinGroupRsp.Builder inviteUserId = IMInviteUserJoinGroupRsp.newBuilder().setGroupId(inviteNotify.getGroupId()).setGroupName(inviteNotify.getGroupName()).setInviteUserId(inviteNotify.getInvitedUserId());
        if (loginInfo == null) {
            mainName = "";
        } else {
            mainName = loginInfo.getMainName();
        }
        this.imSocketManager.sendRequest(inviteUserId.setInviteUserName(mainName).setReqUserId(inviteNotify.getReqUserId()).setResultCode(z ? 0 : 1).build(), 4, 1053, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMInviteUserJoinGroupRspAck parseFrom = IMInviteUserJoinGroupRspAck.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        IMGroupManager.this.successRunOnUiThread(packetlistener, parseFrom);
                        if (z) {
                            IMGroupManager.this.reqGroupDetailInfo(inviteNotify.getGroupId(), true, null);
                            return;
                        }
                        return;
                    }
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void onReceiveAgreeOrRejectGroupInviteNotify(IMInviteUserJoinGroupRspNotify iMInviteUserJoinGroupRspNotify) {
        InviteNotify inviteNotify = new InviteNotify();
        inviteNotify.setGroupId(iMInviteUserJoinGroupRspNotify.getGroupId());
        inviteNotify.setGroupName(iMInviteUserJoinGroupRspNotify.getGroupName());
        inviteNotify.setInvitedUserId(iMInviteUserJoinGroupRspNotify.getInviteUserId());
        inviteNotify.setInvitedUserName(iMInviteUserJoinGroupRspNotify.getInviteUserName());
        inviteNotify.setReqUserId(iMInviteUserJoinGroupRspNotify.getReqUserId());
        if (iMInviteUserJoinGroupRspNotify.getResultCode() == 0) {
            triggerEvent(new GroupNotifyEvent(inviteNotify, GroupNotifyEvent.Event.AGREE_INVITE_NOTIFY));
        } else {
            triggerEvent(new GroupNotifyEvent(inviteNotify, GroupNotifyEvent.Event.REJECT_INVITE_NOTIFY));
        }
    }

    public void reqLeaveGroup(int i, final Packetlistener packetlistener) {
        this.imSocketManager.sendRequest(IMGroupLeaveGroupReq.newBuilder().setGroupId(i).setLeaveType(1).setUserId(this.imLoginManager.getLoginId()).build(), 4, GroupCmdID.CID_GROUP_LEAVE_GROUP_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupLeaveGroupRsp parseFrom = IMGroupLeaveGroupRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        int groupId = parseFrom.getGroupId();
                        IMGroupManager.this.dbInterface.deleteGroupByGroupId(groupId);
                        IMGroupManager.this.groupMap.remove(Integer.valueOf(groupId));
                        IMGroupManager.this.triggerEvent(new GroupEvent(Event.GROUP_INFO_UPDATED));
                        IMSessionManager.instance().removeSession(EntityChangeEngine.getSessionKey(groupId, 3));
                        String talkGroupId = MessageService.instance().getTalkGroupId();
                        if (talkGroupId != null && Integer.parseInt(talkGroupId) == groupId) {
                            MessageService.instance().setTalkGroupId(null);
                        }
                        IMGroupManager.this.successRunOnUiThread(packetlistener, Integer.valueOf(groupId));
                        return;
                    }
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (NumberFormatException e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void reqkickOutUser(int i, List<Integer> list, final Packetlistener packetlistener) {
        this.imSocketManager.sendRequest(IMGroupLeaveGroupReq.newBuilder().setGroupId(i).setLeaveType(2).setUserId(this.imLoginManager.getLoginId()).addAllMemberIdList(list).build(), 4, GroupCmdID.CID_GROUP_LEAVE_GROUP_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupLeaveGroupRsp parseFrom = IMGroupLeaveGroupRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        int groupId = parseFrom.getGroupId();
                        List chgUserIdListList = parseFrom.getChgUserIdListList();
                        List curUserIdListList = parseFrom.getCurUserIdListList();
                        if (IMGroupManager.this.groupMap.containsKey(Integer.valueOf(groupId))) {
                            GroupEntity groupEntity = (GroupEntity) IMGroupManager.this.groupMap.get(Integer.valueOf(groupId));
                            groupEntity.setlistGroupMemberIds(curUserIdListList);
                            IMGroupManager.this.dbInterface.insertOrUpdateGroup(groupEntity);
                            IMGroupManager.this.groupMap.put(Integer.valueOf(groupId), groupEntity);
                            GroupEvent groupEvent = new GroupEvent(Event.CHANGE_GROUP_MEMBER_SUCCESS);
                            groupEvent.setChangeList(chgUserIdListList);
                            groupEvent.setChangeType(2);
                            groupEvent.setGroupEntity(groupEntity);
                            IMGroupManager.this.triggerEvent(groupEvent);
                        }
                        IMGroupManager.this.successRunOnUiThread(packetlistener, Integer.valueOf(groupId));
                        return;
                    }
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void reqQueryGroupList() {
        this.logger.i("group#reqQueryGroupList", new Object[0]);
        this.imSocketManager.sendRequest(IMQueryGroupImInReq.newBuilder().setUserId(this.imLoginManager.getLoginId()).build(), 4, 1025);
        this.logger.i("group#send packet to server", new Object[0]);
    }

    public void onRespQueryGroupList(IMQueryGroupImInRsp iMQueryGroupImInRsp) {
        this.logger.i("group#onRespQueryGroupList", new Object[0]);
        int groupInfoListCount = iMQueryGroupImInRsp.getGroupInfoListCount();
        int userId = iMQueryGroupImInRsp.getUserId();
        int loginId = this.imLoginManager.getLoginId();
        this.logger.i("group#onRespQueryGroupList cnt:%d", Integer.valueOf(groupInfoListCount));
        if (groupInfoListCount <= 0 || userId != loginId) {
            this.logger.i("group#onRespQueryGroupList size empty or userid[%d]≠ loginId[%d]", Integer.valueOf(userId), Integer.valueOf(loginId));
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (GroupInfo groupEntity : iMQueryGroupImInRsp.getGroupInfoListList()) {
            GroupEntity groupEntity2 = ProtoBuf2JavaBean.getGroupEntity(groupEntity);
            this.logger.i("group#groupEntity %s", groupEntity2.toString());
            if (groupEntity2.getUserCnt() <= 0) {
                this.logger.w("group#group member count is 0, nothing to do, return", new Object[0]);
            } else {
                int peerId = groupEntity2.getPeerId();
                if (!this.groupMap.containsKey(Integer.valueOf(groupEntity2.getPeerId())) || !((GroupEntity) this.groupMap.get(Integer.valueOf(peerId))).equals(groupEntity2)) {
                    this.groupMap.put(Integer.valueOf(groupEntity2.getPeerId()), groupEntity2);
                    arrayList.add(groupEntity2);
                }
            }
        }
        this.dbInterface.batchInsertOrUpdateGroup(arrayList);
        triggerEvent(new GroupEvent(Event.GROUP_INFO_UPDATED));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(getGroupMap().keySet());
        this.imContactManager.reqGroupMembers((List<Integer>) arrayList2);
    }

    public void reqUpdateGroupName(int i, String str, final Packetlistener packetlistener) {
        this.imSocketManager.sendRequest(IMGroupUpdateGroupNameReq.newBuilder().setGroupId(i).setUserId(this.imLoginManager.getLoginId()).setNewGroupName(str).build(), 4, GroupCmdID.CID_GROUP_UPDATE_GROUP_NAME_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupUpdateGroupNameRsp parseFrom = IMGroupUpdateGroupNameRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        if (IMGroupManager.this.groupMap.containsKey(Integer.valueOf(parseFrom.getGroupId()))) {
                            GroupEntity groupEntity = (GroupEntity) IMGroupManager.this.groupMap.get(Integer.valueOf(parseFrom.getGroupId()));
                            groupEntity.setMainName(parseFrom.getNewGroupName());
                            IMGroupManager.this.dbInterface.insertOrUpdateGroup(groupEntity);
                        }
                        IMGroupManager.this.successRunOnUiThread(packetlistener, parseFrom.getNewGroupName());
                        IMGroupManager.this.triggerEvent(new GroupEvent(Event.GROUP_INFO_UPDATED));
                        return;
                    }
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void reqTrandferCreator(int i, int i2, final Packetlistener packetlistener) {
        this.imSocketManager.sendRequest(IMGroupTransferCreatorReq.newBuilder().setGroupId(i).setUserId(this.imLoginManager.getLoginId()).setNewCreator(i2).build(), 4, GroupCmdID.CID_GROUP_TRANSFER_CREATOR_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMGroupTransferCreatorRsp parseFrom = IMGroupTransferCreatorRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        if (IMGroupManager.this.groupMap.containsKey(Integer.valueOf(parseFrom.getGroupId()))) {
                            GroupEntity groupEntity = (GroupEntity) IMGroupManager.this.groupMap.get(Integer.valueOf(parseFrom.getGroupId()));
                            groupEntity.setCreatorId(parseFrom.getNewCreator());
                            IMGroupManager.this.dbInterface.insertOrUpdateGroup(groupEntity);
                        }
                        IMGroupManager.this.successRunOnUiThread(packetlistener, Integer.valueOf(parseFrom.getNewCreator()));
                        return;
                    }
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMGroupManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMGroupManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMGroupManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void onGroupInfoChangeNotify(IMGroupInfoChangeNotify iMGroupInfoChangeNotify) {
        int groupId = iMGroupInfoChangeNotify.getGroupId();
        if (this.groupMap.containsKey(Integer.valueOf(groupId))) {
            GroupEntity groupEntity = (GroupEntity) this.groupMap.get(Integer.valueOf(groupId));
            switch (iMGroupInfoChangeNotify.getReason()) {
                case 1:
                    groupEntity.setCreatorId(iMGroupInfoChangeNotify.getNewCreator());
                    break;
                case 2:
                    groupEntity.setCreatorId(iMGroupInfoChangeNotify.getNewCreator());
                    break;
                case 3:
                    groupEntity.setMainName(iMGroupInfoChangeNotify.getNewGroupName());
                    break;
            }
            this.dbInterface.insertOrUpdateGroup(groupEntity);
            GroupEvent groupEvent = new GroupEvent(Event.GROUP_INFO_UPDATED);
            groupEvent.setGroupEntity(groupEntity);
            triggerEvent(groupEvent);
        }
    }
}
