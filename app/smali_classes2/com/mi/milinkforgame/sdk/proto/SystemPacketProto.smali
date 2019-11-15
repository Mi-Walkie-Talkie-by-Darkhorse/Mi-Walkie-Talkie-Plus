.class public final Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;
.super Ljava/lang/Object;
.source "SystemPacketProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReqOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReqOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigReq;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigReqOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsAccInfo;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsAccInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReqOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOffOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$SdkConnMgrInfo;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$SdkConnMgrInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginRsp;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginRspOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginReq;,
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginReqOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u0018mns_service_define.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\",\n\u000eMnsCmdLoginReq\u0012\u000c\n\u0004flag\u0018\u0001 \u0001(\r\u0012\u000c\n\u0004sUID\u0018\u0002 \u0001(\t\"<\n\u000eMnsCmdLoginRsp\u0012\u0010\n\u0008GTKEY_B2\u0018\u0001 \u0001(\u000c\u0012\n\n\u0002B2\u0018\u0002 \u0001(\u000c\u0012\u000c\n\u0004sUID\u0018\u0003 \u0001(\t\"H\n\u000eSdkConnMgrInfo\u0012\u0014\n\u000cip_principle\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008apn_type\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006is_bgd\u0018\u0003 \u0001(\u0008\"\u0097\u0001\n\u000fMnsCmdHeartBeat\u0012\r\n\u0005ptime\u0018\u0001 \u0001(\r\u0012@\n\u0008mgr_info\u0018\u0002 \u0001(\u000b2..com.mi.milinkforgame.sdk.proto.SdkConnMgrInfo\u0012\u000c\n\u0004sUID\u0018\u0003 \u0001(\t\u0012\u0012\n\nis_fake_hb\u0018\u0004 \u0001(\u0008\u0012\u0011\n\ttimeStamp\u0018\u0005 \u0001(\u0004\"\u008e\u0001\n\u0012M"

    aput-object v1, v0, v5

    const-string v1, "nsCmdHeartBeatRsp\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\u0012<\n\u0006config\u0018\u0002 \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.MiLinkConfig\u0012\u0013\n\u000bengineratio\u0018\u0003 \u0001(\u0002\u0012\u0012\n\njsonconfig\u0018\u0004 \u0001(\t\"D\n\u000cMiLinkConfig\u0012\u0019\n\u0011heartBeatInterval\u0018\u0001 \u0001(\u0004\u0012\u0019\n\u0011b2TokenExpireTime\u0018\u0002 \u0001(\r\"\u001e\n\u000eMnsCmdLoginOff\u0012\u000c\n\u0004sUID\u0018\u0001 \u0001(\t\"`\n\u0015MnsCmdPushRegisterReq\u0012\u0013\n\u000bdevicetoken\u0018\u0001 \u0001(\u000c\u0012\r\n\u0005onoff\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004sUID\u0018\u0003 \u0001(\t\u0012\u0015\n\rpassportlogin\u0018\u0004 \u0001(\u0008\"%\n\u0015MnsCmdPushRegisterRsp\u0012\u000c\n\u0004sUID\u0018\u0001 \u0001(\t\"L\n\nMnsAccInfo\u0012\r\n\u0005AccI"

    aput-object v1, v0, v6

    const-string v1, "d\u0018\u0001 \u0002(\u0004\u0012\r\n\u0005AccIp\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007AccPort\u0018\u0003 \u0002(\r\u0012\u000f\n\u0007AccFlag\u0018\u0004 \u0001(\u0005\"\'\n\u0012MiLinkGetConfigReq\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\"y\n\u0012MiLinkGetConfigRsp\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\u0012<\n\u0006config\u0018\u0002 \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.MiLinkConfig\u0012\u0012\n\njsonConfig\u0018\u0003 \u0001(\t\"d\n\u0012MnsCmdHandShakeReq\u0012\u000c\n\u0004type\u0018\u0001 \u0002(\u0005\u0012@\n\u0008mgr_info\u0018\u0002 \u0001(\u000b2..com.mi.milinkforgame.sdk.proto.SdkConnMgrInfo\"\u009d\u0001\n\u0012MnsCmdHandShakeRsp\u0012\u000c\n\u0004type\u0018\u0001 \u0002(\u0005\u0012;\n\u0008redirect\u0018\u0002 \u0003(\u000b2).com.mi.milinkforgame"

    aput-object v1, v0, v7

    const-string v1, ".sdk.proto.MnsIpInfo\u0012\u0012\n\nuprinciple\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nclientinfo\u0018\u0004 \u0001(\t\u0012\u0014\n\tcross_opr\u0018\u0005 \u0001(\u0005:\u00010\"B\n\tMnsIpInfo\u0012\n\n\u0002ip\u0018\u0001 \u0001(\r\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\r\u0012\u000b\n\u0003apn\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006remark\u0018\u0004 \u0001(\t\"\u0085\u0001\n\rMnsCmdBindReq\u0012\u000b\n\u0003gid\u0018\u0001 \u0002(\t\u0012\n\n\u0002B2\u0018\u0002 \u0002(\t\u0012\u0012\n\nprivacyKey\u0018\u0003 \u0002(\t\u0012\u000c\n\u0004sUID\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bdevicetoken\u0018\u0005 \u0001(\u000c\u0012\r\n\u0005onoff\u0018\u0006 \u0001(\u0008\u0012\u0015\n\rpassportlogin\u0018\u0007 \u0001(\u0008\"U\n\rMnsCmdBindRsp\u0012\u000b\n\u0003gid\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003uid\u0018\u0002 \u0002(\u0004\u0012\n\n\u0002B2\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008GTKEY_B2\u0018\u0004 \u0002(\t\u0012\u000c\n\u0004sUID\u0018\u0005 \u0001(\tB3\n\u001ecom.mi.milinkforgame.sd"

    aput-object v1, v0, v8

    const-string v1, "k.protoB\u0011SystemPacketProto"

    aput-object v1, v0, v9

    new-instance v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Flag"

    aput-object v3, v2, v5

    const-string v3, "SUID"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "GTKEYB2"

    aput-object v3, v2, v5

    const-string v3, "B2"

    aput-object v3, v2, v6

    const-string v3, "SUID"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IpPrinciple"

    aput-object v3, v2, v5

    const-string v3, "ApnType"

    aput-object v3, v2, v6

    const-string v3, "IsBgd"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ptime"

    aput-object v3, v2, v5

    const-string v3, "MgrInfo"

    aput-object v3, v2, v6

    const-string v3, "SUID"

    aput-object v3, v2, v7

    const-string v3, "IsFakeHb"

    aput-object v3, v2, v8

    const-string v3, "TimeStamp"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "TimeStamp"

    aput-object v3, v2, v5

    const-string v3, "Config"

    aput-object v3, v2, v6

    const-string v3, "Engineratio"

    aput-object v3, v2, v7

    const-string v3, "Jsonconfig"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "HeartBeatInterval"

    aput-object v3, v2, v5

    const-string v3, "B2TokenExpireTime"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SUID"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Devicetoken"

    aput-object v3, v2, v5

    const-string v3, "Onoff"

    aput-object v3, v2, v6

    const-string v3, "SUID"

    aput-object v3, v2, v7

    const-string v3, "Passportlogin"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SUID"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "AccId"

    aput-object v3, v2, v5

    const-string v3, "AccIp"

    aput-object v3, v2, v6

    const-string v3, "AccPort"

    aput-object v3, v2, v7

    const-string v3, "AccFlag"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TimeStamp"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TimeStamp"

    aput-object v3, v2, v5

    const-string v3, "Config"

    aput-object v3, v2, v6

    const-string v3, "JsonConfig"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "MgrInfo"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Redirect"

    aput-object v3, v2, v6

    const-string v3, "Uprinciple"

    aput-object v3, v2, v7

    const-string v3, "Clientinfo"

    aput-object v3, v2, v8

    const-string v3, "CrossOpr"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Ip"

    aput-object v3, v2, v5

    const-string v3, "Port"

    aput-object v3, v2, v6

    const-string v3, "Apn"

    aput-object v3, v2, v7

    const-string v3, "Remark"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Gid"

    aput-object v3, v2, v5

    const-string v3, "B2"

    aput-object v3, v2, v6

    const-string v3, "PrivacyKey"

    aput-object v3, v2, v7

    const-string v3, "SUID"

    aput-object v3, v2, v8

    const-string v3, "Devicetoken"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Onoff"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Passportlogin"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Gid"

    aput-object v3, v2, v5

    const-string v3, "Uid"

    aput-object v3, v2, v6

    const-string v3, "B2"

    aput-object v3, v2, v7

    const-string v3, "GTKEYB2"

    aput-object v3, v2, v8

    const-string v3, "SUID"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
