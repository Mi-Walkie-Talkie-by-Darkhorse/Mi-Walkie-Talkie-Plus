.class public Lcom/amap/api/mapcore/util/fx$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fx$a;->e:Z

    const-string v0, "standard"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->g:[Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fx$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fx$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/fx$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fx$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fx$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/fx$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/fx$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/fx$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/fx$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fx$a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/fx$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/fx$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fx$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amap/api/mapcore/util/fx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fn;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx$a;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/fn;

    const-string v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fn;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/fx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/fx;-><init>(Lcom/amap/api/mapcore/util/fx$a;Lcom/amap/api/mapcore/util/fx$1;)V

    return-object v0
.end method
