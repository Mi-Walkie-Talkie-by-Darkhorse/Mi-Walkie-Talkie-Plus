.class public interface abstract Lcom/just/agentweb/ActionActivity$PermissionListener;
.super Ljava/lang/Object;
.source "ActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/ActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionListener"
.end annotation


# virtual methods
.method public abstract onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
