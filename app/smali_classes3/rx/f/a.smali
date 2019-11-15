.class public final Lrx/f/a;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/f;


# static fields
.field static final b:Lrx/b/a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/f/a$1;

    invoke-direct {v0}, Lrx/f/a$1;-><init>()V

    sput-object v0, Lrx/f/a;->b:Lrx/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/f/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lrx/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/f/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lrx/f/a;
    .locals 1

    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/f/a;
    .locals 1

    new-instance v0, Lrx/f/a;

    invoke-direct {v0, p0}, Lrx/f/a;-><init>(Lrx/b/a;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 2

    iget-object v0, p0, Lrx/f/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/f/a;->b:Lrx/b/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 2

    iget-object v0, p0, Lrx/f/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b/a;

    sget-object v1, Lrx/f/a;->b:Lrx/b/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lrx/f/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/f/a;->b:Lrx/b/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b/a;

    if-eqz v0, :cond_0

    sget-object v1, Lrx/f/a;->b:Lrx/b/a;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lrx/b/a;->a()V

    :cond_0
    return-void
.end method
