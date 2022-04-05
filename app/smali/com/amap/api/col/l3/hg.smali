.class public final Lcom/amap/api/col/l3/hg;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3/hg;-><init>(Ljava/lang/String;Ljava/lang/String;ZB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/amap/api/col/l3/hg;->i:Z

    iput-boolean p4, p0, Lcom/amap/api/col/l3/hg;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/hg;->k:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/hg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3/hg;->h:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amap/api/col/l3/hg;->i:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3/hg;->k:Z

    :try_start_0
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p2, p1, p4

    iput-object p2, p0, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    const/4 p2, 0x2

    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/amap/api/col/l3/hg;->d:Ljava/lang/String;

    aget-object p2, p1, v0

    iput-object p2, p0, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    const/4 p2, 0x3

    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3/hg;->f:I

    const/4 p2, 0x4

    aget-object p1, p1, p2

    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/hg;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DexDownloadItem"

    invoke-static {p1, p2, p2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/hg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/hg;->j:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/hg;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/hg;->i:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/hg;->j:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/hg;->k:Z

    return v0
.end method
