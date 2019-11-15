.class public Lcom/ifengyu/im/imservice/entity/ApplyNotify;
.super Ljava/lang/Object;
.source "ApplyNotify.java"


# instance fields
.field public creatorId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creator_id"
    .end annotation
.end field

.field public creatorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creator_name"
    .end annotation
.end field

.field public groupId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_id"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_name"
    .end annotation
.end field

.field public reqUserId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_user_id"
    .end annotation
.end field

.field public reqUserName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_user_name"
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatorId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorId:I

    return v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getReqUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserId:I

    return v0
.end method

.method public getReqUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->resultCode:I

    return v0
.end method

.method public setCreatorId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorId:I

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupId:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setReqUserId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserId:I

    return-void
.end method

.method public setReqUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserName:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyNotify{creatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creatorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->reqUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
