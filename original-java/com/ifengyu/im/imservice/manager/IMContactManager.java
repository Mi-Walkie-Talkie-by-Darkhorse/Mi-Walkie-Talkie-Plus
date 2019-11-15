package com.ifengyu.im.imservice.manager;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.CodedInputStream;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.DepartmentEntity;
import com.ifengyu.im.DB.entity.GroupMember;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.UserInfoEvent;
import com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupUserInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.UserInfo;
import com.ifengyu.im.protobuf.IMBuddy.IMAllUserReq;
import com.ifengyu.im.protobuf.IMBuddy.IMAllUserRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMDepartmentReq;
import com.ifengyu.im.protobuf.IMBuddy.IMDepartmentRsp;
import com.ifengyu.im.protobuf.IMBuddy.IMUsersInfoReq;
import com.ifengyu.im.protobuf.IMBuddy.IMUsersInfoRsp;
import com.ifengyu.im.protobuf.IMGroup.IMChangeNickNameInGroupNotify;
import com.ifengyu.im.protobuf.IMGroup.IMGroupUserInfoReq;
import com.ifengyu.im.protobuf.IMGroup.IMGroupUserInfoRsp;
import com.ifengyu.im.protobuf.IMGroup.IMUpdateNickNameInGroupReq;
import com.ifengyu.im.protobuf.IMGroup.IMUpdateNickNameInGroupRsp;
import com.ifengyu.im.protobuf.helper.ProtoBuf2JavaBean;
import com.ifengyu.im.utils.Logger;
import com.ifengyu.im.utils.pinyin.PinYin;
import de.greenrobot.event.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class IMContactManager extends IMManager {
    private static IMContactManager inst = new IMContactManager();
    private DBInterface dbInterface = DBInterface.instance();
    /* access modifiers changed from: private */
    public Map<Integer, DepartmentEntity> departmentMap = new ConcurrentHashMap();
    private IMSocketManager imSocketManager = IMSocketManager.instance();
    /* access modifiers changed from: private */
    public Map<Integer, Map<Integer, GroupMember>> inGroupUserMap = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public Logger logger = Logger.getLogger(IMContactManager.class);
    private boolean userDataReady = false;
    private Map<Integer, UserEntity> userMap = new ConcurrentHashMap();

    public static IMContactManager instance() {
        return inst;
    }

    public void doOnStart() {
    }

    public void onNormalLoginOk() {
        onLocalLoginOk();
        onLocalNetOk();
    }

    public void onLocalLoginOk() {
        this.logger.d("contact#loadAllUserInfo", new Object[0]);
        List<UserEntity> loadAllUsers = this.dbInterface.loadAllUsers();
        this.logger.d("contact#loadAllUserInfo dbsuccess", new Object[0]);
        for (UserEntity userEntity : loadAllUsers) {
            PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
            this.userMap.put(Integer.valueOf(userEntity.getPeerId()), userEntity);
        }
        triggerEvent(UserInfoEvent.USER_INFO_OK);
    }

    public void onLocalNetOk() {
        this.logger.d("contact#loadAllUserInfo req-updateTime:%d", Integer.valueOf(this.dbInterface.getUserInfoLastTime()));
    }

    public void reset() {
        this.userDataReady = false;
        this.userMap.clear();
    }

    public void triggerEvent(UserInfoEvent userInfoEvent) {
        switch (userInfoEvent) {
            case USER_INFO_OK:
                this.userDataReady = true;
                break;
        }
        c.a().g(userInfoEvent);
    }

    private void reqGetAllUsers(int i) {
        this.logger.i("contact#reqGetAllUsers", new Object[0]);
        this.imSocketManager.sendRequest(IMAllUserReq.newBuilder().setUserId(IMLoginManager.instance().getLoginId()).setLatestUpdateTime(i).build(), 2, 520);
    }

    public void onRepAllUsers(IMAllUserRsp iMAllUserRsp) {
        this.logger.i("contact#onRepAllUsers", new Object[0]);
        int userId = iMAllUserRsp.getUserId();
        iMAllUserRsp.getLatestUpdateTime();
        int userListCount = iMAllUserRsp.getUserListCount();
        this.logger.i("contact#user cnt:%d", Integer.valueOf(userListCount));
        if (userListCount > 0) {
            if (userId != IMLoginManager.instance().getLoginId()) {
                this.logger.e("[fatal error] userId not equels loginId ,cause by onRepAllUsers", new Object[0]);
                return;
            }
            List<UserInfo> userListList = iMAllUserRsp.getUserListList();
            ArrayList arrayList = new ArrayList();
            for (UserInfo userEntity : userListList) {
                UserEntity userEntity2 = ProtoBuf2JavaBean.getUserEntity(userEntity);
                this.userMap.put(Integer.valueOf(userEntity2.getPeerId()), userEntity2);
                arrayList.add(userEntity2);
            }
            this.dbInterface.batchInsertOrUpdateUser(arrayList);
            triggerEvent(UserInfoEvent.USER_INFO_UPDATE);
        }
    }

    public UserEntity findContact(int i) {
        if (i <= 0 || !this.userMap.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return (UserEntity) this.userMap.get(Integer.valueOf(i));
    }

    public GroupMember findUserInGroup(int i, int i2) {
        if (i > 0 && this.inGroupUserMap.containsKey(Integer.valueOf(i))) {
            Map map = (Map) this.inGroupUserMap.get(Integer.valueOf(i));
            if (i2 > 0 && map.containsKey(Integer.valueOf(i2))) {
                return (GroupMember) map.get(Integer.valueOf(i2));
            }
        }
        return null;
    }

    public void reqGroupMembers(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        reqGroupMembers((List<Integer>) arrayList);
    }

    public void reqGroupMembers(List<Integer> list) {
        this.logger.i("contact#reqGroupMembers", new Object[0]);
        if (list == null || list.size() <= 0) {
            this.logger.i("contact#contact#reqGroupMembers return,cause by null or empty", new Object[0]);
            return;
        }
        this.imSocketManager.sendRequest(IMGroupUserInfoReq.newBuilder().addAllGroupIdList(list).setUserId(IMLoginManager.instance().getLoginId()).build(), 4, GroupCmdID.CID_GROUP_USER_INFO_REQUEST_VALUE);
    }

    public void onRepGroupMembers(IMGroupUserInfoRsp iMGroupUserInfoRsp) {
        int userId = iMGroupUserInfoRsp.getUserId();
        List<GroupUserInfo> groupUserinfoListList = iMGroupUserInfoRsp.getGroupUserinfoListList();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (GroupUserInfo groupUserInfo : groupUserinfoListList) {
            UserEntity userEntity = ProtoBuf2JavaBean.getUserEntity(groupUserInfo);
            this.logger.v("contact#onRepDetailUsers:\n" + userEntity.toString(), new Object[0]);
            int peerId = userEntity.getPeerId();
            if (!this.userMap.containsKey(Integer.valueOf(peerId)) || !((UserEntity) this.userMap.get(Integer.valueOf(peerId))).equals(userEntity)) {
                z = true;
                this.userMap.put(Integer.valueOf(userEntity.getPeerId()), userEntity);
                arrayList.add(userEntity);
                if (groupUserInfo.getUserId() == userId) {
                    IMLoginManager.instance().setLoginInfo(userEntity);
                }
            }
            GroupMember inGroupUserEntity = ProtoBuf2JavaBean.getInGroupUserEntity(groupUserInfo);
            int groupId = inGroupUserEntity.getGroupId();
            if (this.inGroupUserMap.containsKey(Integer.valueOf(groupId))) {
                Map map = (Map) this.inGroupUserMap.get(Integer.valueOf(groupId));
                if (!map.containsKey(Integer.valueOf(peerId)) || !((GroupMember) map.get(Integer.valueOf(peerId))).equals(inGroupUserEntity)) {
                    map.put(Integer.valueOf(peerId), inGroupUserEntity);
                }
            } else {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                concurrentHashMap.put(Integer.valueOf(peerId), inGroupUserEntity);
                this.inGroupUserMap.put(Integer.valueOf(groupId), concurrentHashMap);
            }
        }
        this.dbInterface.batchInsertOrUpdateUser(arrayList);
        if (z) {
            triggerEvent(UserInfoEvent.USER_INFO_UPDATE);
        }
    }

    public void reqUserInfo(int i, final Packetlistener packetlistener) {
        int loginId = IMLoginManager.instance().getLoginId();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(i));
        this.imSocketManager.sendRequest(IMUsersInfoReq.newBuilder().setUserId(loginId).addAllUserIdList(arrayList).build(), 2, 516, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    List<UserInfo> userInfoListList = IMUsersInfoRsp.parseFrom((CodedInputStream) obj).getUserInfoListList();
                    ArrayList arrayList = new ArrayList();
                    for (UserInfo userEntity : userInfoListList) {
                        arrayList.add(ProtoBuf2JavaBean.getUserEntity(userEntity));
                    }
                    if (arrayList.size() > 0) {
                        IMContactManager.this.successRunOnUiThread(packetlistener, arrayList.get(0));
                    } else {
                        IMContactManager.this.failRunOnUiThread(packetlistener);
                    }
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMContactManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMContactManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMContactManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void reqUserInfo(List<Integer> list, final Packetlistener packetlistener) {
        if (list != null && list.size() != 0) {
            this.imSocketManager.sendRequest(IMUsersInfoReq.newBuilder().setUserId(IMLoginManager.instance().getLoginId()).addAllUserIdList(list).build(), 2, 516, new Packetlistener() {
                public void onSuccess(Object obj) {
                    try {
                        List<UserInfo> userInfoListList = IMUsersInfoRsp.parseFrom((CodedInputStream) obj).getUserInfoListList();
                        ArrayList arrayList = new ArrayList();
                        for (UserInfo userEntity : userInfoListList) {
                            arrayList.add(ProtoBuf2JavaBean.getUserEntity(userEntity));
                        }
                        IMContactManager.this.successRunOnUiThread(packetlistener, arrayList);
                    } catch (IOException e) {
                        ThrowableExtension.printStackTrace(e);
                        IMContactManager.this.failRunOnUiThread(packetlistener);
                    }
                }

                public void onFaild() {
                    IMContactManager.this.failRunOnUiThread(packetlistener);
                }

                public void onTimeout() {
                    IMContactManager.this.timeOutRunOnUiThread(packetlistener);
                }
            });
        }
    }

    public void reqGetDetaillUsers(ArrayList<Integer> arrayList) {
        this.logger.i("contact#contact#reqGetDetaillUsers", new Object[0]);
        if (arrayList == null || arrayList.size() <= 0) {
            this.logger.i("contact#contact#reqGetDetaillUsers return,cause by null or empty", new Object[0]);
            return;
        }
        this.imSocketManager.sendRequest(IMUsersInfoReq.newBuilder().setUserId(IMLoginManager.instance().getLoginId()).addAllUserIdList(arrayList).build(), 2, 516);
    }

    public void onRepDetailUsers(IMUsersInfoRsp iMUsersInfoRsp) {
        int userId = iMUsersInfoRsp.getUserId();
        List<UserInfo> userInfoListList = iMUsersInfoRsp.getUserInfoListList();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (UserInfo userInfo : userInfoListList) {
            UserEntity userEntity = ProtoBuf2JavaBean.getUserEntity(userInfo);
            this.logger.v("contact#onRepDetailUsers:\n" + userEntity.toString(), new Object[0]);
            int peerId = userEntity.getPeerId();
            if (!this.userMap.containsKey(Integer.valueOf(peerId)) || !((UserEntity) this.userMap.get(Integer.valueOf(peerId))).equals(userEntity)) {
                z = true;
                this.userMap.put(Integer.valueOf(userEntity.getPeerId()), userEntity);
                arrayList.add(userEntity);
                if (userInfo.getUserId() == userId) {
                    IMLoginManager.instance().setLoginInfo(userEntity);
                }
            }
            z = z;
        }
        this.dbInterface.batchInsertOrUpdateUser(arrayList);
        if (z) {
            triggerEvent(UserInfoEvent.USER_INFO_UPDATE);
        }
    }

    public DepartmentEntity findDepartment(int i) {
        return (DepartmentEntity) this.departmentMap.get(Integer.valueOf(i));
    }

    public List<DepartmentEntity> getDepartmentSortedList() {
        ArrayList arrayList = new ArrayList(this.departmentMap.values());
        Collections.sort(arrayList, new Comparator<DepartmentEntity>() {
            public int compare(DepartmentEntity departmentEntity, DepartmentEntity departmentEntity2) {
                if (departmentEntity.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(departmentEntity.getDepartName(), departmentEntity.getPinyinElement());
                }
                if (departmentEntity2.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(departmentEntity2.getDepartName(), departmentEntity2.getPinyinElement());
                }
                return departmentEntity.getPinyinElement().pinyin.compareToIgnoreCase(departmentEntity2.getPinyinElement().pinyin);
            }
        });
        return arrayList;
    }

    public List<UserEntity> getContactSortedList() {
        ArrayList arrayList = new ArrayList(this.userMap.values());
        Collections.sort(arrayList, new Comparator<UserEntity>() {
            public int compare(UserEntity userEntity, UserEntity userEntity2) {
                if (userEntity2.getPinyinElement().pinyin.startsWith("#")) {
                    return -1;
                }
                if (userEntity.getPinyinElement().pinyin.startsWith("#")) {
                    return 1;
                }
                if (userEntity.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
                }
                if (userEntity2.getPinyinElement().pinyin == null) {
                    PinYin.getPinYin(userEntity2.getMainName(), userEntity2.getPinyinElement());
                }
                return userEntity.getPinyinElement().pinyin.compareToIgnoreCase(userEntity2.getPinyinElement().pinyin);
            }
        });
        return arrayList;
    }

    public List<UserEntity> getDepartmentTabSortedList() {
        ArrayList arrayList = new ArrayList(this.userMap.values());
        Collections.sort(arrayList, new Comparator<UserEntity>() {
            public int compare(UserEntity userEntity, UserEntity userEntity2) {
                DepartmentEntity departmentEntity = (DepartmentEntity) IMContactManager.this.departmentMap.get(Integer.valueOf(userEntity.getDepartmentId()));
                DepartmentEntity departmentEntity2 = (DepartmentEntity) IMContactManager.this.departmentMap.get(Integer.valueOf(userEntity2.getDepartmentId()));
                if (userEntity.getDepartmentId() == userEntity2.getDepartmentId()) {
                    if (userEntity2.getPinyinElement().pinyin.startsWith("#")) {
                        return -1;
                    }
                    if (userEntity.getPinyinElement().pinyin.startsWith("#")) {
                        return 1;
                    }
                    if (userEntity.getPinyinElement().pinyin == null) {
                        PinYin.getPinYin(userEntity.getMainName(), userEntity.getPinyinElement());
                    }
                    if (userEntity2.getPinyinElement().pinyin == null) {
                        PinYin.getPinYin(userEntity2.getMainName(), userEntity2.getPinyinElement());
                    }
                    return userEntity.getPinyinElement().pinyin.compareToIgnoreCase(userEntity2.getPinyinElement().pinyin);
                } else if (departmentEntity == null || departmentEntity2 == null || departmentEntity.getDepartName() == null || departmentEntity2.getDepartName() == null) {
                    return 1;
                } else {
                    return departmentEntity.getDepartName().compareToIgnoreCase(departmentEntity2.getDepartName());
                }
            }
        });
        return arrayList;
    }

    public void reqGetDepartment(int i) {
        this.logger.i("contact#reqGetDepartment", new Object[0]);
        this.imSocketManager.sendRequest(IMDepartmentReq.newBuilder().setUserId(IMLoginManager.instance().getLoginId()).setLatestUpdateTime(i).build(), 2, 528);
    }

    public void onRepDepartment(IMDepartmentRsp iMDepartmentRsp) {
        this.logger.i("contact#onRepDepartment", new Object[0]);
        int userId = iMDepartmentRsp.getUserId();
        iMDepartmentRsp.getLatestUpdateTime();
        int deptListCount = iMDepartmentRsp.getDeptListCount();
        this.logger.i("contact#department cnt:%d", Integer.valueOf(deptListCount));
        if (deptListCount > 0) {
            if (userId != IMLoginManager.instance().getLoginId()) {
                this.logger.e("[fatal error] userId not equels loginId ,cause by onRepDepartment", new Object[0]);
                return;
            }
            List<DepartInfo> deptListList = iMDepartmentRsp.getDeptListList();
            ArrayList arrayList = new ArrayList();
            for (DepartInfo departEntity : deptListList) {
                DepartmentEntity departEntity2 = ProtoBuf2JavaBean.getDepartEntity(departEntity);
                this.departmentMap.put(Integer.valueOf(departEntity2.getDepartId()), departEntity2);
                arrayList.add(departEntity2);
            }
            triggerEvent(UserInfoEvent.USER_INFO_UPDATE);
        }
    }

    public Map<Integer, UserEntity> getUserMap() {
        return this.userMap;
    }

    public Map<Integer, DepartmentEntity> getDepartmentMap() {
        return this.departmentMap;
    }

    public boolean isUserDataReady() {
        return this.userDataReady;
    }

    public void reqUpdateMyNicknameInGroup(final int i, String str, final Packetlistener packetlistener) {
        this.logger.d("contact#updateMyNicknameInGroup", new Object[0]);
        this.imSocketManager.sendRequest(IMUpdateNickNameInGroupReq.newBuilder().setGroupId(i).setUserId(IMLoginManager.instance().getLoginId()).setNicknameIngroup(str).build(), 4, GroupCmdID.CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST_VALUE, new Packetlistener() {
            public void onSuccess(Object obj) {
                try {
                    IMUpdateNickNameInGroupRsp parseFrom = IMUpdateNickNameInGroupRsp.parseFrom((CodedInputStream) obj);
                    if (parseFrom.getResultCode() == 0) {
                        String nicknameIngroup = parseFrom.getNicknameIngroup();
                        if (IMContactManager.this.inGroupUserMap.containsKey(Integer.valueOf(parseFrom.getGroupId()))) {
                            int userId = parseFrom.getUserId();
                            Map map = (Map) IMContactManager.this.inGroupUserMap.get(Integer.valueOf(i));
                            if (map.containsKey(Integer.valueOf(userId))) {
                                GroupMember groupMember = (GroupMember) map.get(Integer.valueOf(userId));
                                IMContactManager.this.logger.d("contact#update nick name in group,groupId = " + parseFrom.getGroupId() + ",nickname = " + parseFrom.getNicknameIngroup(), new Object[0]);
                                groupMember.setGroupNick(parseFrom.getNicknameIngroup());
                            }
                        }
                        IMContactManager.this.successRunOnUiThread(packetlistener, nicknameIngroup);
                        return;
                    }
                    IMContactManager.this.failRunOnUiThread(packetlistener);
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    IMContactManager.this.failRunOnUiThread(packetlistener);
                }
            }

            public void onFaild() {
                IMContactManager.this.failRunOnUiThread(packetlistener);
            }

            public void onTimeout() {
                IMContactManager.this.timeOutRunOnUiThread(packetlistener);
            }
        });
    }

    public void onUserNicknameChangeInGroupNotify(IMChangeNickNameInGroupNotify iMChangeNickNameInGroupNotify) {
        int groupId = iMChangeNickNameInGroupNotify.getGroupId();
        if (this.inGroupUserMap.containsKey(Integer.valueOf(groupId))) {
            int changenameUid = iMChangeNickNameInGroupNotify.getChangenameUid();
            Map map = (Map) this.inGroupUserMap.get(Integer.valueOf(groupId));
            if (map.containsKey(Integer.valueOf(changenameUid))) {
                ((GroupMember) map.get(Integer.valueOf(changenameUid))).setGroupNick(iMChangeNickNameInGroupNotify.getNicknameIngroup());
            }
        }
    }
}
