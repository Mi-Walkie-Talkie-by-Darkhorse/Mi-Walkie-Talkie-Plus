.class public Lcom/amap/api/mapcore/util/ey;
.super Landroid/widget/BaseAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ey$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapManager;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapActivity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ey;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ey;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/ey;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ey;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ey;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ey;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-nez p2, :cond_0

    new-instance v2, Lcom/amap/api/mapcore/util/ey$a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore/util/ey$a;-><init>(Lcom/amap/api/mapcore/util/ey;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ey;->c:Landroid/app/Activity;

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f07000b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/amap/api/mapcore/util/ey$a;->a:Landroid/widget/TextView;

    const v1, 0x7f07000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/amap/api/mapcore/util/ey$a;->b:Landroid/widget/TextView;

    const v1, 0x7f07000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const v1, 0x7f07000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    iget-object v1, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    new-instance v3, Lcom/amap/api/mapcore/util/ey$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/amap/api/mapcore/util/ey$1;-><init>(Lcom/amap/api/mapcore/util/ey;Lcom/amap/api/mapcore/util/ey$a;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p2

    :goto_0
    :try_start_1
    iget-object v3, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/amap/api/mapcore/util/ey$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v6

    iget-object v3, v2, Lcom/amap/api/mapcore/util/ey$a;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ey$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v1

    move-object v1, p2

    goto :goto_0

    :sswitch_0
    :try_start_3
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v2, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_3
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :sswitch_1
    :try_start_4
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :sswitch_4
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ey$a;->c:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x6 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method
