.class Landroidx/room/h$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Landroidx/room/h$b;->a:Landroidx/room/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/h$b;->a:Landroidx/room/h;

    invoke-static {p2}, Landroidx/room/e$a;->a(Landroid/os/IBinder;)Landroidx/room/e;

    move-result-object p2

    iput-object p2, p1, Landroidx/room/h;->f:Landroidx/room/e;

    .line 2
    iget-object p1, p0, Landroidx/room/h$b;->a:Landroidx/room/h;

    iget-object p2, p1, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/h;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/room/h$b;->a:Landroidx/room/h;

    iget-object v0, p1, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/h;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/h$b;->a:Landroidx/room/h;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/room/h;->f:Landroidx/room/e;

    return-void
.end method
