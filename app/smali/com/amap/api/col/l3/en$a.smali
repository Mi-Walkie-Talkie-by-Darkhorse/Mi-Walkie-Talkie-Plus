.class public final Lcom/amap/api/col/l3/en$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/en;
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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/col/l3/en$a;->a:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/amap/api/col/l3/en$a;->b:J

    invoke-static {}, Lcom/amap/api/col/l3/en;->d()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/en$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/col/l3/en$a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3/en$a;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/col/l3/en$a;->a:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/amap/api/col/l3/en$a;->b:J

    invoke-static {}, Lcom/amap/api/col/l3/en;->d()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/en$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/col/l3/en$a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3/en$a;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/en$a;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3/en$a;->j:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    return-void
.end method
