.class public Lcom/ifengyu/im/DB/entity/DepartmentEntity;
.super Ljava/lang/Object;
.source "DepartmentEntity.java"


# instance fields
.field public created:I

.field public departId:I

.field public departName:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

.field public priority:I

.field public searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

.field public status:I

.field public updated:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v0, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    new-instance v0, Lcom/ifengyu/im/imservice/entity/SearchElement;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/SearchElement;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->id:Ljava/lang/Long;

    iput p2, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departId:I

    iput-object p3, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departName:Ljava/lang/String;

    iput p4, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->priority:I

    iput p5, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->status:I

    iput p6, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->created:I

    iput p7, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->updated:I

    return-void
.end method


# virtual methods
.method public getCreated()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->created:I

    return v0
.end method

.method public getDepartId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departId:I

    return v0
.end method

.method public getDepartName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->pinyinElement:Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->priority:I

    return v0
.end method

.method public getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->searchElement:Lcom/ifengyu/im/imservice/entity/SearchElement;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->status:I

    return v0
.end method

.method public getUpdated()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->updated:I

    return v0
.end method

.method public setCreated(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->created:I

    return-void
.end method

.method public setDepartId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departId:I

    return-void
.end method

.method public setDepartName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->departName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->priority:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->status:I

    return-void
.end method

.method public setUpdated(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->updated:I

    return-void
.end method
