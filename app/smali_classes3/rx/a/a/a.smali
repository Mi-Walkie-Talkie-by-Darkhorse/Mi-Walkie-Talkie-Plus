.class public final Lrx/a/a/a;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static final a:Lrx/a/a/a;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/a/a/a;

    invoke-direct {v0}, Lrx/a/a/a;-><init>()V

    sput-object v0, Lrx/a/a/a;->a:Lrx/a/a/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lrx/a/a/a;
    .locals 1

    sget-object v0, Lrx/a/a/a;->a:Lrx/a/a/a;

    return-object v0
.end method


# virtual methods
.method public b()Lrx/a/a/b;
    .locals 3

    iget-object v0, p0, Lrx/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lrx/a/a/b;->a()Lrx/a/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lrx/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a/a/b;

    return-object v0
.end method
