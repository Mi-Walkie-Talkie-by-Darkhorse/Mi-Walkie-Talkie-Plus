.class public Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field D:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

.field private q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

.field private r:Landroid/widget/FrameLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:I

.field private y:Z

.field private z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->D:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->C:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/update/sealshark/j;->a()Lcom/ifengyu/intercom/update/sealshark/j;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->D:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/ifengyu/intercom/update/sealshark/j;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->C:I

    return p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f110129

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110312

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private x()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904bf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090310

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    const v0, 0x7f0903d4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f090495

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f090484

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x1000000

    div-int v3, v0, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10000

    div-int v5, v0, v4

    rem-int/lit16 v5, v5, 0x100

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f110366

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v5, "mcu_update_action_from_main"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->A:Ljava/lang/String;

    const-string v5, "seal"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:Landroid/widget/TextView;

    const v4, 0x7f110282

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->A:Ljava/lang/String;

    const-string v5, "shark"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v4, 0x7f1100cb

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    const v4, 0x7f0800eb

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v4, 0x7f1100cc

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private y()V
    .locals 8

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    const/4 v1, 0x1

    const v2, 0x7f0800e7

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const v5, 0x7f11036c

    const v6, 0x7f0800e8

    const v7, 0x7f0800e9

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f110369

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110366

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f110367

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f11009c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11014c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f11036e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11036f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f110370

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f110207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/ImageView;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f110208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 5

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->fwf:Ljava/io/File;

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getSource()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y()V

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v0, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11038d

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w()V

    goto :goto_0

    :sswitch_2
    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f1100c9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a6 -> :sswitch_2
        0x7f090419 -> :sswitch_1
        0x7f09041a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004c

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->initUI()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_update_device_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_have_update"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_update_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->z:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->B:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->D:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    invoke-static {}, Lcom/ifengyu/intercom/update/sealshark/j;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onResume()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method
