.class public Lcom/ifengyu/intercom/ui/adapter/a;
.super Lcom/ifengyu/intercom/ui/baseui/c;
.source "BleDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/c<",
        "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/baseui/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/c;->b:Landroid/content/Context;

    const p2, 0x7f010018

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/a;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/baseui/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0063

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/ifengyu/intercom/ui/adapter/a$a;

    invoke-direct {p3}, Lcom/ifengyu/intercom/ui/adapter/a$a;-><init>()V

    const v1, 0x7f09046a

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0900e6

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    const v1, 0x7f09020b

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    const v1, 0x7f09020c

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    const v1, 0x7f09011b

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->e:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/adapter/a$a;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/c;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 12
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 13
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_1
    iget v2, p0, Lcom/ifengyu/intercom/ui/baseui/c;->d:I

    if-ne v2, p1, :cond_2

    .line 16
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 17
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 21
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 23
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-object p2
.end method
