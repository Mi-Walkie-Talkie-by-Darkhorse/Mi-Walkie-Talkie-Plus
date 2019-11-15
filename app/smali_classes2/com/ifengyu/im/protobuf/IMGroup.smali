.class public final Lcom/ifengyu/im/protobuf/IMGroup;
.super Ljava/lang/Object;
.source "IMGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyConferenceReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupConferenceMemberNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupConferenceMemberNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveConferenceRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveConferenceRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveConferenceReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveConferenceReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJoinConferenceRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJoinConferenceRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJoinConferenceReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJoinConferenceReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyGroupRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyGroupRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyGroupReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupDestroyGroupReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJudgeInGroupRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJudgeInGroupRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJudgeInGroupReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupJudgeInGroupReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspAck;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspAckOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqAck;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqAckOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAckOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReqAck;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReqAckOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotifyOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReqOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRspOrBuilder;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq;,
        Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReqOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
