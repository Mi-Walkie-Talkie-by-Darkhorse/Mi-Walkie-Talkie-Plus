.class public Lc/b/a/a/a/a$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/a/a/a$c;


# direct methods
.method public constructor <init>(Lc/b/a/a/a/a$c;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/a/a$c$a;->a:Lc/b/a/a/a/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lc/b/a/a/a/a$c$a;->a:Lc/b/a/a/a/a$c;

    invoke-static {p2}, Lc/b/a/a/a/a$a;->a(Landroid/os/IBinder;)Lc/b/a/a/a/a;

    move-result-object p2

    iput-object p2, p1, Lc/b/a/a/a/a$c;->a:Lc/b/a/a/a/a;

    iget-object p1, p0, Lc/b/a/a/a/a$c$a;->a:Lc/b/a/a/a/a$c;

    iget-object p1, p1, Lc/b/a/a/a/a$c;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lc/b/a/a/a/a$c$a;->a:Lc/b/a/a/a/a$c;

    iget-object p2, p2, Lc/b/a/a/a/a$c;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lc/b/a/a/a/a$c$a;->a:Lc/b/a/a/a/a$c;

    const/4 v0, 0x0

    iput-object v0, p1, Lc/b/a/a/a/a$c;->a:Lc/b/a/a/a/a;

    return-void
.end method
