.class public final Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SDKUserC2S.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKUserC2S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryMuidRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final ERRORMSG_FIELD_NUMBER:I = 0x4

.field public static final MEDIAIDS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final RET_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

.field private static final serialVersionUID:J


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private errorMsg_:Ljava/lang/Object;

.field private mediaIds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ret_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x4

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    iput v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    and-int/lit8 v1, v2, 0x4

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_2

    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    sget-object v5, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I

    return p1
.end method

.method static synthetic access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    return p1
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->access$2400()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    return-object v0
.end method

.method public getMediaIdsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaIdsOrBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;

    return-object v0
.end method

.method public getMediaIdsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedSerializedSize:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRet()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    const-class v2, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->hasAppid()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->hasRet()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getMediaIdsCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->newBuilder(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->ret_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
