.class public final Lcom/mi/mimsgsdk/proto/Scribe;
.super Ljava/lang/Object;
.source "Scribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRsp;,
        Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRspOrBuilder;,
        Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq;,
        Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReqOrBuilder;,
        Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRsp;,
        Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRspOrBuilder;,
        Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;,
        Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReqOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\n\u000cScribe.proto\u0012\u0015com.mi.mimsgsdk.proto\"\u0098\u0001\n\u000bAgoralogReq\u0012\u000f\n\u0007traceid\u0018\u0001 \u0001(\t\u0012\n\n\u0002ts\u0018\u0002 \u0001(\u0003\u0012\r\n\u0005appid\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003uid\u0018\u0004 \u0001(\u0003\u0012\u000b\n\u0003cmd\u0018\u0005 \u0001(\t\u0012\u0014\n\u000csession_room\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006engine\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006status\u0018\u0008 \u0001(\t\u0012\r\n\u0005extra\u0018\t \u0001(\t\",\n\u000bAgoralogRsp\u0012\u000b\n\u0003ret\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\"C\n\u000cCommonlogReq\u0012\u000b\n\u0003cmd\u0018\u0001 \u0002(\t\u0012\r\n\u0005appid\u0018\u0002 \u0001(\u0005\u0012\n\n\u0002ts\u0018\u0003 \u0001(\u0003\u0012\u000b\n\u0003str\u0018\u0004 \u0001(\t\"-\n\u000cCommonlogRsp\u0012\u000b\n\u0003ret\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t"

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/mimsgsdk/proto/Scribe$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/Scribe$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Traceid"

    aput-object v3, v2, v5

    const-string v3, "Ts"

    aput-object v3, v2, v6

    const-string v3, "Appid"

    aput-object v3, v2, v7

    const-string v3, "Uid"

    aput-object v3, v2, v8

    const-string v3, "Cmd"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SessionRoom"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Engine"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Extra"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Ret"

    aput-object v3, v2, v5

    const-string v3, "ErrorMsg"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Cmd"

    aput-object v3, v2, v5

    const-string v3, "Appid"

    aput-object v3, v2, v6

    const-string v3, "Ts"

    aput-object v3, v2, v7

    const-string v3, "Str"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Ret"

    aput-object v3, v2, v5

    const-string v3, "ErrorMsg"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/Scribe;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
