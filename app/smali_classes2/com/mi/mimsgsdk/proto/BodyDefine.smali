.class public final Lcom/mi/mimsgsdk/proto/BodyDefine;
.super Ljava/lang/Object;
.source "BodyDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/BodyDefine$DefaultBody;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$DefaultBodyOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBodyOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$TextBody;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$TextBodyOrBuilder;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;,
        Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBodyOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\n\u0010BodyDefine.proto\u0012\u0015com.mi.mimsgsdk.proto\"A\n\tAudioBody\u0012\u0011\n\tserverURL\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008duration\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007content\u0018\u0003 \u0001(\u000c\")\n\u0008TextBody\u0012\u000c\n\u0004text\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\u000c\"e\n\tVideoBody\u0012\u0011\n\tserverURL\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008duration\u0018\u0002 \u0002(\r\u0012\u000c\n\u0004size\u0018\u0003 \u0002(\r\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\u000c\u0012\u0014\n\u000cthumbnailURL\u0018\u0005 \u0001(\t\",\n\u000bDefaultBody\u0012\u000c\n\u0004tips\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\u000c"

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/mimsgsdk/proto/BodyDefine$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ServerURL"

    aput-object v3, v2, v5

    const-string v3, "Duration"

    aput-object v3, v2, v6

    const-string v3, "Content"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Text"

    aput-object v3, v2, v5

    const-string v3, "Content"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ServerURL"

    aput-object v3, v2, v5

    const-string v3, "Duration"

    aput-object v3, v2, v6

    const-string v3, "Size"

    aput-object v3, v2, v7

    const-string v3, "Content"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "ThumbnailURL"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Tips"

    aput-object v3, v2, v5

    const-string v3, "Content"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_AudioBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_AudioBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_TextBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_TextBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_VideoBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_VideoBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_DefaultBody_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->internal_static_com_mi_mimsgsdk_proto_DefaultBody_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/proto/BodyDefine;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BodyDefine;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
