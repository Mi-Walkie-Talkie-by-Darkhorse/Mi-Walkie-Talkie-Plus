.class public abstract Landroidx/room/p0$a;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/p0$a;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a(La/g/a/b;)V
.end method

.method protected abstract b(La/g/a/b;)V
.end method

.method protected abstract c(La/g/a/b;)V
.end method

.method protected abstract d(La/g/a/b;)V
.end method

.method protected abstract e(La/g/a/b;)V
.end method

.method protected abstract f(La/g/a/b;)V
.end method

.method protected abstract g(La/g/a/b;)Landroidx/room/p0$b;
    .param p1    # La/g/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
