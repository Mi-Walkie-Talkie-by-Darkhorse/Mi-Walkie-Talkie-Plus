.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    }
.end annotation


# static fields
.field public static final CH1_FIELD_NUMBER:I = 0x4

.field public static final CH2_FIELD_NUMBER:I = 0x5

.field public static final OPTION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final STATEMODE_FIELD_NUMBER:I = 0x6

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;


# instance fields
.field private bitField0_:I

.field private ch1_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private ch2_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private option_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field private result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field private stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7300()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->version_:I

    return p1
.end method

.method static synthetic access$7602(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->option_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch1_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch2_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->option_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch1_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch2_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->access$7100()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method


# virtual methods
.method public getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch1_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public getCh1OrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch1_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch2_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public getCh2OrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->ch2_:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->option_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method

.method public getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->version_:I

    return v0
.end method

.method public hasCh1()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

.method public hasCh2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

.method public hasOption()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

.method public hasStateMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method
