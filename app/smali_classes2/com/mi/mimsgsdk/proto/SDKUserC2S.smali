.class public final Lcom/mi/mimsgsdk/proto/SDKUserC2S;
.super Ljava/lang/Object;
.source "SDKUserC2S.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;,
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRspOrBuilder;,
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;,
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReqOrBuilder;,
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;,
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\n\u0010SDKUserC2S.proto\u0012\u0015com.mi.mimsgsdk.proto\"<\n\u000bMediaUserId\u0012\u000c\n\u0004guid\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004muid\u0018\u0002 \u0002(\u0004\u0012\u0011\n\tmediaMuid\u0018\u0003 \u0002(\r\"0\n\u000cQueryMuidReq\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0011\n\tmediaMuid\u0018\u0002 \u0003(\r\"r\n\u000cQueryMuidRsp\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003ret\u0018\u0002 \u0002(\r\u00124\n\u0008mediaIds\u0018\u0003 \u0003(\u000b2\".com.mi.mimsgsdk.proto.MediaUserId\u0012\u0010\n\u0008errorMsg\u0018\u0004 \u0001(\t"

    aput-object v1, v0, v4

    new-instance v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Guid"

    aput-object v3, v2, v4

    const-string v3, "Muid"

    aput-object v3, v2, v5

    const-string v3, "MediaMuid"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v4

    const-string v3, "MediaMuid"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v4

    const-string v3, "Ret"

    aput-object v3, v2, v5

    const-string v3, "MediaIds"

    aput-object v3, v2, v6

    const-string v3, "ErrorMsg"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
