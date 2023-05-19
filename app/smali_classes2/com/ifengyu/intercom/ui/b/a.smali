.class public Lcom/ifengyu/intercom/ui/b/a;
.super Landroid/widget/BaseAdapter;
.source "BleDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/b/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/b/a;->d:I

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/b/a;->a:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/a;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    const p2, 0x7f010018

    .line 6
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/a;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/b/a;->d:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/b/a;->a(I)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/b/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004c

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/ifengyu/intercom/ui/b/a$a;

    invoke-direct {p3}, Lcom/ifengyu/intercom/ui/b/a$a;-><init>()V

    const v1, 0x7f0904ce

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f09010c

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->b:Landroid/view/View;

    const v1, 0x7f09026b

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->c:Landroid/widget/ImageView;

    const v1, 0x7f09026c

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->d:Landroid/widget/ImageView;

    const v1, 0x7f090151

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/b/a$a;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 12
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/b/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 13
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/b/a$a;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/b/a$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_1
    iget v2, p0, Lcom/ifengyu/intercom/ui/b/a;->d:I

    if-ne v2, p1, :cond_2

    .line 16
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->a:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 17
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/b/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->a:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 21
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 23
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/b/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-object p2
.end method
