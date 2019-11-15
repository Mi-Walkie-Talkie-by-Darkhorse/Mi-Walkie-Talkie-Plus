.class Lcom/amap/api/mapcore/util/ey$1;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ey;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ey$a;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field final synthetic c:Lcom/amap/api/mapcore/util/ey;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ey;Lcom/amap/api/mapcore/util/ey$a;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ey$1;->c:Lcom/amap/api/mapcore/util/ey;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ey$1;->a:Lcom/amap/api/mapcore/util/ey$a;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/ey$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey$1;->a:Lcom/amap/api/mapcore/util/ey$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey$1;->a:Lcom/amap/api/mapcore/util/ey$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey$1;->a:Lcom/amap/api/mapcore/util/ey$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey$1;->c:Lcom/amap/api/mapcore/util/ey;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ey;->a(Lcom/amap/api/mapcore/util/ey;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ey$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
