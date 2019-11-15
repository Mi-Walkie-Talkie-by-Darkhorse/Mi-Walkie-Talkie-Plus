.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMGroupUserInfoReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;
    }
.end annotation


# static fields
.field public static final ATTACH_DATA_FIELD_NUMBER:I = 0x14

.field public static final GROUP_ID_LIST_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_HANDLE_FIELD_NUMBER:I = 0x3

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

.field private static final serialVersionUID:J


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private groupIdList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userHandle_:I

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v8, 0x2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    iput v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I
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

    and-int/lit8 v1, v2, 0x2

    if-ne v1, v8, :cond_1

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v8, :cond_2

    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x2

    if-eq v6, v8, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    goto/16 :goto_0

    :sswitch_5
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    :cond_6
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0xa2 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$30702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I

    return p1
.end method

.method static synthetic access$30800(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30802(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$30902(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    return p1
.end method

.method static synthetic access$31002(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$31102(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    return p1
.end method

.method static synthetic access$31200(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;->access$30500()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method


# virtual methods
.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    return-object v0
.end method

.method public getGroupIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupIdListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v0

    :goto_1
    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    add-int v0, v1, v3

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->getGroupIdListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedSerializedSize:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

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

.method public hasUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

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

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->groupIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->userHandle_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
