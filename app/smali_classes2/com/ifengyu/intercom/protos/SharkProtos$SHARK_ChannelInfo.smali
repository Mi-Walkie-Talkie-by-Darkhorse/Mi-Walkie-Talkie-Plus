.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHARK_ChannelInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;
    }
.end annotation


# static fields
.field public static final CH_BAND_FIELD_NUMBER:I = 0xc

.field public static final CH_ELIM_FIELD_NUMBER:I = 0xb

.field public static final CH_NAME_FIELD_NUMBER:I = 0x6

.field public static final CH_NO_FIELD_NUMBER:I = 0x1

.field public static final CH_POLITE_FIELD_NUMBER:I = 0xd

.field public static final CH_RXCSS_FIELD_NUMBER:I = 0x9

.field public static final CH_RXFREQ_FIELD_NUMBER:I = 0x4

.field public static final CH_SQ_FIELD_NUMBER:I = 0x7

.field public static final CH_TXCSS_FIELD_NUMBER:I = 0xa

.field public static final CH_TXFREQ_FIELD_NUMBER:I = 0x5

.field public static final CH_TXPOWER_FIELD_NUMBER:I = 0x3

.field public static final CH_TYPE_FIELD_NUMBER:I = 0x2

.field public static final CH_VOX_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;


# instance fields
.field private bitField0_:I

.field private chBand_:I

.field private chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private chName_:Lcom/google/protobuf/ByteString;

.field private chNo_:I

.field private chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private chRxCss_:I

.field private chRxFreq_:I

.field private chSq_:I

.field private chTxCss_:I

.field private chTxFreq_:I

.field private chTxPower_:I

.field private chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

.field private chVox_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chNo_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxPower_:I

    return p1
.end method

.method static synthetic access$2302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxFreq_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxFreq_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chSq_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chVox_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxCss_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxCss_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chBand_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chNo_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxPower_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxFreq_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxFreq_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chName_:Lcom/google/protobuf/ByteString;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chSq_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chVox_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxCss_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxCss_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chBand_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->access$1600()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method


# virtual methods
.method public getChBand()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chBand_:I

    return v0
.end method

.method public getChElim()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getChName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChNo()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chNo_:I

    return v0
.end method

.method public getChPolite()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getChRxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxCss_:I

    return v0
.end method

.method public getChRxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chRxFreq_:I

    return v0
.end method

.method public getChSq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chSq_:I

    return v0
.end method

.method public getChTxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxCss_:I

    return v0
.end method

.method public getChTxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxFreq_:I

    return v0
.end method

.method public getChTxPower()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chTxPower_:I

    return v0
.end method

.method public getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    return-object v0
.end method

.method public getChVox()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->chVox_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasChBand()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChElim()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChNo()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChPolite()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChRxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChRxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChSq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChTxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChTxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChTxPower()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method public hasChVox()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method
