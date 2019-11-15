.class public Lcom/ifengyu/intercom/ui/adapter/a;
.super Lcom/ifengyu/intercom/ui/baseui/b;
.source "BleDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/b",
        "<",
        "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/baseui/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->b:Landroid/content/Context;

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04005f

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/a$a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/adapter/a$a;-><init>()V

    const v0, 0x7f1001c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const v0, 0x7f1001c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    const v0, 0x7f1001c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f1001c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f1001bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/a;->d:I

    if-ne v0, p1, :cond_3

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/adapter/a$a;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->a:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/adapter/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
