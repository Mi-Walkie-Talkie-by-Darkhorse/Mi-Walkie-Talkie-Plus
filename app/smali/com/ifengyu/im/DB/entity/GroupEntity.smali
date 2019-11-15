.class public Lcom/ifengyu/im/DB/entity/GroupEntity;
.super Lcom/ifengyu/im/DB/entity/PeerEntity;
.source "GroupEntity.java"


# instance fields
.field public avatar:Ljava/lang/String;

.field public created:J

.field public creatorId:I

.field public groupType:I

.field public id:Ljava/lang/Long;

.field public mainName:Ljava/lang/String;

.field public peerId:I

.field public pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

.field public searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

.field public status:I

.field public updated:J

.field public userCnt:I

.field public userList:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/DB/entity/PeerEntity;-><init>()V

    new-instance v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v0, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIJJ)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/DB/entity/PeerEntity;-><init>()V

    new-instance v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v0, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->id:Ljava/lang/Long;

    iput p2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    iput-object p3, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    iput p5, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    iput p6, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    iput p7, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    iput-object p8, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    iput p9, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    iput p10, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->status:I

    iput-wide p11, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->created:J

    iput-wide p13, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->updated:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->created:J

    return-wide v0
.end method

.method public getCreatorId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    return v0
.end method

.method public getGroupType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    return v0
.end method

.method public getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    return-object v0
.end method

.method public getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->updated:J

    return-wide v0
.end method

.method public getUserCnt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    return v0
.end method

.method public getUserList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    return v0
.end method

.method public getlistGroupMemberIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-gtz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->created:J

    return-void
.end method

.method public setCreatorId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    return-void
.end method

.method public setPinyinElement(Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    return-void
.end method

.method public setSearchElement(Lcom/ifengyu/im/imservice/entity/SearchElement;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->status:I

    return-void
.end method

.method public setUpdated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->updated:J

    return-void
.end method

.method public setUserCnt(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    return-void
.end method

.method public setUserList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    return-void
.end method

.method public setlistGroupMemberIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserList(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserCnt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->created:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->updated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->groupType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userList=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->userList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyinElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
