.class Lde/greenrobot/event/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lde/greenrobot/event/h;

.field private final b:Lde/greenrobot/event/c;


# direct methods
.method constructor <init>(Lde/greenrobot/event/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/a;->b:Lde/greenrobot/event/c;

    new-instance p1, Lde/greenrobot/event/h;

    invoke-direct {p1}, Lde/greenrobot/event/h;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/a;->a:Lde/greenrobot/event/h;

    return-void
.end method


# virtual methods
.method public a(Lde/greenrobot/event/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lde/greenrobot/event/g;->a(Lde/greenrobot/event/l;Ljava/lang/Object;)Lde/greenrobot/event/g;

    move-result-object p1

    iget-object p2, p0, Lde/greenrobot/event/a;->a:Lde/greenrobot/event/h;

    invoke-virtual {p2, p1}, Lde/greenrobot/event/h;->a(Lde/greenrobot/event/g;)V

    iget-object p1, p0, Lde/greenrobot/event/a;->b:Lde/greenrobot/event/c;

    invoke-virtual {p1}, Lde/greenrobot/event/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lde/greenrobot/event/a;->a:Lde/greenrobot/event/h;

    invoke-virtual {v0}, Lde/greenrobot/event/h;->a()Lde/greenrobot/event/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/greenrobot/event/a;->b:Lde/greenrobot/event/c;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/c;->a(Lde/greenrobot/event/g;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
