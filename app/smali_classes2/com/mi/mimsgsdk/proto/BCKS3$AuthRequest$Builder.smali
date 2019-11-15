.class public final Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BCKS3.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field private bitField0_:I

.field private canonicalizedHeaders_:Ljava/lang/Object;

.field private contentMd5_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private date_:Ljava/lang/Object;

.field private httpVerb_:Ljava/lang/Object;

.field private rid_:J

.field private suffix_:Ljava/lang/Object;

.field private vuid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->rid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$702(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$802(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$902(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1002(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1102(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1202(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1302(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1402(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->vuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1502(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;J)J

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1602(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onBuilt()V

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->rid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->vuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAuthType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCanonicalizedHeaders()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getCanonicalizedHeaders()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContentMd5()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContentType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDate()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHttpVerb()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRid()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSuffix()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVuid()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->vuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    return-object v0
.end method

.method public getCanonicalizedHeaders()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCanonicalizedHeadersBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getContentMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpVerbBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getRid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->rid_:J

    return-wide v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSuffixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->vuid_:J

    return-wide v0
.end method

.method public hasAuthType()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasCanonicalizedHeaders()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasContentMd5()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasHttpVerb()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuffix()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method public hasVuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    const-class v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasRid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasHttpVerb()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasContentMd5()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasCanonicalizedHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->hasSuffix()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasHttpVerb()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$800(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasContentMd5()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$900(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1000(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1100(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasCanonicalizedHeaders()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1200(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasSuffix()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->access$1300(Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasAuthType()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getAuthType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setAuthType(Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->hasVuid()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getVuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setVuid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAuthType(Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->authType_:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setCanonicalizedHeaders(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setCanonicalizedHeadersBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->canonicalizedHeaders_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentMd5(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentMd5Bytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->contentType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setDateBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setHttpVerb(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setHttpVerbBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->httpVerb_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setSuffixBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->suffix_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setVuid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->vuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->onChanged()V

    return-object p0
.end method
