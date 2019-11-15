.class public final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacketOrBuilder;"
    }
.end annotation


# instance fields
.field private appId_:I

.field private bitField0_:I

.field private busiBuff_:Lcom/google/protobuf/ByteString;

.field private busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

.field private deviceInfo_:Lcom/google/protobuf/ByteString;

.field private extra_:Lcom/google/protobuf/ByteString;

.field private flag_:I

.field private gid_:Ljava/lang/Object;

.field private ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

.field private miUid_:Ljava/lang/Object;

.field private miUin_:J

.field private retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

.field private seq_:I

.field private serviceCmd_:Ljava/lang/Object;

.field private sessionId_:I

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

.field private ua_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;-><init>()V

    return-object v0
.end method

.method private getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getIpInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getIpInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getRetryInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getRetryInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getToken()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getIpInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getRetryInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 7

    const/4 v0, 0x1

    const v6, 0x8000

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_13

    :goto_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->seq_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$702(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->appId_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$802(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUin_:J

    invoke-static {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$902(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1002(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1102(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1202(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_12

    or-int/lit8 v0, v0, 0x40

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    :goto_2
    and-int/lit16 v0, v3, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_5

    or-int/lit16 v1, v1, 0x80

    :cond_5
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1402(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :goto_3
    and-int/lit16 v0, v3, 0x100

    const/16 v4, 0x100

    if-ne v0, v4, :cond_6

    or-int/lit16 v1, v1, 0x100

    :cond_6
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1502(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v0, v3, 0x200

    const/16 v4, 0x200

    if-ne v0, v4, :cond_7

    or-int/lit16 v1, v1, 0x200

    :cond_7
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1602(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v0, v3, 0x400

    const/16 v4, 0x400

    if-ne v0, v4, :cond_8

    or-int/lit16 v1, v1, 0x400

    :cond_8
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->flag_:I

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1702(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I

    and-int/lit16 v0, v3, 0x800

    const/16 v4, 0x800

    if-ne v0, v4, :cond_9

    or-int/lit16 v1, v1, 0x800

    :cond_9
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->sessionId_:I

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1802(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I

    and-int/lit16 v0, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v0, v4, :cond_a

    or-int/lit16 v1, v1, 0x1000

    :cond_a
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1902(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    :goto_4
    and-int/lit16 v0, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v0, v4, :cond_b

    or-int/lit16 v1, v1, 0x2000

    :cond_b
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2002(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_5
    and-int/lit16 v0, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v0, v4, :cond_c

    or-int/lit16 v1, v1, 0x4000

    :cond_c
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2102(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v0, v3, v6

    if-ne v0, v6, :cond_d

    or-int/2addr v1, v6

    :cond_d
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2202(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onBuilt()V

    return-object v2

    :cond_e
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1402(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1902(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2002(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_5

    :cond_12
    move v1, v0

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->seq_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->appId_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUin_:J

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->flag_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->sessionId_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    :goto_2
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_3
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3
.end method

.method public clearAppId()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->appId_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBusiBuff()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getBusiBuff()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDeviceInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDeviceInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExtra()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getExtra()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFlag()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->flag_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGid()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getGid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIpInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearMiUid()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getMiUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMiUin()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUin_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRetryInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSeq()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServiceCmd()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getServiceCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->sessionId_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToken()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUa()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->appId_:I

    return v0
.end method

.method public getBusiBuff()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0
.end method

.method public getBusiControlBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    return-object v0
.end method

.method public getBusiControlOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExtra()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->flag_:I

    return v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getIpInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    goto :goto_0
.end method

.method public getIpInfoBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getIpInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    return-object v0
.end method

.method public getIpInfoOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    goto :goto_0
.end method

.method public getMiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMiUin()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUin_:J

    return-wide v0
.end method

.method public getRetryInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    goto :goto_0
.end method

.method public getRetryInfoBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getRetryInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    return-object v0
.end method

.method public getRetryInfoOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    goto :goto_0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->seq_:I

    return v0
.end method

.method public getServiceCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->sessionId_:I

    return v0
.end method

.method public getToken()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    goto :goto_0
.end method

.method public getTokenBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    goto :goto_0
.end method

.method public getUa()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAppId()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasBusiBuff()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasBusiControl()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasDeviceInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasExtra()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasFlag()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasGid()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIpInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasMiUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasMiUin()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasRetryInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasSeq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServiceCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasToken()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method public hasUa()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasSeq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setSeq(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setAppId(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasMiUin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getMiUin()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setMiUin(J)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasUa()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1000(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasServiceCmd()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$1100(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDeviceInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setDeviceInfo(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getToken()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeToken(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasIpInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getIpInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeIpInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasBusiBuff()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getBusiBuff()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setBusiBuff(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getExtra()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setExtra(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setFlag(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setSessionId(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasRetryInfo()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getRetryInfo()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeRetryInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasBusiControl()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasMiUid()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2100(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->hasGid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->access$2200(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :cond_10
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeIpInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeRetryInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeToken(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAppId(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->appId_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setBusiBuff(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDeviceInfo(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setExtra(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setFlag(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->flag_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setGid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setGidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setIpInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setIpInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ipInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMiUid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMiUidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMiUin(J)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->miUin_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setRetryInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRetryInfo(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfo_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->retryInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSeq(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setServiceCmd(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setServiceCmdBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->sessionId_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setToken(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setToken(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->token_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUa(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setUaBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->onChanged()V

    return-object p0
.end method
