.class public interface abstract Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;
.super Ljava/lang/Object;
.source "ICustomCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/aidl/ICustomCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
