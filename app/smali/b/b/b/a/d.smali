.class public final Lb/b/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lb/b/b/a/d;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/b/a/d;

    invoke-direct {v0}, Lb/b/b/a/d;-><init>()V

    sput-object v0, Lb/b/b/a/d;->c:Lb/b/b/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lb/b/b/a/f/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/a/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lb/b/b/a/f/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/a/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lb/b/b/a/d;->c:Lb/b/b/a/d;

    iget-object v0, v0, Lb/b/b/a/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
