.class public Lcom/ifengyu/intercom/g/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/g/f/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/ifengyu/intercom/g/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/g/f/c;->b()Lcom/ifengyu/intercom/g/f/c;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/g/f/c;->a:Lcom/ifengyu/intercom/g/f/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lcom/ifengyu/intercom/g/f/c;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/g/f/c$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/g/f/c$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/g/f/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/g/f/c;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/ifengyu/intercom/g/f/c;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/g/f/c;->a:Lcom/ifengyu/intercom/g/f/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/g/f/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ifengyu/intercom/g/f/c;->a:Lcom/ifengyu/intercom/g/f/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/f/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
