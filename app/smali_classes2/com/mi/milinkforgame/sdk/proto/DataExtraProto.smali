.class public final Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;
.super Ljava/lang/Object;
.source "DataExtraProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra;,
        Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtraOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\n\u0013mns_dataextra.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\" \n\tDataExtra\u0012\u0013\n\u000bengineratio\u0018\u0001 \u0001(\u0002B0\n\u001ecom.mi.milinkforgame.sdk.protoB\u000eDataExtraProto"

    aput-object v1, v0, v4

    new-instance v1, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$1;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "Engineratio"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
