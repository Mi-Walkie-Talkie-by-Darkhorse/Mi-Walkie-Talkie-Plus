.class public Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "UpdateMcuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/OnDownloadListener;
.implements Lcom/ifengyu/intercom/update/dolphin/l$a;


# static fields
.field public static a:Z


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/widget/TextView;

.field private C:I

.field private D:Ljava/lang/Runnable;

.field private E:Z

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

.field private c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field private d:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/ifengyu/intercom/update/dolphin/l;

.field private v:Z

.field private w:Z

.field private x:I

.field private final y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(II)V
    .locals 3

    const-string v0, "UpdateMcuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionMCU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----versionBLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_diff_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$5;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f090234

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f09023b

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10018f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Z

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->b()V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$1;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$3;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcu_language_type_english"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcu_language_type_chinese"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/update/dolphin/l;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Lcom/ifengyu/intercom/update/dolphin/l;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d()V

    return-void
.end method

.method private q()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09024d

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "versionName"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "info"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v3, "update_all_is_newest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09024c

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v2, p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    return-void
.end method

.method public a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UpdateMcuActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p2, v2, :cond_6

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:I

    :cond_1
    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p2, v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p2, v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "lang"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "en_us"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ah()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v2, "update_mcu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v2, "update_mcu_ble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v2, "update_diff_language"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:I

    if-le v0, v1, :cond_5

    const-string v0, "UpdateMcuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server mcu version code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:I

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->a(I)V

    const-string v0, "user_version_mcu"

    const-string v1, "version_mcu"

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    return-void

    :cond_6
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p2, v2, :cond_1

    const-string v2, "UpdateMcuActivity"

    const-string v3, "update faied,report state"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userId"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "userEmail"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->P()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "versionMcu"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "updateProgress"

    iget v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "brand"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "release"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user_firmware_upgrade"

    const-string v4, "firmware_upgrade_failed"

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:I

    goto/16 :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f090235

    if-nez p2, :cond_1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/ifengyu/intercom/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Z

    sget-boolean v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->f()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/u;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$4;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u$a;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->show()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d()V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->finish()V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->finish()V

    goto :goto_0

    :sswitch_3
    iput-boolean v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/l;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Lcom/ifengyu/intercom/update/dolphin/l;

    :cond_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->f()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_5
        0x7f10018c -> :sswitch_4
        0x7f100193 -> :sswitch_0
        0x7f100194 -> :sswitch_1
        0x7f100196 -> :sswitch_2
        0x7f100197 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f090233

    const/high16 v6, 0x10000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->setContentView(I)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100195

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    const v0, 0x7f100192

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->m()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->F:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "update_info_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MCU_SERVER_VERSION_CODE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_mcu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_diff_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100197

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Lcom/ifengyu/intercom/update/dolphin/l;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/l;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Lcom/ifengyu/intercom/update/dolphin/l;

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    const-string v0, "com.ifengyu.intercom.FORM_MAIN"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:Ljava/lang/String;

    const-string v1, "update_all_is_newest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f10018d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_8

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x1000000

    div-int v2, v0, v2

    rem-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v2, v0, v6

    rem-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const v0, 0x7f090231

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "UpdateMcuActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setVisibility(I)V

    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Lcom/ifengyu/intercom/update/dolphin/l;

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "UpdateMcuActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public receiveParamUpdateEvent(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Z

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$2;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
