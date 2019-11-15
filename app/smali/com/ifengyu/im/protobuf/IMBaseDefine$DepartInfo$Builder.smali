.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deptId_:I

.field private deptName_:Ljava/lang/Object;

.field private deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

.field private parentDeptId_:I

.field private priority_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->DEPT_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$16200()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16402(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->priority_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16502(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16602(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->parentDeptId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16702(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16802(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16902(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;I)I

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->priority_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->parentDeptId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->DEPT_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeptId()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptId_:I

    return-object p0
.end method

.method public clearDeptName()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDeptStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->DEPT_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    return-object p0
.end method

.method public clearParentDeptId()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->parentDeptId_:I

    return-object p0
.end method

.method public clearPriority()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->priority_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeptId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptId_:I

    return v0
.end method

.method public getDeptName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeptNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDeptStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    return-object v0
.end method

.method public getParentDeptId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->parentDeptId_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->priority_:I

    return v0
.end method

.method public hasDeptId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeptName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

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

.method public hasDeptStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

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

.method public hasParentDeptId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

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

.method public hasPriority()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->hasDeptId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->hasDeptName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->hasParentDeptId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->hasDeptStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->hasDeptId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->setDeptId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->setPriority(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->hasDeptName()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$16600(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->hasParentDeptId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getParentDeptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->setParentDeptId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->hasDeptStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->getDeptStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->setDeptStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;->access$17000(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setDeptId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptId_:I

    return-object p0
.end method

.method public setDeptName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDeptNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDeptStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->deptStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    return-object p0
.end method

.method public setParentDeptId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->parentDeptId_:I

    return-object p0
.end method

.method public setPriority(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo$Builder;->priority_:I

    return-object p0
.end method
