.class Landroidx/room/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field c:I

.field final d:Landroidx/room/g;

.field final e:Landroidx/room/g$c;

.field f:Landroidx/room/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final g:Ljava/util/concurrent/Executor;

.field final h:Landroidx/room/d;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Landroid/content/ServiceConnection;

.field final k:Ljava/lang/Runnable;

.field final l:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/g;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/room/h$a;

    invoke-direct {v0, p0}, Landroidx/room/h$a;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->h:Landroidx/room/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/room/h$b;

    invoke-direct {v0, p0}, Landroidx/room/h$b;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->j:Landroid/content/ServiceConnection;

    new-instance v0, Landroidx/room/h$c;

    invoke-direct {v0, p0}, Landroidx/room/h$c;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->k:Ljava/lang/Runnable;

    new-instance v0, Landroidx/room/h$d;

    invoke-direct {v0, p0}, Landroidx/room/h$d;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->l:Ljava/lang/Runnable;

    new-instance v0, Landroidx/room/h$e;

    invoke-direct {v0, p0}, Landroidx/room/h$e;-><init>(Landroidx/room/h;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/h;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/h;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/h;->d:Landroidx/room/g;

    iput-object p4, p0, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p3, Landroidx/room/g;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Landroidx/room/h$f;

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Landroidx/room/h$f;-><init>(Landroidx/room/h;[Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/room/h;->e:Landroidx/room/g$c;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Landroidx/room/h;->a:Landroid/content/Context;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Landroidx/room/h;->a:Landroid/content/Context;

    iget-object p3, p0, Landroidx/room/h;->j:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
