.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHARK_DeviceParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;
    }
.end annotation


# static fields
.field public static final ACTIVATE_FIELD_NUMBER:I = 0x9

.field public static final BLENAME_FIELD_NUMBER:I = 0x7

.field public static final BTAUDIO_FIELD_NUMBER:I = 0xb

.field public static final CHARGE_FIELD_NUMBER:I = 0x8

.field public static final CH_FIELD_NUMBER:I = 0xc

.field public static final DEVICENAME_FIELD_NUMBER:I = 0x6

.field public static final FULLINQUIRY_FIELD_NUMBER:I = 0x3

.field public static final ISALLPUBLIC_FIELD_NUMBER:I = 0xe

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PWSAVEMODE_FIELD_NUMBER:I = 0xf

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final SHARELOC_FIELD_NUMBER:I = 0xa

.field public static final TIMEDISPLAY_FIELD_NUMBER:I = 0x1f

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1e

.field public static final VERHW_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field public static final VERSOFT_FIELD_NUMBER:I = 0x5

.field public static final VOICEALERT_FIELD_NUMBER:I = 0xd

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;


# instance fields
.field private activate_:I

.field private bitField0_:I

.field private bleName_:Lcom/google/protobuf/ByteString;

.field private btAudio_:I

.field private ch_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

.field private charge_:I

.field private deviceName_:Lcom/google/protobuf/ByteString;

.field private fullInquiry_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private isAllPublic_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private pwsaveMode_:I

.field private result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

.field private shareLoc_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private timeDisplay_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private timeStamp_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private verHw_:I

.field private verSoft_:I

.field private version_:I

.field private voiceAlert_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->version_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->fullInquiry_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verHw_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verSoft_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->deviceName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bleName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->charge_:I

    return p1
.end method

.method static synthetic access$4802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->activate_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->shareLoc_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->btAudio_:I

    return p1
.end method

.method static synthetic access$5102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->ch_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->voiceAlert_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->isAllPublic_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->pwsaveMode_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeStamp_:I

    return p1
.end method

.method static synthetic access$5602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeDisplay_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->fullInquiry_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verHw_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verSoft_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->deviceName_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bleName_:Lcom/google/protobuf/ByteString;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->charge_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->activate_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->shareLoc_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->btAudio_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->ch_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->voiceAlert_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->isAllPublic_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->pwsaveMode_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeStamp_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeDisplay_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->access$3600()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method


# virtual methods
.method public getActivate()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->activate_:I

    return v0
.end method

.method public getBleName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bleName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBtAudio()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->btAudio_:I

    return v0
.end method

.method public getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->ch_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public getChOrBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->ch_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    return-object v0
.end method

.method public getCharge()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->charge_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->defaultInstance:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    return-object v0
.end method

.method public getDeviceName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->deviceName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFullInquiry()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->fullInquiry_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getIsAllPublic()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->isAllPublic_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPwsaveMode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->pwsaveMode_:I

    return v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    return-object v0
.end method

.method public getShareLoc()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->shareLoc_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getTimeDisplay()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeDisplay_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getTimeStamp()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->timeStamp_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->verSoft_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->version_:I

    return v0
.end method

.method public getVoiceAlert()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->voiceAlert_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public hasActivate()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasBleName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasBtAudio()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasCh()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasCharge()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasDeviceName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasFullInquiry()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasIsAllPublic()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPwsaveMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasShareLoc()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasTimeDisplay()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeStamp()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVerHw()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasVerSoft()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceAlert()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method
