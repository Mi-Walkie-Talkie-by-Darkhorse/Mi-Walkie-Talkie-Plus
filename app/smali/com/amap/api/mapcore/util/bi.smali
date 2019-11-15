.class public Lcom/amap/api/mapcore/util/bi;
.super Ljava/lang/Object;
.source "SiteInfoBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bi;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/bi;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/bi;->c:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/mapcore/util/bi;->d:I

    iput-object p5, p0, Lcom/amap/api/mapcore/util/bi;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/bi;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bi;->e:Ljava/lang/String;

    return-object v0
.end method
