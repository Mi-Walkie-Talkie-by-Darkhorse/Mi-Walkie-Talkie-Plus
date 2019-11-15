.class public Lcom/amap/api/mapcore/util/fd;
.super Lcom/amap/api/offlineservice/a;
.source "OfflineMapPage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ExpandableListView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/AutoCompleteTextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private p:Lcom/amap/api/mapcore/util/ex;

.field private q:Lcom/amap/api/mapcore/util/ew;

.field private r:Lcom/amap/api/mapcore/util/ey;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:J

.field private w:Lcom/amap/api/mapcore/util/ez;

.field private x:Z

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/amap/api/offlineservice/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/fd;->s:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fd;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fd;->v:J

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/fd;->x:Z

    new-instance v0, Lcom/amap/api/mapcore/util/fd$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/fd$1;-><init>(Lcom/amap/api/mapcore/util/fd;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fd;)Lcom/amap/api/mapcore/util/ex;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/fd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/fd;)Lcom/amap/api/mapcore/util/ew;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->q:Lcom/amap/api/mapcore/util/ew;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/fd;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/fd;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fd;->k()V

    new-instance v0, Lcom/amap/api/mapcore/util/ex;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ex;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/amap/api/mapcore/util/ey;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ey;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->r:Lcom/amap/api/mapcore/util/ey;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->r:Lcom/amap/api/mapcore/util/ey;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private k()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getOfflineMapProvinceList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    add-int/lit8 v8, v1, 0x1

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u9999\u6e2f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const-string v8, "\u6fb3\u95e8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    const-string v8, "\u5168\u56fd\u6982\u8981\u56fe"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v1, "\u57fa\u672c\u529f\u80fd\u5305+\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v1, "\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v1, "\u6e2f\u6fb3"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const v6, 0x7f020004

    const/high16 v5, 0x7f020000

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v0, 0x7f070000

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f070002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f070006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070015

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070018

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->l:Landroid/widget/ImageView;

    new-instance v2, Lcom/amap/api/mapcore/util/fd$2;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore/util/fd$2;-><init>(Lcom/amap/api/mapcore/util/fd;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070019

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070017

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->closeScr()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->g:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->g:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ex;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->h:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->s:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->p:Lcom/amap/api/mapcore/util/ex;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ex;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->h:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->s:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070000 -> :sswitch_1
        0x7f070005 -> :sswitch_2
        0x7f070015 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Z)V
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->t:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->f:Landroid/widget/ExpandableListView;

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/fd;->s:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()Landroid/widget/RelativeLayout;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->destroy()V

    return-void
.end method

.method public i()V
    .locals 3

    new-instance v0, Lcom/amap/api/mapcore/util/ew;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ew;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fd;->q:Lcom/amap/api/mapcore/util/ew;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->q:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/DownLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCheckUpdate(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDownload(IILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/fd;->u:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput p1, p0, Lcom/amap/api/mapcore/util/fd;->u:I

    :cond_0
    :goto_1
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/fd;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fd;->v:J

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->w:Lcom/amap/api/mapcore/util/ez;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/mapcore/util/ez;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fd;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/ez;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/fd;->w:Lcom/amap/api/mapcore/util/ez;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fd;->w:Lcom/amap/api/mapcore/util/ez;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v2

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/util/ez;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->w:Lcom/amap/api/mapcore/util/ez;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ez;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->x:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/fd;->x:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore/util/fd;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/fd;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->r:Lcom/amap/api/mapcore/util/ey;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ey;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->r:Lcom/amap/api/mapcore/util/ey;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ey;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string v1, "\u672a\u627e\u5230\u76f8\u5173\u57ce\u5e02"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fd;->l()V

    const/4 v0, 0x0

    return v0
.end method

.method public onVerifyComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fd;->j()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fd;->i()V

    return-void
.end method
