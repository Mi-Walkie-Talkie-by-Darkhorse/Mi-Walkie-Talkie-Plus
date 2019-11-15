.class Lcom/amap/api/mapcore/util/bj$b;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/bj;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/mapcore/util/bf;

.field private e:Lcom/amap/api/mapcore/util/bj$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bj;Lcom/amap/api/mapcore/util/bg;Lcom/amap/api/mapcore/util/bf;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bj$b;->a:Lcom/amap/api/mapcore/util/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->d:Lcom/amap/api/mapcore/util/bf;

    new-instance v0, Lcom/amap/api/mapcore/util/bj$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bj$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->e:Lcom/amap/api/mapcore/util/bj$a;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/bg;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->b:Ljava/lang/String;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/bg;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/bj$b;->d:Lcom/amap/api/mapcore/util/bf;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bj$b;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amap/api/mapcore/util/bf;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->d:Lcom/amap/api/mapcore/util/bf;

    return-object v0
.end method

.method public e()Lcom/amap/api/mapcore/util/bj$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->e:Lcom/amap/api/mapcore/util/bj$a;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bj$b;->e:Lcom/amap/api/mapcore/util/bj$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/bj$a;->a:Z

    return-void
.end method
