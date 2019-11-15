.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto;
.super Ljava/lang/Object;
.source "MiMsgProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsgOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsgOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsgOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgResponse;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;,
        Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u0010MiMsgProto.proto\u0012\u0015com.mi.mimsgsdk.proto\"~\n\u0007Message\u0012\u0010\n\u0008fromGuid\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008targetId\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006msgSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005msgId\u0018\u0004 \u0001(\u0004\u0012\u0010\n\u0008sentTime\u0018\u0005 \u0002(\r\u0012\u000c\n\u0004body\u0018\u0006 \u0002(\u000c\u0012\u0010\n\u0008bodyType\u0018\u0007 \u0001(\r\"\u0086\u0001\n\u0012SendUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGuid\u0018\u0002 \u0003(\t\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\u000c\n\u0004body\u0018\u0006 \u0002(\u000c\u0012\u0010\n\u0008bodyType\u0018\u0007 \u0001(\r\"\u008a\u0001\n\u0013SendUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\r"

    aput-object v1, v0, v5

    const-string v1, "\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\u0006 \u0001(\u0004\u0012\u0010\n\u0008sentTime\u0018\u0007 \u0001(\r\"k\n\u000bPushUserMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008fromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012+\n\u0003msg\u0018\u0004 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"X\n\u0012SyncUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0002 \u0002(\t\u0012\u0012\n\nmaxRecvSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0004 \u0001(\r\"\u009a\u0001\n\u0013SyncUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0004 \u0001(\u0004\u0012\u0011\n\tmaxMsgSeq\u0018\u0005 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0006 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Mess"

    aput-object v1, v0, v6

    const-string v1, "age\"\\\n\u0015PullOldUserMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bstartMsgSeq\u0018\u0003 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0004 \u0001(\r\"\u008a\u0001\n\u0016PullOldUserMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0004 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0005 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0087\u0001\n\u0013SendGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGgid\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\u000c\n\u0004body\u0018\u0006 \u0002(\u000c\u0012\u0010\n\u0008bodyType\u0018\u0007 \u0001(\r\"\u00b3\u0001\n\u0014SendGroupMsgRespons"

    aput-object v1, v0, v7

    const-string v1, "e\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0007 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\u0008 \u0001(\u0004\u0012\u0010\n\u0008sentTime\u0018\t \u0001(\r\"|\n\u000cPushGroupMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008fromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012\u000e\n\u0006toMgid\u0018\u0004 \u0001(\u0004\u0012+\n\u0003msg\u0018\u0005 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u007f\n\u0013SyncGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0003 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0004 \u0002(\t\u0012\u0012\n\nmaxRecvSeq\u0018\u0005 \u0002(\u0004\u0012\r"

    aput-object v1, v0, v8

    const-string v1, "\n\u0005limit\u0018\u0006 \u0001(\r\"\u00c3\u0001\n\u0014SyncGroupMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012\u0011\n\tmaxMsgSeq\u0018\u0007 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0008 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0083\u0001\n\u0016PullOldGroupMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0003 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0004 \u0002(\t\u0012\u0013\n\u000bstartMsgSeq\u0018\u0005 \u0002(\u0004\u0012\r\n\u0005limit\u0018\u0006 \u0001(\r\"\u00b3\u0001\n\u0017PullOldGroupMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "\u0002 \u0002(\r\u0012\u0010\n\u0008currGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008currMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGgid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMgid\u0018\u0006 \u0001(\u0004\u0012,\n\u0004msgs\u0018\u0007 \u0003(\u000b2\u001e.com.mi.mimsgsdk.proto.Message\"\u0086\u0001\n\u0012SendRoomMsgRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006toGrid\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\r\n\u0005msgId\u0018\u0005 \u0001(\u0004\u0012\u000c\n\u0004body\u0018\u0006 \u0002(\u000c\u0012\u0010\n\u0008bodyType\u0018\u0007 \u0001(\r\"\u00b2\u0001\n\u0013SendRoomMsgResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007retCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\u0012\u0012\n\ntargetGrid\u0018\u0005 \u0002(\t\u0012\u0012\n\ntargetMrid\u0018\u0006 \u0001(\u0004\u0012\r\n\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msgId\u0018\u0007 \u0001(\u0004\u0012\u000e\n\u0006msgSeq\u0018\u0008 \u0001(\u0004\u0012\u0010\n\u0008sentTime\u0018\t \u0001(\r\"y\n\u000bPushRoomMsg\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008fromMuid\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006toMuid\u0018\u0003 \u0002(\u0004\u0012\u000c\n\u0004mrid\u0018\u0004 \u0001(\u0004\u0012+\n\u0003msg\u0018\u0005 \u0002(\u000b2\u001e.com.mi.mimsgsdk.proto.Message"

    aput-object v2, v0, v1

    new-instance v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FromGuid"

    aput-object v3, v2, v5

    const-string v3, "TargetId"

    aput-object v3, v2, v6

    const-string v3, "MsgSeq"

    aput-object v3, v2, v7

    const-string v3, "MsgId"

    aput-object v3, v2, v8

    const-string v3, "SentTime"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Body"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BodyType"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "ToGuid"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "MsgId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Body"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BodyType"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "MsgId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MsgSeq"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SentTime"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "FromMuid"

    aput-object v3, v2, v6

    const-string v3, "ToMuid"

    aput-object v3, v2, v7

    const-string v3, "Msg"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "CurrGuid"

    aput-object v3, v2, v6

    const-string v3, "MaxRecvSeq"

    aput-object v3, v2, v7

    const-string v3, "Limit"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "CurrGuid"

    aput-object v3, v2, v7

    const-string v3, "CurrMuid"

    aput-object v3, v2, v8

    const-string v3, "MaxMsgSeq"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Msgs"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "CurrGuid"

    aput-object v3, v2, v6

    const-string v3, "StartMsgSeq"

    aput-object v3, v2, v7

    const-string v3, "Limit"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "CurrGuid"

    aput-object v3, v2, v7

    const-string v3, "CurrMuid"

    aput-object v3, v2, v8

    const-string v3, "Msgs"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "ToGgid"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "MsgId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Body"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BodyType"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "TargetGgid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TargetMgid"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MsgId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MsgSeq"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SentTime"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "FromMuid"

    aput-object v3, v2, v6

    const-string v3, "ToMuid"

    aput-object v3, v2, v7

    const-string v3, "ToMgid"

    aput-object v3, v2, v8

    const-string v3, "Msg"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "CurrGuid"

    aput-object v3, v2, v6

    const-string v3, "CurrMuid"

    aput-object v3, v2, v7

    const-string v3, "TargetGgid"

    aput-object v3, v2, v8

    const-string v3, "MaxRecvSeq"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Limit"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "CurrGuid"

    aput-object v3, v2, v7

    const-string v3, "CurrMuid"

    aput-object v3, v2, v8

    const-string v3, "TargetGgid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TargetMgid"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MaxMsgSeq"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Msgs"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "CurrGuid"

    aput-object v3, v2, v6

    const-string v3, "CurrMuid"

    aput-object v3, v2, v7

    const-string v3, "TargetGgid"

    aput-object v3, v2, v8

    const-string v3, "StartMsgSeq"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Limit"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "CurrGuid"

    aput-object v3, v2, v7

    const-string v3, "CurrMuid"

    aput-object v3, v2, v8

    const-string v3, "TargetGgid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TargetMgid"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Msgs"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "ToGrid"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "MsgId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Body"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BodyType"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "RetCode"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    const-string v3, "TargetGrid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TargetMrid"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MsgId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MsgSeq"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SentTime"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "FromMuid"

    aput-object v3, v2, v6

    const-string v3, "ToMuid"

    aput-object v3, v2, v7

    const-string v3, "Mrid"

    aput-object v3, v2, v8

    const-string v3, "Msg"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushGroupMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$20000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldGroupMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$23100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendRoomMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$24800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$24900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushRoomMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$26102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SendUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushUserMsg_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PushUserMsg_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_SyncUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->internal_static_com_mi_mimsgsdk_proto_PullOldUserMsgResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
