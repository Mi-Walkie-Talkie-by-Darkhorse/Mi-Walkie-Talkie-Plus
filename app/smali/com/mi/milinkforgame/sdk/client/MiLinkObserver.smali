.class public interface abstract Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;
.super Ljava/lang/Object;
.source "MiLinkObserver.java"


# virtual methods
.method public abstract onInternalError(I)V
.end method

.method public abstract onLoginFailed(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMilinkSdkStateUpdate(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V
.end method
