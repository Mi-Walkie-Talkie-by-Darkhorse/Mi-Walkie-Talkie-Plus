.class public Lde/greenrobot/event/d;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final i:Ljava/util/concurrent/ExecutorService;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/util/concurrent/ExecutorService;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lde/greenrobot/event/d;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lde/greenrobot/event/d;->a:Z

    .line 3
    iput-boolean v0, p0, Lde/greenrobot/event/d;->b:Z

    .line 4
    iput-boolean v0, p0, Lde/greenrobot/event/d;->c:Z

    .line 5
    iput-boolean v0, p0, Lde/greenrobot/event/d;->d:Z

    .line 6
    iput-boolean v0, p0, Lde/greenrobot/event/d;->f:Z

    .line 7
    sget-object v0, Lde/greenrobot/event/d;->i:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lde/greenrobot/event/d;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
