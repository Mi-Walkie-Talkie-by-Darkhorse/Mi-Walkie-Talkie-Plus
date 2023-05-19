.class public Lcom/shanlitech/et/web/tob/api/model/Label;
.super Lcom/shanlitech/et/web/b/c/f;
.source "Label.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private createTime:Ljava/lang/String;

.field private creatorId:J

.field private id:I

.field private labelCompanyid:I

.field private labelLocation:Lcom/shanlitech/et/web/tob/api/model/LabelLocation;

.field private labelName:Ljava/lang/String;

.field private labelRemark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->creatorId:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->id:I

    return v0
.end method

.method public getLabelCompanyid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelCompanyid:I

    return v0
.end method

.method public getLabelLocation()Lcom/shanlitech/et/web/tob/api/model/LabelLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelLocation:Lcom/shanlitech/et/web/tob/api/model/LabelLocation;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelRemark:Ljava/lang/String;

    return-object v0
.end method

.method public setLabelCompanyid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelCompanyid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Label{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->creatorId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", labelCompanyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelCompanyid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", labelRemark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelRemark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", labelLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->labelLocation:Lcom/shanlitech/et/web/tob/api/model/LabelLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", createTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/Label;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
