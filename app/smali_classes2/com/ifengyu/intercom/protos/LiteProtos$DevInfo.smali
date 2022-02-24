.class public final Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    }
.end annotation


# static fields
.field public static final BAND_FIELD_NUMBER:I = 0x3

.field public static final BOOTVOICE_FIELD_NUMBER:I = 0x6

.field public static final DEVICECOLOR_FIELD_NUMBER:I = 0xc

.field public static final DEVICEID_FIELD_NUMBER:I = 0xb

.field public static final KEYVOICE_FIELD_NUMBER:I = 0x7

.field public static final LANGTYPE_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLITE_FIELD_NUMBER:I = 0x4

.field public static final SQ_FIELD_NUMBER:I = 0x1

.field public static final VERHW_FIELD_NUMBER:I = 0x9

.field public static final VERSOFT_FIELD_NUMBER:I = 0xa

.field public static final VERVOICE_FIELD_NUMBER:I = 0xd

.field public static final VOX_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;


# instance fields
.field private band_:I

.field private bitField0_:I

.field private bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private deviceColor_:I

.field private deviceId_:I

.field private keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

.field private name_:Lcom/google/protobuf/ByteString;

.field private polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private sq_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private verHw_:I

.field private verSoft_:I

.field private verVoice_:I

.field private vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->sq_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->band_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->name_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verHw_:I

    return p1
.end method

.method static synthetic access$6302(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verSoft_:I

    return p1
.end method

.method static synthetic access$6402(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceId_:I

    return p1
.end method

.method static synthetic access$6502(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceColor_:I

    return p1
.end method

.method static synthetic access$6602(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verVoice_:I

    return p1
.end method

.method static synthetic access$6702(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->sq_:I

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->band_:I

    .line 4
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 6
    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 8
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->name_:Lcom/google/protobuf/ByteString;

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verHw_:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verSoft_:I

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceId_:I

    .line 12
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceColor_:I

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verVoice_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->access$5000()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object p0
.end method


# virtual methods
.method public getBand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->band_:I

    return v0
.end method

.method public getBootVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public getDeviceColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceColor_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->deviceId_:I

    return v0
.end method

.method public getKeyVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    return-object v0
.end method

.method public getName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->name_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPolite()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public getSq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->sq_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verSoft_:I

    return v0
.end method

.method public getVerVoice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->verVoice_:I

    return v0
.end method

.method public getVox()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public hasBand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasBootVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasDeviceColor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

    const/16 v1, 0x800

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasKeyVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasLangType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasPolite()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasSq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerHw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasVerSoft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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

.method public hasVerVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVox()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method
