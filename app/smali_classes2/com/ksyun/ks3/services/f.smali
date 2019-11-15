.class public Lcom/ksyun/ks3/services/f;
.super Ljava/lang/Object;
.source "Ks3ClientConfiguration.java"


# static fields
.field private static q:Lcom/ksyun/ks3/services/f;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ksyun/ks3/services/f;->h:I

    iput v1, p0, Lcom/ksyun/ks3/services/f;->i:I

    iput v1, p0, Lcom/ksyun/ks3/services/f;->j:I

    iput v1, p0, Lcom/ksyun/ks3/services/f;->k:I

    iput v1, p0, Lcom/ksyun/ks3/services/f;->l:I

    iput v1, p0, Lcom/ksyun/ks3/services/f;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/ks3/services/f;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/f;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public static b()Lcom/ksyun/ks3/services/f;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/services/f;

    invoke-direct {v0}, Lcom/ksyun/ks3/services/f;-><init>()V

    sput-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->f(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const v1, 0xc350

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->e(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->c(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    invoke-virtual {v0, v2}, Lcom/ksyun/ks3/services/f;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    invoke-virtual {v0, v2}, Lcom/ksyun/ks3/services/f;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    invoke-virtual {v0, v2}, Lcom/ksyun/ks3/services/f;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->d(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->a(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->b(I)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    const-string v1, "ks3-android-sdk"

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/f;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    sget-object v0, Lcom/ksyun/ks3/services/f;->q:Lcom/ksyun/ks3/services/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->o:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/f;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/f;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->p:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/f;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->o:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->i:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/f;->d:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->p:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->h:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/f;->e:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->i:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->j:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/services/f;->k:I

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->h:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->j:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/services/f;->k:I

    return v0
.end method

.method public m()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/f;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
