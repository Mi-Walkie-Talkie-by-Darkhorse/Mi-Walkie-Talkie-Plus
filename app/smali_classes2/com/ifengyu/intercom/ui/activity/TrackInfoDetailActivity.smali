.class public Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$e;,
        Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$f;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:D

.field private E:D

.field private F:D

.field private G:D

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/ifengyu/intercom/greendao/bean/b;

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private K:J

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Landroid/graphics/Typeface;

.field private O:Lcom/github/mikephil/charting/charts/LineChart;

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:I

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Ljava/io/File;

.field private W:Lcom/amap/api/maps/AMap;

.field private X:Lcom/amap/api/maps/model/LatLngBounds;

.field private final q:Ljava/lang/String;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/amap/api/maps/MapView;

.field private t:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "TrackInfoDetailActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private A()Lcom/github/mikephil/charting/data/j;
    .locals 3

    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Ljava/util/ArrayList;

    const v2, 0x7f110045

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/k;->f(I)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/k;->g(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/k;->b(F)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/d;->e(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->c(Z)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/d;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/k;->b(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/k;->a(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->c:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->a(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->c(F)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/mikephil/charting/data/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private B()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v1

    iget-wide v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/b;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "for_preview_track"

    const/high16 v12, 0x447a0000    # 1000.0f

    if-ge v4, v10, :cond_7

    iget-object v10, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ifengyu/intercom/greendao/bean/c;

    iget-object v13, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->a()Ljava/lang/Integer;

    move-result-object v11

    if-nez v4, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v8, v13

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v5, v13, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v7, v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->b()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v4, :cond_4

    iget-object v13, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    if-ne v4, v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v9

    add-float/2addr v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Ljava/util/ArrayList;

    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->a()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v13, v14, v12}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Ljava/util/ArrayList;

    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->a()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v13, v14, v12}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_5
    :goto_3
    new-instance v11, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->g()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v2, v3

    div-double/2addr v2, v14

    invoke-direct {v11, v12, v13, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    sub-int v1, v5, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v8, :cond_8

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int v3, v8, v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/Integer;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/greendao/bean/b;->f(Ljava/lang/Integer;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/Integer;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Integer;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_9
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, " km"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannableString;

    const-string v5, "km/h"

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v2, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/SpannableString;

    const-string v8, "m"

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v5, v8, v7, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v8, 0x7f08019e

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "avatar"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v7, v8, v9, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/b;->f()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    invoke-static {v7, v8}, Lcom/ifengyu/intercom/i/j0;->g(J)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string v7, "%.1f"

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->R:Ljava/lang/String;

    iget-object v7, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/j0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v7, 0x1

    invoke-direct {v1, v3, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v3, 0x5

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v4, v1, v3, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y()V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A()Lcom/github/mikephil/charting/data/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/h;)V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w()V

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    return-void
.end method

.method private C()V
    .locals 5

    const v0, 0x7f09044f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Landroid/widget/LinearLayout;

    const v0, 0x7f09044e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->U:Landroid/widget/LinearLayout;

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r:Landroid/widget/ImageView;

    const v2, 0x7f080215

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const v0, 0x7f090435

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/map/style"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "map_style.data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    const v0, 0x7f09025b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f090440

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f09043d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09043c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09043e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09043a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09043b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090439

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090437

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090438

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090434

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/util/List;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/g/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private E()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:D

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:D

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:D

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:D

    goto :goto_1

    :cond_0
    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:D

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:D

    :cond_1
    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:D

    cmpg-double v1, v2, v6

    if-gez v1, :cond_2

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:D

    :cond_2
    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:D

    cmpl-double v3, v4, v1

    if-lez v3, :cond_3

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:D

    :cond_3
    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:D

    cmpg-double v3, v4, v1

    if-gez v3, :cond_4

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:D

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:D

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:D

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/amap/api/maps/model/LatLngBounds;

    invoke-direct {v2, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->X:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method private F()V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f1100fc

    const v2, 0x7f08013e

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->X:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->V:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->U:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->R:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->V:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/AMap;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x()V

    return-void
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:I

    return p0
.end method

.method private w()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/high16 v4, 0x40800000    # 4.0f

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v8, v0

    aput-object v5, v8, v3

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06018e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    new-instance v5, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06018d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f080142

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v4, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v4, 0x7f080143

    invoke-static {v4}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    return-void
.end method

.method private x()V
    .locals 4

    const v0, 0x7f1100ff

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private y()V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawBorders(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setDescription(Lcom/github/mikephil/charting/components/c;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/b;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->a(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const v3, 0x7f0600b4

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/a;->c(I)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/a;->a(F)V

    const v5, 0x7f060033

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/b;->a(I)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/a;->b(Z)V

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->R:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/a;->b(F)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/a;->c(F)V

    new-instance v6, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$e;

    invoke-direct {v6, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/a;->a(Lb/a/a/a/c/d;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2}, Lcom/github/mikephil/charting/components/a;->a(IZ)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/b;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/a;->c(I)V

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/a;->a(F)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/a;->b(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/a;->b(F)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    iput v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/a;->c(F)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->f(F)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->g(F)V

    invoke-virtual {v0, v4, v1}, Lcom/github/mikephil/charting/components/a;->a(IZ)V

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$f;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/a;->a(Lb/a/a/a/c/d;)V

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/b;->a(I)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/b;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/b;->a(Z)V

    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    const-string v1, "for_look_saved_track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    const-string v1, "for_preview_track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TrackInfoDetailActivity"

    const-string v1, "trackInfoData IsSaved"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v0, 0x7f110100

    const v1, 0x7f08013e

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    invoke-static {p0}, Lcom/ifengyu/intercom/d;->a(Landroid/app/Activity;)V

    sget v0, Lcom/ifengyu/intercom/d;->b:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->X:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z()V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->W:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->X:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09025a -> :sswitch_4
        0x7f09025b -> :sswitch_3
        0x7f09025d -> :sswitch_2
        0x7f090419 -> :sswitch_1
        0x7f09041a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    const v1, 0x7f1100fb

    const v2, 0x7f08013e

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "trackInfoPrimaryKeyId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "track_info_for_what"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent trackPrimaryKetID:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "---fromWhere:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackInfoDetailActivity"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
