.class public Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GaoDeOfflineMapCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/b/r$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Landroid/os/Handler;

.field private D:Landroid/widget/TextView;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field cityExpandableListView:Landroid/widget/ExpandableListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e0
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field leftBackIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field titleText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field private u:Landroid/widget/ImageView;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/ifengyu/intercom/ui/adapter/f;

.field private x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field private y:Ljava/lang/String;

.field private z:Lcom/amap/api/maps/offlinemap/OfflineMapCity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->v:Ljava/util/List;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->C:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)Lcom/ifengyu/intercom/ui/adapter/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->w:Lcom/ifengyu/intercom/ui/adapter/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v2, 0x1

    const-string v0, "quanguogaiyaotu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "National Basic Map"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "xian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Xi\'an"

    goto :goto_0

    :cond_1
    const-string v0, "yaan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ya\'an"

    goto :goto_0

    :cond_2
    const-string v0, "liuan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Liu\'an"

    goto :goto_0

    :cond_3
    const-string v0, "huaian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Huai\'an"

    goto :goto_0

    :cond_4
    const-string v0, "guanan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Guang\'an"

    goto :goto_0

    :cond_5
    const-string v0, "taian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Tai\'an"

    goto :goto_0

    :cond_6
    const-string v0, "xianggang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Hong Kong"

    goto :goto_0

    :cond_7
    const-string v0, "aomen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Macao"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->f()V

    return-void
.end method

.method private d()V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getOfflineMapProvinceList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->v:Ljava/util/List;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090038

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f0901e3

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f090207

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f090066

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f090103

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f09002f

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const v1, 0x7f090268

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setProvinceName(Ljava/lang/String;)V

    const v1, 0x7f090269

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setPinyin(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e()V
    .locals 4

    const v3, 0x7f0f001a

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090259

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_6
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method private f()V
    .locals 4

    const v3, 0x7f0f001a

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->z:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090259

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_6
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->B:Z

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->B:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->z:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 11

    const/4 v10, 0x0

    const v5, 0x7f09009a

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->titleText:Landroid/widget/TextView;

    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f040054

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f1001a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f1001a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f1001a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f1001a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->D:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->D:Landroid/widget/TextView;

    const v2, 0x7f09009b

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f1001a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f1001a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f1001a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->u:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->V()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->A:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->z:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->z:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    div-double/2addr v2, v8

    mul-double/2addr v2, v6

    double-to-int v0, v2

    int-to-double v2, v0

    div-double/2addr v2, v6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->s:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->v:Ljava/util/List;

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/ifengyu/intercom/ui/adapter/f;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->w:Lcom/ifengyu/intercom/ui/adapter/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->w:Lcom/ifengyu/intercom/ui/adapter/f;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->w:Lcom/ifengyu/intercom/ui/adapter/f;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->w:Lcom/ifengyu/intercom/ui/adapter/f;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    div-double/2addr v2, v8

    mul-double/2addr v2, v6

    double-to-int v0, v2

    int-to-double v2, v0

    div-double/2addr v2, v6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->e()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->x:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_2
    :try_start_1
    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10019e -> :sswitch_1
        0x7f1001a3 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->d()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->c()V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/r;->a(Lcom/ifengyu/intercom/b/r$a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/r;->b(Lcom/ifengyu/intercom/b/r$a;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
