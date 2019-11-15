.class public final Lcom/mi/mimsgsdk/proto/SDKSignal;
.super Ljava/lang/Object;
.source "SDKSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberRsp;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberRspOrBuilder;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReqOrBuilder;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;,
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\n\u000fSDKSignal.proto\u0012\u0015com.mi.mimsgsdk.proto\u001a\u0010SDKUserC2S.proto\"^\n\u0013QueryMediaIdRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0014\n\u000cconferenceId\u0018\u0002 \u0002(\u0004\u0012\u0010\n\u0008fromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008fromMuid\u0018\u0004 \u0001(\u0004\"v\n\u0014QueryMediaIdResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003ret\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007mediaId\u0018\u0003 \u0001(\u0004\u0012\u0010\n\u0008errorMsg\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004muid\u0018\u0005 \u0001(\u0004\u0012\u0011\n\tmediaMuid\u0018\u0006 \u0001(\r\"?\n\u0018QueryConferenceMemberReq\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0014\n\u000cconferenceId\u0018\u0002 \u0002(\u0004\"_\n\u0018QueryConferenceMemberRsp\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u00124\n\u0008memebers\u0018\u0002 \u0003(\u000b"

    aput-object v1, v0, v5

    const-string v1, "2\".com.mi.mimsgsdk.proto.MediaUserId"

    aput-object v1, v0, v6

    new-instance v1, Lcom/mi/mimsgsdk/proto/SDKSignal$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$1;-><init>()V

    new-array v2, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "ConferenceId"

    aput-object v3, v2, v6

    const-string v3, "FromGuid"

    aput-object v3, v2, v7

    const-string v3, "FromMuid"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "Ret"

    aput-object v3, v2, v6

    const-string v3, "MediaId"

    aput-object v3, v2, v7

    const-string v3, "ErrorMsg"

    aput-object v3, v2, v8

    const-string v3, "Muid"

    aput-object v3, v2, v4

    const/4 v3, 0x5

    const-string v4, "MediaMuid"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "ConferenceId"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "Memebers"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/SDKSignal;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
