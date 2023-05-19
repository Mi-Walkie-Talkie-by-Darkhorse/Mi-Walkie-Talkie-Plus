.class public Lcom/shanlitech/et/web/tob/api/i;
.super Lcom/shanlitech/et/web/tob/api/b;
.source "OrganizationServiceAPI.java"


# static fields
.field private static final c:Lcom/shanlitech/et/web/tob/api/i;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/shanlitech/et/web/tob/api/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/tob/api/i;

    invoke-direct {v0}, Lcom/shanlitech/et/web/tob/api/i;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/tob/api/i;->c:Lcom/shanlitech/et/web/tob/api/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/b;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/web/tob/api/i;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static f()Lcom/shanlitech/et/web/tob/api/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/i;->c:Lcom/shanlitech/et/web/tob/api/i;

    return-object v0
.end method

.method private g()Lcom/shanlitech/et/web/tob/api/h;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/i;->b:Lcom/shanlitech/et/web/tob/api/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call initService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected e(Lretrofit2/Retrofit;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/tob/api/h;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/h;

    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/i;->b:Lcom/shanlitech/et/web/tob/api/h;

    return-void
.end method

.method public h(JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/i;->g()Lcom/shanlitech/et/web/tob/api/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shanlitech/et/web/tob/api/h;->a(J)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p3}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 2
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
