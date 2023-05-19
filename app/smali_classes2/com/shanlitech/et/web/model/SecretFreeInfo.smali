.class public Lcom/shanlitech/et/web/model/SecretFreeInfo;
.super Ljava/lang/Object;
.source "SecretFreeInfo.java"


# instance fields
.field private authType:Ljava/lang/String;

.field private passid:Ljava/lang/String;

.field private resultCode:I

.field private resultString:Ljava/lang/String;

.field private simId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->passid:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    return v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->simId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthTypeError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    const v1, 0x30d48

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    const v1, 0x18e70

    if-eq v0, v1, :cond_1

    const v1, 0x19258

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needRetry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    const v1, 0x18f4d

    if-eq v0, v1, :cond_1

    const v1, 0x18ed5

    if-eq v0, v1, :cond_1

    const v1, 0x18ed6

    if-eq v0, v1, :cond_1

    const v1, 0x18f4c

    if-eq v0, v1, :cond_1

    const v1, 0x18f4e

    if-eq v0, v1, :cond_1

    const v1, 0x18f4f

    if-eq v0, v1, :cond_1

    const v1, 0x18f3c

    if-eq v0, v1, :cond_1

    const v1, 0x18f9e

    if-eq v0, v1, :cond_1

    const v1, 0x192cc

    if-eq v0, v1, :cond_1

    const v1, 0x192c9

    if-eq v0, v1, :cond_1

    const v1, 0x18f3e

    if-eq v0, v1, :cond_1

    const v1, 0x18f42

    if-eq v0, v1, :cond_1

    const v1, 0x18faa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->authType:Ljava/lang/String;

    return-void
.end method

.method public setPassid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->passid:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    return-void
.end method

.method public setResultString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultString:Ljava/lang/String;

    return-void
.end method

.method public setSimId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->simId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretFreeInfo{resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", simId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->simId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/SecretFreeInfo;->passid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
