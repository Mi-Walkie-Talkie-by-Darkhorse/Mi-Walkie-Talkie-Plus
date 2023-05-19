.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    }
.end annotation


# static fields
.field public static final ADVNAME_FIELD_NUMBER:I = 0xb

.field public static final AUTOLOCK_FIELD_NUMBER:I = 0x7

.field public static final BATCHCONFIG_FIELD_NUMBER:I = 0x8

.field public static final CALLVOICE_FIELD_NUMBER:I = 0x5

.field public static final KEYVOICE_FIELD_NUMBER:I = 0x3

.field public static final LANGTYPE_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x9

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final POWERSAVE_FIELD_NUMBER:I = 0xa

.field public static final POWERVOICE_FIELD_NUMBER:I = 0x2

.field public static final SHARELOC_FIELD_NUMBER:I = 0x4

.field public static final VOICETYPE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;


# instance fields
.field private advName_:Lcom/google/protobuf/ByteString;

.field private autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private bitField0_:I

.field private callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

.field private name_:Lcom/google/protobuf/ByteString;

.field private powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;)Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;)Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->name_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->advName_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;->CHINESE:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 6
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;->VOICE_CLOSE:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 9
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->name_:Lcom/google/protobuf/ByteString;

    .line 10
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->advName_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->access$2300()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object p0
.end method


# virtual methods
.method public getAdvName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->advName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAutoLock()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getBatchConfig()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getCallVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public getKeyVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    return-object v0
.end method

.method public getName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->name_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPowerSave()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getPowerVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getShareLoc()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVoiceType()Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    return-object v0
.end method

.method public hasAdvName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutoLock()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasBatchConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasCallVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasKeyVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasLangType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasPowerSave()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasPowerVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasShareLoc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method public hasVoiceType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method
