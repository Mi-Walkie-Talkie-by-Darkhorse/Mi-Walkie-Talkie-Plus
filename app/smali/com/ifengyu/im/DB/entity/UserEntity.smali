.class public Lcom/ifengyu/im/DB/entity/UserEntity;
.super Lcom/ifengyu/im/DB/entity/PeerEntity;
.source "UserEntity.java"


# static fields
.field public static final ITEM_TYPE_ADD:I = 0x1

.field public static final ITEM_TYPE_DELETE:I = 0x2

.field public static final ITEM_TYPE_NORMAL:I


# instance fields
.field public avatar:Ljava/lang/String;

.field public created:J

.field public departmentId:I

.field public email:Ljava/lang/String;

.field public expires_in:Ljava/lang/String;

.field public gender:I

.field public id:Ljava/lang/Long;

.field public itemType:I

.field public key:Ljava/lang/String;

.field public mainName:Ljava/lang/String;

.field public peerId:I

.field public phone:Ljava/lang/String;

.field public phoneVerified:I

.field public pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

.field public pinyinName:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

.field public status:I

.field public token:Ljava/lang/String;

.field public updated:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/DB/entity/PeerEntity;-><init>()V

    new-instance v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v0, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->itemType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    invoke-direct {p0}, Lcom/ifengyu/im/DB/entity/PeerEntity;-><init>()V

    new-instance v2, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v2}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v2, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v2}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    const/4 v2, 0x0

    iput v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->itemType:I

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->id:Ljava/lang/Long;

    iput p2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    iput-object p3, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    iput p5, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    iput-object p6, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    iput-object p7, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    iput-object p8, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    iput-object p9, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    iput p10, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    iput p11, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->status:I

    move/from16 v0, p12

    iput v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->key:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->token:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->expires_in:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->created:J

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->updated:J

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

    check-cast p1, Lcom/ifengyu/im/DB/entity/UserEntity;

    iget v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    iget v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_7
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_a
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_b
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_c
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_1
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->created:J

    return-wide v0
.end method

.method public getDepartmentId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->itemType:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVerified()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    return v0
.end method

.method public getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    return-object v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-object v0
.end method

.method public getSectionName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->status:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->updated:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->created:J

    return-void
.end method

.method public setDepartmentId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->expires_in:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->itemType:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setMainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhoneVerified(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phoneVerified:I

    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->status:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->token:Ljava/lang/String;

    return-void
.end method

.method public setUpdated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->updated:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyinName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->realName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", departmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->departmentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->created:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->updated:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyinElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/UserEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
