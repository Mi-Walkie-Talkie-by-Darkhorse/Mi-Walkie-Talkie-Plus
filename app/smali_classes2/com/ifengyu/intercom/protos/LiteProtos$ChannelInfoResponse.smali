.class public final Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final CHANNELINFO_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;


# instance fields
.field private bitField0_:I

.field private channelInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

.field private result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11402(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->version_:I

    return p1
.end method

.method static synthetic access$11502(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;)Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->channelInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->channelInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;->access$11000()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object p0
.end method


# virtual methods
.method public getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->channelInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    return-object v0
.end method

.method public getChannelInfoOrBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->channelInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->version_:I

    return v0
.end method

.method public hasChannelInfo()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method
