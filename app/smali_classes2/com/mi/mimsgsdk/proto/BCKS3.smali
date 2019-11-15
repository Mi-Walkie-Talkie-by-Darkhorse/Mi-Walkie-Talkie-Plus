.class public final Lcom/mi/mimsgsdk/proto/BCKS3;
.super Ljava/lang/Object;
.source "BCKS3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;,
        Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;,
        Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;,
        Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;,
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponseOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;,
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequestOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\n\u000bBCKS3.proto\u0012\u0015com.mi.mimsgsdk.proto\"\u00db\u0001\n\u000bAuthRequest\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0010\n\u0008httpVerb\u0018\u0002 \u0002(\t\u0012\u0012\n\ncontentMd5\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bcontentType\u0018\u0004 \u0002(\t\u0012\u000c\n\u0004date\u0018\u0005 \u0002(\t\u0012\u001c\n\u0014canonicalizedHeaders\u0018\u0006 \u0002(\t\u0012\u000e\n\u0006suffix\u0018\u0007 \u0002(\t\u0012:\n\u0008authType\u0018\u0008 \u0001(\u000e2\u001f.com.mi.mimsgsdk.proto.AuthType:\u0007DEFAULT\u0012\u000c\n\u0004vuid\u0018\t \u0001(\u0004\"\u00aa\u0001\n\u000cAuthResponse\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0011\n\terrorCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008reusable\u0018\u0003 \u0001(\u0008\u0012\u0015\n\rauthorization\u0018\u0004 \u0001(\t\u00121\n\u0008fileInfo\u0018\u0005 \u0001(\u000b2\u001f.com.mi.mimsgsdk.proto.FileInfo\u0012"

    aput-object v1, v0, v5

    const-string v1, "\u0010\n\u0008errorMsg\u0018\u0006 \u0001(\t\u0012\u000c\n\u0004date\u0018\u0007 \u0001(\t\"b\n\u000cReuseRequest\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0012\n\ncontentMd5\u0018\u0002 \u0002(\t\u00121\n\u0008fileInfo\u0018\u0003 \u0002(\u000b2\u001f.com.mi.mimsgsdk.proto.FileInfo\"A\n\rReuseResponse\u0012\u000b\n\u0003rid\u0018\u0001 \u0002(\u0004\u0012\u0011\n\terrorCode\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\"G\n\u0008FileInfo\u0012\u000e\n\u0006bucket\u0018\u0001 \u0002(\t\u0012\u0011\n\tobjectKey\u0018\u0002 \u0002(\t\u0012\u000b\n\u0003url\u0018\u0003 \u0002(\t\u0012\u000b\n\u0003acl\u0018\u0004 \u0002(\t*!\n\u0008AuthType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u0008\n\u0004HEAD\u0010\u0001"

    aput-object v1, v0, v6

    new-instance v1, Lcom/mi/mimsgsdk/proto/BCKS3$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Rid"

    aput-object v3, v2, v5

    const-string v3, "HttpVerb"

    aput-object v3, v2, v6

    const-string v3, "ContentMd5"

    aput-object v3, v2, v7

    const-string v3, "ContentType"

    aput-object v3, v2, v8

    const-string v3, "Date"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CanonicalizedHeaders"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Suffix"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AuthType"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Vuid"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Rid"

    aput-object v3, v2, v5

    const-string v3, "ErrorCode"

    aput-object v3, v2, v6

    const-string v3, "Reusable"

    aput-object v3, v2, v7

    const-string v3, "Authorization"

    aput-object v3, v2, v8

    const-string v3, "FileInfo"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ErrorMsg"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Date"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Rid"

    aput-object v3, v2, v5

    const-string v3, "ContentMd5"

    aput-object v3, v2, v6

    const-string v3, "FileInfo"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Rid"

    aput-object v3, v2, v5

    const-string v3, "ErrorCode"

    aput-object v3, v2, v6

    const-string v3, "ErrorMsg"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Bucket"

    aput-object v3, v2, v5

    const-string v3, "ObjectKey"

    aput-object v3, v2, v6

    const-string v3, "Url"

    aput-object v3, v2, v7

    const-string v3, "Acl"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_AuthResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_ReuseResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_FileInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->internal_static_com_mi_mimsgsdk_proto_FileInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/BCKS3;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
