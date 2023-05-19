.class public Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;
.super Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;
.source "ItemSelectAdapterEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private check:Z

.field private enable:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->enable:Z

    return-void
.end method


# virtual methods
.method public isCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->check:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->enable:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->check:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->enable:Z

    return-void
.end method
