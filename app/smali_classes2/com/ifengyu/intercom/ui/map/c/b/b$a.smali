.class Lcom/ifengyu/intercom/ui/map/c/b/b$a;
.super Landroid/widget/BaseAdapter;
.source "OsmClusterOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/ui/map/c/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400a2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/ui/map/c/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    const v1, 0x7f100275

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100274

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
