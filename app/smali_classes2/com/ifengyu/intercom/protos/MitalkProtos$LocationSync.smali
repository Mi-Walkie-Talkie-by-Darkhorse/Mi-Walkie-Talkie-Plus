.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationSync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    }
.end annotation


# static fields
.field public static final ALTITUDE_FIELD_NUMBER:I = 0x7

.field public static final CTL_FIELD_NUMBER:I = 0x2

.field public static final FREQ_FIELD_NUMBER:I = 0x9

.field public static final LATITUDE_FIELD_NUMBER:I = 0x6

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x8

.field public static final USERID_FIELD_NUMBER:I = 0x3

.field public static final USERNAME_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;


# instance fields
.field private altitude_:I

.field private bitField0_:I

.field private ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

.field private freq_:I

.field private latitude_:I

.field private longitude_:I

.field private time_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10600()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->version_:I

    return p1
.end method

.method static synthetic access$10902(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;)Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userId_:I

    return p1
.end method

.method static synthetic access$11102(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$11202(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->longitude_:I

    return p1
.end method

.method static synthetic access$11302(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->latitude_:I

    return p1
.end method

.method static synthetic access$11402(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->altitude_:I

    return p1
.end method

.method static synthetic access$11502(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->time_:I

    return p1
.end method

.method static synthetic access$11602(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->freq_:I

    return p1
.end method

.method static synthetic access$11702(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;->DISABLE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userId_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userName_:Lcom/google/protobuf/ByteString;

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->longitude_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->latitude_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->altitude_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->time_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->freq_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->access$10400()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->altitude_:I

    return v0
.end method

.method public getCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->freq_:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->longitude_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->time_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->version_:I

    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasCtl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasLatitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method
