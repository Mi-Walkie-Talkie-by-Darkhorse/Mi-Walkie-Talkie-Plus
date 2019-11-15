.class public final Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BCKS3.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private authorization_:Ljava/lang/Object;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private errorCode_:I

.field private errorMsg_:Ljava/lang/Object;

.field private fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

.field private reusable_:Z

.field private rid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2000()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFileInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getFileInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->rid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2402(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorCode_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2502(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-boolean v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->reusable_:Z

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2602(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Z)Z

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2702(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_6

    or-int/lit8 v0, v0, 0x10

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2802(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :goto_2
    and-int/lit8 v0, v3, 0x20

    const/16 v4, 0x20

    if-ne v0, v4, :cond_3

    or-int/lit8 v1, v1, 0x20

    :cond_3
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2902(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v3, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$3002(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$3102(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onBuilt()V

    return-object v2

    :cond_5
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2802(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->rid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorCode_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->reusable_:Z

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearAuthorization()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getAuthorization()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDate()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearErrorCode()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearErrorMsg()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearReusable()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->reusable_:Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRid()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorization()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAuthorizationBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorCode_:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    goto :goto_0
.end method

.method public getFileInfoBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getFileInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;

    return-object v0
.end method

.method public getFileInfoOrBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    goto :goto_0
.end method

.method public getReusable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->reusable_:Z

    return v0
.end method

.method public getRid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->rid_:J

    return-wide v0
.end method

.method public hasAuthorization()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

.method public hasErrorCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

.method public hasErrorMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

.method public hasFileInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

.method public hasReusable()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->hasRid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->hasFileInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFileInfo(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->newBuilder(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->setErrorCode(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasReusable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getReusable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->setReusable(Z)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasAuthorization()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2700(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasFileInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeFileInfo(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasErrorMsg()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$2900(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->access$3000(Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAuthorization(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setAuthorizationBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->authorization_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setDateBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->date_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorCode(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setFileInfo(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFileInfo(Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfo_:Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->fileInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReusable(Z)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->reusable_:Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse$Builder;->onChanged()V

    return-object p0
.end method
