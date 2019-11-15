.class public final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;
.super Ljava/lang/Object;
.source "UpstreamPacketProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacketOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\n\u0012mns_upstream.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\"\u00c5\u0003\n\u000eUpstreamPacket\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\r\n\u0005appId\u0018\u0002 \u0001(\r\u0012\r\n\u0005miUin\u0018\u0003 \u0001(\u0004\u0012\n\n\u0002ua\u0018\u0004 \u0001(\t\u0012\u0012\n\nserviceCmd\u0018\u0005 \u0001(\t\u0012\u0012\n\ndeviceInfo\u0018\u0006 \u0001(\u000c\u00128\n\u0005token\u0018\u0007 \u0001(\u000b2).com.mi.milinkforgame.sdk.proto.TokenInfo\u0012<\n\u0006ipInfo\u0018\u0008 \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.ClientIpInfo\u0012\u0010\n\u0008busiBuff\u0018\t \u0001(\u000c\u0012\r\n\u0005extra\u0018\n \u0001(\u000c\u0012\u000c\n\u0004flag\u0018\u000b \u0001(\r\u0012\u0011\n\tsessionId\u0018\u000c \u0001(\r\u0012<\n\tretryInfo\u0018\r \u0001(\u000b2).com.mi.milinkforgame.sdk.p"

    aput-object v1, v0, v5

    const-string v1, "roto.RetryInfo\u0012@\n\u000bbusiControl\u0018\u000e \u0001(\u000b2+.com.mi.milinkforgame.sdk.proto.BusiControl\u0012\r\n\u0005miUid\u0018\u000f \u0001(\t\u0012\u000b\n\u0003gid\u0018\u0010 \u0001(\t\"b\n\tTokenInfo\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003key\u0018\u0002 \u0001(\u000c\u0012:\n\u0006extKey\u0018\u0003 \u0003(\u000b2*.com.mi.milinkforgame.sdk.proto.ExtKeyInfo\"&\n\nExtKeyInfo\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003val\u0018\u0002 \u0001(\u000c\"Z\n\u000cClientIpInfo\u0012\u000e\n\u0006ipType\u0018\u0001 \u0001(\r\u0012\u0012\n\nclientPort\u0018\u0002 \u0001(\r\u0012\u0012\n\nclientIpV4\u0018\u0003 \u0001(\r\u0012\u0012\n\nclientIpV6\u0018\u0004 \u0001(\u000c\":\n\tRetryInfo\u0012\u000c\n\u0004flag\u0018\u0001 \u0001(\r\u0012\u0010\n\u0008retryCnt\u0018\u0002 \u0001(\r\u0012\r\n\u0005pkgId\u0018\u0003 \u0001(\u0004"

    aput-object v1, v0, v6

    const-string v1, "\"M\n\u000bBusiControl\u0012\u0010\n\u0008compFlag\u0018\u0001 \u0001(\r\u0012\u0015\n\rlenBeforeComp\u0018\u0002 \u0001(\u0004\u0012\u0015\n\risSupportComp\u0018\u0003 \u0001(\u0008*$\n\tTokenType\u0012\u0017\n\u0013MNS_TOKEN_TYPE_NULL\u0010\u0000B5\n\u001ecom.mi.milinkforgame.sdk.protoB\u0013UpstreamPacketProto"

    aput-object v1, v0, v7

    new-instance v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Seq"

    aput-object v3, v2, v5

    const-string v3, "AppId"

    aput-object v3, v2, v6

    const-string v3, "MiUin"

    aput-object v3, v2, v7

    const-string v3, "Ua"

    aput-object v3, v2, v8

    const-string v3, "ServiceCmd"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "DeviceInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Token"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "IpInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "BusiBuff"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Extra"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Flag"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SessionId"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "RetryInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "BusiControl"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "MiUid"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Gid"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Key"

    aput-object v3, v2, v6

    const-string v3, "ExtKey"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Key"

    aput-object v3, v2, v5

    const-string v3, "Val"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "IpType"

    aput-object v3, v2, v5

    const-string v3, "ClientPort"

    aput-object v3, v2, v6

    const-string v3, "ClientIpV4"

    aput-object v3, v2, v7

    const-string v3, "ClientIpV6"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Flag"

    aput-object v3, v2, v5

    const-string v3, "RetryCnt"

    aput-object v3, v2, v6

    const-string v3, "PkgId"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CompFlag"

    aput-object v3, v2, v5

    const-string v3, "LenBeforeComp"

    aput-object v3, v2, v6

    const-string v3, "IsSupportComp"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
