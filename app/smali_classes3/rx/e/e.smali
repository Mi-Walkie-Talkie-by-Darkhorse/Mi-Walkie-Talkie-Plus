.class public final Lrx/e/e;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Lrx/e/e;


# instance fields
.field private final a:Lrx/d;

.field private final b:Lrx/d;

.field private final c:Lrx/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/e/e;

    invoke-direct {v0}, Lrx/e/e;-><init>()V

    sput-object v0, Lrx/e/e;->d:Lrx/e/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->a()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lrx/e/e;->a:Lrx/d;

    :goto_0
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->b()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lrx/e/e;->b:Lrx/d;

    :goto_1
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->c()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lrx/e/e;->c:Lrx/d;

    :goto_2
    return-void

    :cond_0
    new-instance v0, Lrx/internal/schedulers/a;

    invoke-direct {v0}, Lrx/internal/schedulers/a;-><init>()V

    iput-object v0, p0, Lrx/e/e;->a:Lrx/d;

    goto :goto_0

    :cond_1
    new-instance v0, Lrx/e/a;

    invoke-direct {v0}, Lrx/e/a;-><init>()V

    iput-object v0, p0, Lrx/e/e;->b:Lrx/d;

    goto :goto_1

    :cond_2
    invoke-static {}, Lrx/e/d;->c()Lrx/e/d;

    move-result-object v0

    iput-object v0, p0, Lrx/e/e;->c:Lrx/d;

    goto :goto_2
.end method

.method public static a()Lrx/d;
    .locals 1

    sget-object v0, Lrx/e/e;->d:Lrx/e/e;

    iget-object v0, v0, Lrx/e/e;->a:Lrx/d;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lrx/d;
    .locals 1

    new-instance v0, Lrx/e/b;

    invoke-direct {v0, p0}, Lrx/e/b;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static b()Lrx/d;
    .locals 1

    sget-object v0, Lrx/e/e;->d:Lrx/e/e;

    iget-object v0, v0, Lrx/e/e;->b:Lrx/d;

    return-object v0
.end method
