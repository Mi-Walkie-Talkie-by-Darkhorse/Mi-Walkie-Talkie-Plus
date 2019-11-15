.class public Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;
.super Ljava/lang/Object;
.source "ProtoBuf2JavaBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDepartEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/DB/entity/DepartmentEntity;
    .locals 6

    new-instance v0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setDepartId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setDepartName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setPriority(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getDepartStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setStatus(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setCreated(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->setUpdated(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v0
.end method

.method public static getDepartStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;)I
    .locals 3

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$DepartmentStatusType:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDepartStatus is illegal,cause by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getGroupChangeType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)I
    .locals 3

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupModifyType:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupModifyType is illegal,cause by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getGroupEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;)Lcom/ifengyu/im/DB/entity/GroupEntity;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUpdated(J)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setMainName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupCreatorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setPeerId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getJavaGroupType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setGroupType(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getShieldStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setStatus(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupMemberListCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserCnt(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setVersion(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;->getGroupMemberListList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v0
.end method

.method public static getGroupEntity(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;)Lcom/ifengyu/im/DB/entity/GroupEntity;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setMainName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getUserIdListList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setPeerId(I)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUpdated(J)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getGroupAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setAvatar(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setGroupType(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setStatus(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getUserIdListCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserCnt(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setVersion(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v0
.end method

.method public static getInGroupUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/DB/entity/GroupMember;
    .locals 2

    new-instance v0, Lcom/ifengyu/im/DB/entity/GroupMember;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/GroupMember;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setGroupId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setUserId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getNickNameIngroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setGroupNick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getCreatedTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setJoinTime(I)V

    return-object v0
.end method

.method public static getJavaGroupType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;)I
    .locals 3

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupType:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionType is illegal,cause by #getProtoSessionType#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getJavaMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)I
    .locals 3

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgType is illegal,cause by #getProtoMsgType#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x11

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getJavaSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)I
    .locals 3

    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$SessionType:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionType is illegal,cause by #getProtoSessionType#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getUnreadEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/imservice/entity/UnreadEntity;
    .locals 2

    new-instance v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getJavaSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setSessionType(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setLatestMsgData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setPeerId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setLaststMsgId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getUnreadCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setUnReadCnt(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->buildSessionKey()Ljava/lang/String;

    return-object v0
.end method

.method public static getUserEntity(Lcom/ifengyu/im/account/UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 5

    new-instance v1, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v1}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ifengyu/im/account/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setCreated(J)V

    iget-object v0, p0, Lcom/ifengyu/im/account/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setEmail(Ljava/lang/String;)V

    const-string v0, "male"

    iget-object v4, p0, Lcom/ifengyu/im/account/UserInfo;->gender:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setGender(I)V

    iget-object v0, p0, Lcom/ifengyu/im/account/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setMainName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/account/UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPhone(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setUpdated(J)V

    iget-object v0, p0, Lcom/ifengyu/im/account/UserInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPeerId(I)V

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setStatus(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setCreated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDepartmentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setDepartmentId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setGender(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setMainName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPinyinName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setRealName(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setUpdated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPeerId(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v0
.end method

.method public static getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setStatus(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setCreated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDepartmentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setDepartmentId(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setGender(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setMainName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPinyinName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setRealName(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->setUpdated(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setPeerId(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    return-object v0
.end method
