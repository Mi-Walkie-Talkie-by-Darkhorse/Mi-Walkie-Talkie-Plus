.class Landroidx/room/h0$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Landroidx/room/h0$b;->a:Landroidx/room/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/h0$b;->a:Landroidx/room/h0;

    invoke-static {p2}, Landroidx/room/e0$a;->x(Landroid/os/IBinder;)Landroidx/room/e0;

    move-result-object p2

    iput-object p2, p1, Landroidx/room/h0;->f:Landroidx/room/e0;

    .line 2
    iget-object p1, p0, Landroidx/room/h0$b;->a:Landroidx/room/h0;

    iget-object p2, p1, Landroidx/room/h0;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/h0;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/room/h0$b;->a:Landroidx/room/h0;

    iget-object v0, p1, Landroidx/room/h0;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/h0;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/h0$b;->a:Landroidx/room/h0;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/room/h0;->f:Landroidx/room/e0;

    return-void
.end method
