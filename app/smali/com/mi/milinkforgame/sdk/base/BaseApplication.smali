.class public abstract Lcom/mi/milinkforgame/sdk/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/BaseApplication;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milinkforgame/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;)V

    return-void
.end method
