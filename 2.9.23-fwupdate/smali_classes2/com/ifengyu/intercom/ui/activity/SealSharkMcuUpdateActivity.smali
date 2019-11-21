.class public Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealSharkMcuUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

.field private b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:I

.field private v:Z

.field private w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/update/sealshark/j;->a()Lcom/ifengyu/intercom/update/sealshark/j;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/ifengyu/intercom/update/sealshark/j;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    return-object v0
.end method

.method private c()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/high16 v4, 0x10000

    const/4 v5, 0x1

    const/4 v2, 0x0

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    const v0, 0x7f10015e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f100161

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f100162

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x1000000

    div-int v3, v1, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v3, v1, v4

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090233

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y:Ljava/lang/String;

    const-string v3, "mcu_update_action_from_main"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d()V

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v3, 0x7f0900a2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "seal"

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/TextView;

    const v3, 0x7f090183

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v1, "shark"

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    const v3, 0x7f0200e9

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v3, 0x7f0900a3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

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

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->f()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0900f2

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0901fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    const v5, 0x7f090239

    const v4, 0x7f0200e7

    const v2, 0x7f0200e6

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09023c

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f09023d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090101

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f09023b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090233

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e()V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->u:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09024d

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getInfo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v2, p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10015b -> :sswitch_2
        0x7f100162 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mcu_update_device_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mcu_have_update"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->v:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mcu_update_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->w:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    invoke-static {}, Lcom/ifengyu/intercom/update/sealshark/j;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method
