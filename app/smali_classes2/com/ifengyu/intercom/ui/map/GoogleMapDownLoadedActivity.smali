.class public Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GoogleMapDownLoadedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/adapter/k;
.implements Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;


# instance fields
.field private a:Lcom/ifengyu/intercom/greendao/dao/b;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/ifengyu/intercom/ui/map/a/a;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:I

.field private u:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:[Ljava/io/File;

.field private x:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mitalki/map/offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:[Ljava/io/File;

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;)Z
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->w:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object v0
.end method

.method private b(Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/greendao/dao/b;->delete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mitalki/map/offline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$4;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Ljava/io/File;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f100116

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->s:Landroid/widget/ImageView;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:I

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/map/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;)V
    .locals 3

    const/4 v2, 0x0

    iput p2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->u:Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    :goto_1
    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002a8
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/a;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    if-eq v1, v3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->c(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->b(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/a/a;->notifyItemChanged(I)V

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$5;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v0

    const-string v2, ""

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/b;->update(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a/a;->notifyDataSetChanged()V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mitalki/map/offline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v0, "off_map_downloaded_names"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10015b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v4, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->a:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v4, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->a:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/greendao/dao/b;->update(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v4, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->a:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    new-instance v0, Lcom/ifengyu/intercom/ui/map/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/a/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/a/a;->a(Lcom/ifengyu/intercom/ui/adapter/k;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->q:Lcom/ifengyu/intercom/ui/map/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;)V

    return-void
.end method
