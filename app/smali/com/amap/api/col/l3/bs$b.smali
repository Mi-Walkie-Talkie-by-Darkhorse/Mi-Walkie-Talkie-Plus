.class final Lcom/amap/api/col/l3/bs$b;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/bs;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/col/l3/bo;

.field private e:Lcom/amap/api/col/l3/bs$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/bs;Lcom/amap/api/col/l3/bp;Lcom/amap/api/col/l3/bo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->a:Lcom/amap/api/col/l3/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->d:Lcom/amap/api/col/l3/bo;

    .line 3
    new-instance p1, Lcom/amap/api/col/l3/bs$a;

    invoke-direct {p1}, Lcom/amap/api/col/l3/bs$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->e:Lcom/amap/api/col/l3/bs$a;

    .line 4
    invoke-interface {p2}, Lcom/amap/api/col/l3/bp;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p2}, Lcom/amap/api/col/l3/bp;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->c:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/amap/api/col/l3/bs$b;->d:Lcom/amap/api/col/l3/bo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/bs$b;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/amap/api/col/l3/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->d:Lcom/amap/api/col/l3/bo;

    return-object v0
.end method

.method public final e()Lcom/amap/api/col/l3/bs$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->e:Lcom/amap/api/col/l3/bs$a;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bs$b;->e:Lcom/amap/api/col/l3/bs$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3/bs$a;->a:Z

    return-void
.end method
