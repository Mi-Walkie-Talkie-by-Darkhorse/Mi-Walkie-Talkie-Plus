.class public final Lcom/amap/api/col/l3/fk;
.super Lcom/amap/api/offlineservice/a;

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
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private p:Lcom/amap/api/col/l3/fe;

.field private q:Lcom/amap/api/col/l3/fd;

.field private r:Lcom/amap/api/col/l3/ff;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:J

.field private w:Lcom/amap/api/col/l3/fg;

.field private x:Z

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/offlineservice/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fk;->s:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fk;->t:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/l3/fk;->u:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/col/l3/fk;->v:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fk;->x:Z

    new-instance v0, Lcom/amap/api/col/l3/fk$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/fk$1;-><init>(Lcom/amap/api/col/l3/fk;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/fk;)Lcom/amap/api/col/l3/fe;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/fk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3/fk;->x:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/fk;)Lcom/amap/api/col/l3/fd;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fk;->q:Lcom/amap/api/col/l3/fd;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/fk;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fk;->i:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/fk;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fk;->l:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/high16 v0, 0x7f070000

    const/4 v1, 0x1

    const v2, 0x7f020004

    const/high16 v3, 0x7f020000

    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f070005

    if-eq p1, v0, :cond_1

    const v0, 0x7f070015

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->closeScr()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3/fk;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fe;->b()V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v4, p0, Lcom/amap/api/col/l3/fk;->s:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fe;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v1, p0, Lcom/amap/api/col/l3/fk;->s:Z

    :goto_0
    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/amap/api/col/l3/fk;->t:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v4, p0, Lcom/amap/api/col/l3/fk;->t:Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput-boolean v1, p0, Lcom/amap/api/col/l3/fk;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iget-boolean v2, p0, Lcom/amap/api/col/l3/fk;->t:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    iget-boolean v2, p0, Lcom/amap/api/col/l3/fk;->s:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const/high16 v1, 0x7f030000

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/fm;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/DownLoadListView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->k:Landroid/widget/RelativeLayout;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->l:Landroid/widget/ImageView;

    new-instance v2, Lcom/amap/api/col/l3/fk$2;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/fk$2;-><init>(Lcom/amap/api/col/l3/fk;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/fk;->s:Z

    const/4 v1, 0x0

    const/high16 v2, 0x7f020000

    const/16 v3, 0x8

    const v4, 0x7f020004

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/fk;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c()Landroid/widget/RelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const v1, 0x7f030004

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/fm;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->destroy()V

    return-void
.end method

.method public final onCheckUpdate(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDownload(IILjava/lang/String;)V
    .locals 4

    const/4 p2, 0x0

    const/16 p3, 0x65

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {p3, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    iget-object p3, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p3}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    :goto_0
    iget p3, p0, Lcom/amap/api/col/l3/fk;->u:I

    if-eq p3, p1, :cond_1

    iget-object p3, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p3, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput p1, p0, Lcom/amap/api/col/l3/fk;->u:I

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/fk;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3/fk;->v:J

    :cond_2
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object p2, p0, Lcom/amap/api/col/l3/fk;->w:Lcom/amap/api/col/l3/fg;

    if-nez p2, :cond_0

    new-instance p2, Lcom/amap/api/col/l3/fg;

    iget-object p3, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object p4, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p2, p3, p4}, Lcom/amap/api/col/l3/fg;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fk;->w:Lcom/amap/api/col/l3/fg;

    :cond_0
    iget-object p2, p0, Lcom/amap/api/col/l3/fk;->w:Lcom/amap/api/col/l3/fg;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p3

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/amap/api/col/l3/fg;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->w:Lcom/amap/api/col/l3/fg;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->y:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/fk;->x:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/fk;->x:Z

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/amap/api/col/l3/fk;->a(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->l:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/amap/api/col/l3/fk;->l:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/fk;->a(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->r:Lcom/amap/api/col/l3/ff;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/ff;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->r:Lcom/amap/api/col/l3/ff;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string p2, "\u672a\u627e\u5230\u76f8\u5173\u57ce\u5e02"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->i:Landroid/widget/AutoCompleteTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/fk;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    iget-object p1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amap/api/col/l3/fk;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onVerifyComplete()V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getOfflineMapProvinceList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v7}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lcom/amap/api/maps/offlinemap/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u9999\u6e2f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    invoke-virtual {v7}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    const-string v9, "\u6fb3\u95e8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "\u5168\u56fd\u6982\u8981\u56fe"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v8, :cond_3

    invoke-virtual {v4, v5, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v6, "\u57fa\u672c\u529f\u80fd\u5305+\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    invoke-interface {v4, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v4, "\u76f4\u8f96\u5e02"

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;-><init>()V

    const-string v1, "\u6e2f\u6fb3"

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/Province;->setProvinceName(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->setCityList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/amap/api/col/l3/fe;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v4, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v3, v4}, Lcom/amap/api/col/l3/fe;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->p:Lcom/amap/api/col/l3/fe;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/amap/api/col/l3/ff;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v3, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/l3/ff;-><init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->r:Lcom/amap/api/col/l3/ff;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/amap/api/col/l3/fd;

    iget-object v1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    iget-object v2, p0, Lcom/amap/api/col/l3/fk;->o:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/fd;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/fk;->q:Lcom/amap/api/col/l3/fd;

    iget-object v1, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/fk;->d:Lcom/amap/api/maps/offlinemap/DownLoadListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
