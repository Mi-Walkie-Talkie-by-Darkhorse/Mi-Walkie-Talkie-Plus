.class Lcom/ifengyu/intercom/ui/map/a$c;
.super Landroid/widget/BaseAdapter;
.source "GaoDeMapOperate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/ifengyu/intercom/ui/map/a;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/map/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$c;->b:Lcom/ifengyu/intercom/ui/map/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/a$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a$c;->b:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/map/a;->c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0c00ae

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/a$c;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/a/e;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/a/e;->b()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    const p3, 0x7f09019d

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f09019a

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    const-string v1, "null"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 8
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$c;->b:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/a;->c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08019e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p2
.end method