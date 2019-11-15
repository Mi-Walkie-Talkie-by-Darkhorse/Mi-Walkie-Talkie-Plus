.class public Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Device$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkDetailInfo"
.end annotation


# instance fields
.field public apnName:Ljava/lang/String;

.field public apnType:I

.field public cellLevel:I

.field public wifiInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, p1, :cond_1

    check-cast p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnType:I

    iget v3, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnType:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->cellLevel:I

    iget v3, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->cellLevel:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    iget-object v3, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_5
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->cellLevel:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->cellLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apnName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
