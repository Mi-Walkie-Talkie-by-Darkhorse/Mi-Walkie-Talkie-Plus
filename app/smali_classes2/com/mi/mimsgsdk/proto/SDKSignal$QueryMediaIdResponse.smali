.class public final Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SDKSignal.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryMediaIdResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final ERRORMSG_FIELD_NUMBER:I = 0x4

.field public static final MEDIAID_FIELD_NUMBER:I = 0x3

.field public static final MEDIAMUID_FIELD_NUMBER:I = 0x6

.field public static final MUID_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RET_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

.field private static final serialVersionUID:J


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private errorMsg_:Ljava/lang/Object;

.field private mediaId_:J

.field private mediaMuid_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private muid_:J

.field private ret_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I
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

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I
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
    :try_start_4
    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    goto :goto_0

    :sswitch_6
    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/SDKSignal$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/SDKSignal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;->access$1500()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    return-wide v0
.end method

.method public getMediaMuid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I

    return v0
.end method

.method public getMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaId()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

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

.method public hasMediaMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

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

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->hasAppid()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->hasRet()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/SDKSignal$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->newBuilder(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse$Builder;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->ret_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->muid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_4
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->mediaMuid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
