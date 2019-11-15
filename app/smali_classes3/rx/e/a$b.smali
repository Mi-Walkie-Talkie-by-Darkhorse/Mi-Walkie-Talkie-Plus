.class final Lrx/e/a$b;
.super Lrx/d$a;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/e/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field private final c:Lrx/f/b;

.field private final d:Lrx/e/a$a;

.field private final e:Lrx/e/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lrx/e/a$b;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/e/a$b;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lrx/e/a$a;)V
    .locals 1

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/e/a$b;->c:Lrx/f/b;

    iput-object p1, p0, Lrx/e/a$b;->d:Lrx/e/a$a;

    invoke-virtual {p1}, Lrx/e/a$a;->a()Lrx/e/a$c;

    move-result-object v0

    iput-object v0, p0, Lrx/e/a$b;->e:Lrx/e/a$c;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/e/a$b;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 2

    iget-object v0, p0, Lrx/e/a$b;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/e/a$b;->e:Lrx/e/a$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/e/a$c;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    iget-object v1, p0, Lrx/e/a$b;->c:Lrx/f/b;

    invoke-virtual {v1, v0}, Lrx/f/b;->a(Lrx/f;)V

    iget-object v1, p0, Lrx/e/a$b;->c:Lrx/f/b;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/f/b;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/e/a$b;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    sget-object v0, Lrx/e/a$b;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/e/a$b;->d:Lrx/e/a$a;

    iget-object v1, p0, Lrx/e/a$b;->e:Lrx/e/a$c;

    invoke-virtual {v0, v1}, Lrx/e/a$a;->a(Lrx/e/a$c;)V

    :cond_0
    iget-object v0, p0, Lrx/e/a$b;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->unsubscribe()V

    return-void
.end method
