.class public Lcom/amap/api/mapcore/util/hh$a;
.super Ljava/lang/Object;
.source "DynamicPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/hh;
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

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "copy"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/hh$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/hh$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/hh$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/mapcore/util/hh$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/amap/api/mapcore/util/hh$a;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/hh$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh$a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hh$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/hh$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amap/api/mapcore/util/hh;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/hh;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/hh;-><init>(Lcom/amap/api/mapcore/util/hh$a;)V

    return-object v0
.end method
