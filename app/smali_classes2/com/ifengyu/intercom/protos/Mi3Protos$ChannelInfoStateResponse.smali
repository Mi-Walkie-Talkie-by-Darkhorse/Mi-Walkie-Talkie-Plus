.class public final Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Mi3Protos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/Mi3Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelInfoStateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    }
.end annotation


# static fields
.field public static final CH1_FIELD_NUMBER:I = 0x3

.field public static final CH2_FIELD_NUMBER:I = 0x4

.field public static final CHINDEX_FIELD_NUMBER:I = 0x5

.field public static final CHOPTION_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;


# instance fields
.field private bitField0_:I

.field private ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

.field private ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

.field private chIndex_:I

.field private chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

.field private result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->version_:I

    return p1
.end method

.method static synthetic access$11802(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;)Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chIndex_:I

    return p1
.end method

.method static synthetic access$12202(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;)Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    return-object p1
.end method

.method static synthetic access$12302(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->version_:I

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chIndex_:I

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->access$11300()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object p0
.end method


# virtual methods
.method public getCh1()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh1OrBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh2()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh2OrBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getChIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chIndex_:I

    return v0
.end method

.method public getChOption()Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->version_:I

    return v0
.end method

.method public hasCh1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

.method public hasCh2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

.method public hasChIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

.method public hasChOption()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->bitField0_:I

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

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->toBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->toBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->newBuilder(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method
