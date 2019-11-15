.class public final Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Statis.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/Statis$ActionLogReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/Statis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionLogReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    }
.end annotation


# static fields
.field public static final ITEMS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

.field private static final serialVersionUID:J


# instance fields
.field private items_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    iput v2, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->initFields()V

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

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v4, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    sget-object v5, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->makeExtensionsImmutable()V

    throw v0

    :cond_3
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->makeExtensionsImmutable()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/Statis$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/Statis$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;->access$300()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    return-object v0
.end method

.method public getItems(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getItemsOrBuilder(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItemOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItemOrBuilder;

    return-object v0
.end method

.method public getItemsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogItemOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    const-class v2, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getItemsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getItems(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilderForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilderForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/Statis$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->toBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->toBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilder(Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->items_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
