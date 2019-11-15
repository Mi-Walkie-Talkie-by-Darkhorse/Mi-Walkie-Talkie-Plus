.class public final Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;
.super Ljava/lang/Object;
.source "DownstreamPacketProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$ExtraInfo;,
        Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$ExtraInfoOrBuilder;,
        Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;,
        Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacketOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\n\u0014mns_downstream.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\u001a\u0012mns_upstream.proto\"\u00ea\u0001\n\u0010DownstreamPacket\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\r\n\u0005miUin\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007mnsCode\u0018\u0003 \u0001(\u0011\u0012\u0010\n\u0008busiCode\u0018\u0004 \u0001(\u0011\u0012\u0012\n\nserviceCmd\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008busiBuff\u0018\u0006 \u0001(\u000c\u0012\r\n\u0005extra\u0018\u0007 \u0001(\u000c\u0012\u0011\n\tmnsErrMsg\u0018\u0008 \u0001(\t\u0012\r\n\u0005miUid\u0018\t \u0001(\t\u0012@\n\u000bbusiControl\u0018\n \u0001(\u000b2+.com.mi.milinkforgame.sdk.proto.BusiControl\"\"\n\tExtraInfo\u0012\u0015\n\rhasClientInfo\u0018\u0001 \u0001(\u0008B7\n\u001ecom.mi.milinkforgame.sdk.protoB\u0015DownstreamPacketP"

    aput-object v1, v0, v5

    const-string v1, "roto"

    aput-object v1, v0, v6

    new-instance v1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;-><init>()V

    new-array v2, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Seq"

    aput-object v3, v2, v5

    const-string v3, "MiUin"

    aput-object v3, v2, v6

    const-string v3, "MnsCode"

    aput-object v3, v2, v4

    const/4 v3, 0x3

    const-string v4, "BusiCode"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ServiceCmd"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "BusiBuff"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Extra"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MnsErrMsg"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MiUid"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "BusiControl"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HasClientInfo"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
