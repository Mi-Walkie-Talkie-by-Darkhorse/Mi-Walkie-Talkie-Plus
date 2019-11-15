.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

.field private fCrc32_:I

.field private fSize_:I

.field private fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10000()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10200()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10502(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fSize_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCrc32_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->access$10902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onBuilt()V

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fSize_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCrc32_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFCmd()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFCrc32()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCrc32_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFSize()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fSize_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFCmd()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    return-object v0
.end method

.method public getFCrc32()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCrc32_:I

    return v0
.end method

.method public getFSize()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fSize_:I

    return v0
.end method

.method public getFType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->version_:I

    return v0
.end method

.method public hasFCmd()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

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

.method public hasFCrc32()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

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

.method public hasFSize()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

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

.method public hasFType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFCrc32(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fCrc32_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFSize(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fSize_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->onChanged()V

    return-object p0
.end method
