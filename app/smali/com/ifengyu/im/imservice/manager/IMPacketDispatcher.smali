.class public Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;
.super Ljava/lang/Object;
.source "IMPacketDispatcher.java"


# static fields
.field private static logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buddyPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V
    .locals 5

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onRepAllUsers(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "buddyPacketDispatcher# error,cid:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onRepDetailUsers(Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRemoveSessionRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRemoveSessionRsp;

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMPCLoginStatusNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMPCLoginStatusNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onLoginStatusNotify(Lcom/ifengyu/im/protobuf/IMBuddy$IMPCLoginStatusNotify;)V

    goto :goto_0

    :sswitch_5
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onRepDepartment(Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x202 -> :sswitch_2
        0x205 -> :sswitch_1
        0x207 -> :sswitch_3
        0x209 -> :sswitch_0
        0x20e -> :sswitch_4
        0x211 -> :sswitch_5
    .end sparse-switch
.end method

.method public static groupPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V
    .locals 5

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onRepNormalGroupList(Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "groupPacketDispatcher# error,cid:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    :try_start_1
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onRepGroupDetailInfo(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;)V

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->receiveGroupChangeMemberNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)V

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onInviteUserJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;)V

    goto :goto_0

    :sswitch_5
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onReceiveAgreeOrRejectGroupInviteNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;)V

    goto :goto_0

    :sswitch_6
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onApplyJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;)V

    goto :goto_0

    :sswitch_7
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onReceiveAgreeOrRejectUserJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;)V

    goto :goto_0

    :sswitch_8
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onRespQueryGroupList(Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;)V

    goto :goto_0

    :sswitch_9
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onRepGroupMembers(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onUserNicknameChangeInGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onGroupInfoChangeNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x402 -> :sswitch_8
        0x404 -> :sswitch_1
        0x406 -> :sswitch_2
        0x40c -> :sswitch_0
        0x40d -> :sswitch_3
        0x416 -> :sswitch_6
        0x419 -> :sswitch_7
        0x41c -> :sswitch_4
        0x41f -> :sswitch_5
        0x421 -> :sswitch_9
        0x424 -> :sswitch_a
        0x433 -> :sswitch_b
    .end sparse-switch
.end method

.method public static loginPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V
    .locals 5

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onRepLoginOut(Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutRsp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "loginPacketDispatcher# error,cid:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onKickout(Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x106
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static msgPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V
    .locals 5

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "msgPacketDispatcher# error,cid:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRsp;

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgByIdRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgByIdRsp;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
