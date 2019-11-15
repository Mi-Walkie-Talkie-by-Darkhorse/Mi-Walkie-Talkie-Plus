.class public final Lcom/mi/mimsgsdk/proto/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;,
        Lcom/mi/mimsgsdk/proto/Utils$UploadLogPushOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\n\u000bUtils.proto\u0012\u0015com.mi.mimsgsdk.proto\"k\n\rUploadLogPush\u0012\u001e\n\u0016stillUploadWithoutWifi\u0018\u0001 \u0001(\u0008\u0012\u000f\n\u0007sbuPath\u0018\u0002 \u0001(\t\u0012\u0011\n\tmaxLength\u0018\u0003 \u0001(\u0004\u0012\u0016\n\u000emaxSubDirCount\u0018\u0004 \u0001(\r"

    aput-object v1, v0, v4

    new-instance v1, Lcom/mi/mimsgsdk/proto/Utils$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/Utils$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Utils;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/Utils;->internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Utils;->internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "StillUploadWithoutWifi"

    aput-object v3, v2, v4

    const-string v3, "SbuPath"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "MaxLength"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MaxSubDirCount"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Utils;->internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Utils;->internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Utils;->internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/Utils;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Utils;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
