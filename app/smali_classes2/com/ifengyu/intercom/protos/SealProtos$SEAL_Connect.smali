.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ConnectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SEAL_Connect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;
    }
.end annotation


# static fields
.field public static final APPMODE_FIELD_NUMBER:I = 0x5

.field public static final COLOR_FIELD_NUMBER:I = 0x7

.field public static final CONNCODE_FIELD_NUMBER:I = 0x2

.field public static final DEVICEID_FIELD_NUMBER:I = 0x3

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x4

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;


# instance fields
.field private appMode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

.field private bitField0_:I

.field private color_:I

.field private connCode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field private deviceId_:I

.field private deviceType_:I

.field private language_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->appMode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->language_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->color_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->connCode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceId_:I

    return p1
.end method

.method static synthetic access$902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceType_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->connCode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceId_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceType_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;->SEAL_OWN_APP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->appMode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;->SEAL_CHINESE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->language_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->color_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->access$200()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method


# virtual methods
.method public getAppMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->appMode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->color_:I

    return v0
.end method

.method public getConnCode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->connCode_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceId_:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->deviceType_:I

    return v0
.end method

.method public getLanguage()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->language_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->version_:I

    return v0
.end method

.method public hasAppMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasColor()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasConnCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasDeviceType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    return-object v0
.end method
