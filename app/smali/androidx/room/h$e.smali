.class Landroidx/room/h$e;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/h;


# direct methods
.method constructor <init>(Landroidx/room/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    iget-object v1, v0, Landroidx/room/h;->d:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/h;->e:Landroidx/room/g$c;

    invoke-virtual {v1, v0}, Landroidx/room/g;->b(Landroidx/room/g$c;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    iget-object v0, v0, Landroidx/room/h;->f:Landroidx/room/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    iget-object v1, v1, Landroidx/room/h;->h:Landroidx/room/d;

    iget-object v2, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    iget v2, v2, Landroidx/room/h;->c:I

    invoke-interface {v0, v1, v2}, Landroidx/room/e;->a(Landroidx/room/d;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/h$e;->a:Landroidx/room/h;

    iget-object v1, v0, Landroidx/room/h;->a:Landroid/content/Context;

    iget-object v0, v0, Landroidx/room/h;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
