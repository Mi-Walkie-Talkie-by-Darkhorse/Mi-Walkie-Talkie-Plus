.class public Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GoogleMapDownLoadedActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/adapter/k;


# instance fields
.field private A:[Ljava/io/File;

.field private B:Landroid/widget/LinearLayout;

.field private q:Lcom/ifengyu/intercom/greendao/dao/b;

.field private r:Landroidx/recyclerview/widget/RecyclerView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/ifengyu/intercom/ui/map/c/a;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:I

.field private y:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->z:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/map/offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->A:[Ljava/io/File;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$a;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)[Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->A:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object p0
.end method

.method private b(Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->delete(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/map/offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$d;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$d;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Ljava/io/File;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 5

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 15
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->y:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:I

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/map/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->z:Ljava/util/ArrayList;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r()V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09041a

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f0902f1

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f09040f

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f110148

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:Landroid/widget/ImageView;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;)V
    .locals 0

    .line 16
    iput p2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:I

    .line 17
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->y:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902ed

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->y:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    iget p3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object p3, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-direct {p1, p0, p3, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    .line 24
    :goto_0
    new-instance p2, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$b;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V

    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object p3, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-direct {p1, p0, p3, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    .line 27
    new-instance p2, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->b(Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Integer;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    :goto_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p3, v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 8
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->update(Ljava/lang/Object;)V

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 11
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/map/offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09041a

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->z:Ljava/util/ArrayList;

    const-string v1, "off_map_downloaded_names"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003e

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    const p1, 0x7f0902f0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/a;

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 14
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :goto_1
    new-instance p1, Lcom/ifengyu/intercom/ui/map/c/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/ifengyu/intercom/ui/map/c/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/ui/map/c/a;->a(Lcom/ifengyu/intercom/ui/adapter/k;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/map/c/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;)V

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$e;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
