.class public final Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$LocationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    }
.end annotation


# static fields
.field public static final ALTITUDE_FIELD_NUMBER:I = 0x7

.field public static final CTLSYNC_FIELD_NUMBER:I = 0x1

.field public static final LATITUDE_FIELD_NUMBER:I = 0x6

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RXCSS_FIELD_NUMBER:I = 0x9

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8

.field public static final USERFREQ_FIELD_NUMBER:I = 0x4

.field public static final USERID_FIELD_NUMBER:I = 0x2

.field public static final USERNAME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;


# instance fields
.field private altitude_:I

.field private bitField0_:I

.field private ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private latitude_:I

.field private longitude_:I

.field private rxCss_:I

.field private timestamp_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userFreq_:I

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userId_:I

    return p1
.end method

.method static synthetic access$11902(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userFreq_:I

    return p1
.end method

.method static synthetic access$12102(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->longitude_:I

    return p1
.end method

.method static synthetic access$12202(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->latitude_:I

    return p1
.end method

.method static synthetic access$12302(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->altitude_:I

    return p1
.end method

.method static synthetic access$12402(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->timestamp_:I

    return p1
.end method

.method static synthetic access$12502(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->rxCss_:I

    return p1
.end method

.method static synthetic access$12602(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userId_:I

    .line 3
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userName_:Lcom/google/protobuf/ByteString;

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userFreq_:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->longitude_:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->latitude_:I

    .line 7
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->altitude_:I

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->timestamp_:I

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->rxCss_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->access$11300()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object p0
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->altitude_:I

    return v0
.end method

.method public getCtlsync()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->longitude_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRxCss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->rxCss_:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->timestamp_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userFreq_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAltitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCtlsync()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLatitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLongitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRxCss()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserFreq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method