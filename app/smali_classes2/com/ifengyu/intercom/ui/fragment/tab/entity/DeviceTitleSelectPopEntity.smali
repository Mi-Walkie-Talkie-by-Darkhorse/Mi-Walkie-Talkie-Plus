.class public Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;
.super Ljava/lang/Object;
.source "DeviceTitleSelectPopEntity.java"


# instance fields
.field private isSelected:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->type:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->isSelected:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->type:Ljava/lang/String;

    return-void
.end method
