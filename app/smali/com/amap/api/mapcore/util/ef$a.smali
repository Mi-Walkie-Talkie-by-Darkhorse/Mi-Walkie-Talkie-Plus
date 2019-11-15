.class public Lcom/amap/api/mapcore/util/ef$a;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/mapcore/util/ef$a;->a:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ef$a;->b:J

    invoke-static {}, Lcom/amap/api/mapcore/util/ef;->e()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/mapcore/util/ef$a;->e:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef$a;->h:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->i:Z

    iput-object v3, p0, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/amap/api/mapcore/util/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/mapcore/util/ef$a;->a:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ef$a;->b:J

    invoke-static {}, Lcom/amap/api/mapcore/util/ef;->e()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/mapcore/util/ef$a;->e:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef$a;->h:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ef$a;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/ef$a;->a:I

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ef$a;->g:Z

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/ef$a;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ef$a;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ef$a;->j:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore/util/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ef$a;->c:Ljava/io/File;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ef$a;->g:Z

    return-void
.end method
