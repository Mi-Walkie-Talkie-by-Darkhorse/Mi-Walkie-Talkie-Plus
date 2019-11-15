.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SEAL_UserActionStatistics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    }
.end annotation


# static fields
.field public static final CONNBTEAR_FIELD_NUMBER:I = 0x7

.field public static final DEVICEIDQUERY_FIELD_NUMBER:I = 0x3

.field public static final FACTORYRESET_FIELD_NUMBER:I = 0x2

.field public static final FMOPEN_FIELD_NUMBER:I = 0x6

.field public static final KEYLOCK_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field public static final POWERLEVELQUERY_FIELD_NUMBER:I = 0x5

.field public static final POWERON_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;


# instance fields
.field private bitField0_:I

.field private connBtEar_:I

.field private deviceIdQuery_:I

.field private factoryReset_:I

.field private fmOpen_:I

.field private keyLock_:I

.field private powerLevelQuery_:I

.field private powerOn_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->initFields()V

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

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$17500()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerOn_:I

    return p1
.end method

.method static synthetic access$17802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->factoryReset_:I

    return p1
.end method

.method static synthetic access$17902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->deviceIdQuery_:I

    return p1
.end method

.method static synthetic access$18002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->keyLock_:I

    return p1
.end method

.method static synthetic access$18102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerLevelQuery_:I

    return p1
.end method

.method static synthetic access$18202(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->fmOpen_:I

    return p1
.end method

.method static synthetic access$18302(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->connBtEar_:I

    return p1
.end method

.method static synthetic access$18402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerOn_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->factoryReset_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->deviceIdQuery_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->keyLock_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerLevelQuery_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->fmOpen_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->connBtEar_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->access$17300()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method


# virtual methods
.method public getConnBtEar()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->connBtEar_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    return-object v0
.end method

.method public getDeviceIdQuery()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->deviceIdQuery_:I

    return v0
.end method

.method public getFactoryReset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->factoryReset_:I

    return v0
.end method

.method public getFmOpen()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->fmOpen_:I

    return v0
.end method

.method public getKeyLock()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->keyLock_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPowerLevelQuery()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerLevelQuery_:I

    return v0
.end method

.method public getPowerOn()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->powerOn_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasConnBtEar()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasDeviceIdQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasFactoryReset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasFmOpen()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasKeyLock()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasPowerLevelQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

.method public hasPowerOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method
