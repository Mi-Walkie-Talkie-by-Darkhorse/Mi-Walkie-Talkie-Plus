.class Lcom/amap/api/mapcore/util/a$7;
.super Lcom/amap/api/mapcore/util/a$a;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$7;->a:Lcom/amap/api/mapcore/util/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/a$a;-><init>(Lcom/amap/api/mapcore/util/a$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$7;->a:Lcom/amap/api/mapcore/util/a;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$7;->g:I

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a$7;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/a;->g(IZ)V

    return-void
.end method
