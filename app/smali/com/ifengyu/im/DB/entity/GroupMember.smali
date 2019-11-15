.class public Lcom/ifengyu/im/DB/entity/GroupMember;
.super Ljava/lang/Object;
.source "GroupMember.java"


# instance fields
.field public groupId:I

.field public groupNick:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public joinTime:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupMember;

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->groupId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->userId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->userId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->joinTime:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->joinTime:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupId:I

    return v0
.end method

.method public getGroupNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getJoinTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->joinTime:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->userId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->joinTime:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupId:I

    return-void
.end method

.method public setGroupNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->groupNick:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->id:Ljava/lang/Long;

    return-void
.end method

.method public setJoinTime(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->joinTime:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/GroupMember;->userId:I

    return-void
.end method
