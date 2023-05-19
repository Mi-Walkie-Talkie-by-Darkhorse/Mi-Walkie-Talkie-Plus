.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final BATTERY_FIELD_NUMBER:I = 0x7

.field public static final COLOR_FIELD_NUMBER:I = 0x4

.field public static final CONFIGINFO_FIELD_NUMBER:I = 0x9

.field public static final DEVICEID_FIELD_NUMBER:I = 0x3

.field public static final DEVICEMODE_FIELD_NUMBER:I = 0x8

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x5

.field public static final MAC_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TALKINFO_FIELD_NUMBER:I = 0xa

.field public static final VERHW_FIELD_NUMBER:I = 0x1

.field public static final VERSOFT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;


# instance fields
.field private battery_:I

.field private bitField0_:I

.field private color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

.field private configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

.field private deviceId_:I

.field private deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

.field private deviceType_:I

.field private mac_:Lcom/google/protobuf/ByteString;

.field private talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private verHw_:I

.field private verSoft_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verHw_:I

    return p1
.end method

.method static synthetic access$6202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verSoft_:I

    return p1
.end method

.method static synthetic access$6302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceId_:I

    return p1
.end method

.method static synthetic access$6402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$ColorType;)Lcom/ifengyu/intercom/protos/BleProtos$ColorType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceType_:I

    return p1
.end method

.method static synthetic access$6602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->mac_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->battery_:I

    return p1
.end method

.method static synthetic access$6802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verHw_:I

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verSoft_:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceId_:I

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->WHITE:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceType_:I

    .line 6
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->mac_:Lcom/google/protobuf/ByteString;

    .line 7
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->battery_:I

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;->MODEL_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->access$5700()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object p0
.end method


# virtual methods
.method public getBattery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->battery_:I

    return v0
.end method

.method public getColor()Lcom/ifengyu/intercom/protos/BleProtos$ColorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    return-object v0
.end method

.method public getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public getConfigInfoOrBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceId_:I

    return v0
.end method

.method public getDeviceMode()Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->deviceType_:I

    return v0
.end method

.method public getMac()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->mac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getTalkInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public getTalkInfoOrBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->verSoft_:I

    return v0
.end method

.method public hasBattery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasColor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasConfigInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasDeviceMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasDeviceType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasMac()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method public hasTalkInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerHw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerSoft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method
