.class public Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBtEarGuide2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x0

    const/high16 v3, 0x420c0000    # 35.0f

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02006c

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020075

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f090217

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0900a1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f100131 -> :sswitch_1
        0x7f100132 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;->c()V

    return-void
.end method
