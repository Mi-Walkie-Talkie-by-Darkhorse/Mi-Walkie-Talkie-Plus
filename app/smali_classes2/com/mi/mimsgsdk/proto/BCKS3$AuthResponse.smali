.class public final Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BCKS3.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_FIELD_NUMBER:I = 0x4

.field public static final DATE_FIELD_NUMBER:I = 0x7

.field public static final ERRORCODE_FIELD_NUMBER:I = 0x2

.field public static final ERRORMSG_FIELD_NUMBER:I = 0x6

.field public static final FILEINFO_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REUSABLE_FIELD_NUMBER:I = 0x3

.field public static final RID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

.field private static final serialVersionUID:J


# instance fields
.field private authorization_:Ljava/lang/Object;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private errorCode_:I

.field private errorMsg_:Ljava/lang/Object;

.field private fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reusable_:Z

.field private rid_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    move v0, v2

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    move v0, v2

    goto :goto_1

    :sswitch_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :sswitch_5
    const/4 v0, 0x0

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {v3, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    move v0, v2

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->makeExtensionsImmutable()V

    return-void

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

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->makeExtensionsImmutable()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    return p1
.end method

.method static synthetic access$2602(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    iput v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->access$2000()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method


# virtual methods
.method public getAuthorization()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getAuthorizationBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->authorization_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getDateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->date_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    return-object v0
.end method

.method public getFileInfoOrBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReusable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    return v0
.end method

.method public getRid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_3

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getAuthorizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAuthorization()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

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

.method public hasErrorMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

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

.method public hasFileInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

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

.method public hasReusable()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasRid()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasErrorCode()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasFileInfo()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->newBuilder(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

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

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->rid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->errorCode_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->reusable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getAuthorizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
