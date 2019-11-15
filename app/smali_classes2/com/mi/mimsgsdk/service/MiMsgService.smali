.class public Lcom/mi/mimsgsdk/service/MiMsgService;
.super Landroid/app/Service;
.source "MiMsgService.java"


# instance fields
.field mFacade:Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "appId"

    const v1, 0x5f5e100

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;

    invoke-direct {v1, p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgService;->mFacade:Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgService;->mFacade:Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
