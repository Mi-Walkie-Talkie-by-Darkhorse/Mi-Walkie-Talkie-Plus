.class public final Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    }
.end annotation


# static fields
.field public static final CONNECTCODE_FIELD_NUMBER:I = 0x2

.field public static final DEVICEID_FIELD_NUMBER:I = 0x3

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x4

.field public static final MAC_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLICKEY_FIELD_NUMBER:I = 0x6

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;


# instance fields
.field private bitField0_:I

.field private connectCode_:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field private deviceId_:I

.field private deviceType_:I

.field private mac_:Lcom/google/protobuf/ByteString;

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->initFields()V

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

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->version_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;)Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->connectCode_:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceId_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceType_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->mac_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->version_:I

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->connectCode_:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceId_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceType_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->mac_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->publicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;->access$1300()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object p0
.end method


# virtual methods
.method public getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->connectCode_:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceId_:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->deviceType_:I

    return v0
.end method

.method public getMac()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->mac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->version_:I

    return v0
.end method

.method public hasConnectCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

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

.method public hasDeviceType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

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

.method public hasMac()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

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

.method public hasPublicKey()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse$Builder;

    move-result-object v0

    return-object v0
.end method
