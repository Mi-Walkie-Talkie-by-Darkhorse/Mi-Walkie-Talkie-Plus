.class public Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;
.super Ljava/lang/Object;
.source "UploadLogParameter.java"


# instance fields
.field private feedbackMessage:Ljava/lang/String;

.field private limit:I

.field private maxLength:J

.field private stillUploadWithoutWifi:Z

.field private subPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->stillUploadWithoutWifi:Z

    const-string v0, "byPush"

    iput-object v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->feedbackMessage:Ljava/lang/String;

    return-void
.end method

.method public static parseFrom(Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;)Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;
    .locals 4

    new-instance v0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->hasStillUploadWithoutWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->getStillUploadWithoutWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setStillUploadWithoutWifi(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->hasSbuPath()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->getSbuPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setSubPath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->hasMaxLength()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->getMaxLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setMaxLength(J)V

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->hasMaxSubDirCount()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->getMaxSubDirCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setLimit(I)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getFeedbackMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->feedbackMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->limit:I

    return v0
.end method

.method public getMaxLength()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->maxLength:J

    return-wide v0
.end method

.method public getSubPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->subPath:Ljava/lang/String;

    return-object v0
.end method

.method public isStillUploadWithoutWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->stillUploadWithoutWifi:Z

    return v0
.end method

.method public setFeedbackMessage(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->feedbackMessage:Ljava/lang/String;

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->limit:I

    return-void
.end method

.method public setMaxLength(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->maxLength:J

    return-void
.end method

.method public setStillUploadWithoutWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->stillUploadWithoutWifi:Z

    return-void
.end method

.method public setSubPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->subPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadLogParameter [stillUploadWithoutWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->stillUploadWithoutWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->subPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->maxLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feedbackMessageString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->feedbackMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
