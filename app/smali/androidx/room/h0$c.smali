.class Landroidx/room/h0$c;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/h0;


# direct methods
.method constructor <init>(Landroidx/room/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h0$c;->a:Landroidx/room/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/h0$c;->a:Landroidx/room/h0;

    iget-object v1, v0, Landroidx/room/h0;->f:Landroidx/room/e0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Landroidx/room/h0;->h:Landroidx/room/d0;

    iget-object v3, v0, Landroidx/room/h0;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/room/e0;->g(Landroidx/room/d0;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/room/h0;->c:I

    .line 3
    iget-object v0, p0, Landroidx/room/h0$c;->a:Landroidx/room/h0;

    iget-object v1, v0, Landroidx/room/h0;->d:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/h0;->e:Landroidx/room/g0$c;

    invoke-virtual {v1, v0}, Landroidx/room/g0;->a(Landroidx/room/g0$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
