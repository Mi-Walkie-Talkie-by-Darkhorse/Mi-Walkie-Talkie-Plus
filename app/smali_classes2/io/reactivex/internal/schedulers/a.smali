.class public final Lio/reactivex/internal/schedulers/a;
.super Lio/reactivex/r;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/a$c;,
        Lio/reactivex/internal/schedulers/a$a;,
        Lio/reactivex/internal/schedulers/a$b;
    }
.end annotation


# static fields
.field static final b:Lio/reactivex/internal/schedulers/a$b;

.field static final c:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field static final d:I

.field static final e:Lio/reactivex/internal/schedulers/a$c;


# instance fields
.field final f:Ljava/util/concurrent/ThreadFactory;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/schedulers/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/internal/schedulers/a;->a(II)I

    move-result v0

    sput v0, Lio/reactivex/internal/schedulers/a;->d:I

    new-instance v0, Lio/reactivex/internal/schedulers/a$c;

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxComputationShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/a;->e:Lio/reactivex/internal/schedulers/a$c;

    sget-object v0, Lio/reactivex/internal/schedulers/a;->e:Lio/reactivex/internal/schedulers/a$c;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$c;->dispose()V

    const/16 v0, 0xa

    const-string v1, "rx2.computation-priority"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxComputationThreadPool"

    invoke-direct {v1, v2, v0, v4}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lio/reactivex/internal/schedulers/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v0, Lio/reactivex/internal/schedulers/a$b;

    sget-object v1, Lio/reactivex/internal/schedulers/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {v0, v3, v1}, Lio/reactivex/internal/schedulers/a$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    sget-object v0, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/internal/schedulers/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/r;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/a;->f:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/a;->b()V

    return-void
.end method

.method static a(II)I
    .locals 0

    if-lez p1, :cond_0

    if-le p1, p0, :cond_1

    :cond_0
    move p1, p0

    :cond_1
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/schedulers/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/a$b;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$b;->a()Lio/reactivex/internal/schedulers/a$c;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/schedulers/a$c;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/schedulers/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/a$b;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$b;->a()Lio/reactivex/internal/schedulers/a$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/a$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public a()Lio/reactivex/r$c;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v1, Lio/reactivex/internal/schedulers/a$a;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/a$b;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$b;->a()Lio/reactivex/internal/schedulers/a$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/a$a;-><init>(Lio/reactivex/internal/schedulers/a$c;)V

    return-object v1
.end method

.method public b()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/schedulers/a$b;

    sget v1, Lio/reactivex/internal/schedulers/a;->d:I

    iget-object v2, p0, Lio/reactivex/internal/schedulers/a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/schedulers/a$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex/internal/schedulers/a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a$b;->b()V

    :cond_0
    return-void
.end method
