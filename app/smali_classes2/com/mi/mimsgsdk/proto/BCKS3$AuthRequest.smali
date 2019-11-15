.class public final Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BCKS3.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUTHTYPE_FIELD_NUMBER:I = 0x8

.field public static final CANONICALIZEDHEADERS_FIELD_NUMBER:I = 0x6

.field public static final CONTENTMD5_FIELD_NUMBER:I = 0x3

.field public static final CONTENTTYPE_FIELD_NUMBER:I = 0x4

.field public static final DATE_FIELD_NUMBER:I = 0x5

.field public static final HTTPVERB_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final RID_FIELD_NUMBER:I = 0x1

.field public static final SUFFIX_FIELD_NUMBER:I = 0x7

.field public static final VUID_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

.field private static final serialVersionUID:J


# instance fields
.field private authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field private bitField0_:I

.field private canonicalizedHeaders_:Ljava/lang/Object;

.field private contentMd5_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private date_:Ljava/lang/Object;

.field private httpVerb_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rid_:J

.field private suffix_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private vuid_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J
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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;
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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-static {v3}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->valueOf(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    goto/16 :goto_0

    :sswitch_9
    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->access$300()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method


# virtual methods
.method public getAuthType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    return-object v0
.end method

.method public getCanonicalizedHeaders()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getCanonicalizedHeadersBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->canonicalizedHeaders_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getContentMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getContentMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->contentType_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getDateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->date_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->defaultInstance:Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getHttpVerbBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->httpVerb_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getHttpVerbBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_4

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getCanonicalizedHeadersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getSuffixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->getNumber()I

    move-result v1

    invoke-static {v7, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSuffixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->suffix_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J

    return-wide v0
.end method

.method public hasAuthType()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanonicalizedHeaders()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

.method public hasContentMd5()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

.method public hasHttpVerb()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuffix()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

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

.method public hasVuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    const-class v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasRid()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasHttpVerb()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasContentMd5()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasContentType()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasDate()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasCanonicalizedHeaders()Z

    move-result v2

    if-nez v2, :cond_7

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasSuffix()Z

    move-result v2

    if-nez v2, :cond_8

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_8
    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilder(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->rid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getHttpVerbBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getCanonicalizedHeadersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getSuffixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_7
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->vuid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_8
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
