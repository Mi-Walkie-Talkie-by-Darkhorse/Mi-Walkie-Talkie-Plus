.class public Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;
.source "UpdateMcuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/update/dolphin/l$a;
.implements Lcom/ifengyu/intercom/network/OnDownloadListener;


# static fields
.field public static H:Z = false


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Landroid/widget/TextView;

.field private D:I

.field private E:Ljava/lang/Runnable;

.field private F:Z

.field private G:Ljava/lang/String;

.field private q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

.field private r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/ifengyu/intercom/update/dolphin/l;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    return-void
.end method

.method private A()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_english"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_chinese"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/update/dolphin/l;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:Lcom/ifengyu/intercom/update/dolphin/l;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "versionMCU:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "----versionBLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateMcuActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_mcu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_diff_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 3

    .line 62
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f11036e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 70
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f110367

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v0, :cond_0

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:I

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:I

    invoke-virtual {v2, v3, v1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->B:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0904ac

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    if-eqz v0, :cond_0

    .line 2
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

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11038d

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "versionName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v3, "update_all_is_newest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11038c

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private z()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:I

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->c()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->F:Z

    .line 7
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->E:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    .line 9
    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 16
    iput-object v2, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v3

    const-string v4, "UpdateMcuActivity"

    if-eqz v3, :cond_0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "--state-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    invoke-virtual {v3, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 20
    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 21
    sget-object v3, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const-string v5, "mobileRelease"

    const-string v6, "mobileModel"

    const-string v7, "mobileBrand"

    const-string v8, "mobileManufacturer"

    const-string v9, "upgradeProgress"

    const-string v10, "toVersionName"

    const-string v11, "toVersionCode"

    const-string v12, "fromVersionName"

    const-string v13, "fromVersionCode"

    const-string v14, "email"

    const-string v15, "userId"

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    sget-object v3, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v2, v3, :cond_2

    const-string v3, "update faied,report state"

    .line 23
    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v4

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result v4

    move-object/from16 v17, v14

    .line 28
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v4}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v4, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v4, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-static {v4}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    const-string v14, "Dolphin_Firmware_Upgrade_Failure"

    invoke-static {v4, v14, v3}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v16, v4

    move-object/from16 v17, v14

    .line 38
    :goto_1
    sget-object v3, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    const/16 v3, 0x64

    if-ne v1, v3, :cond_6

    .line 39
    sget-object v3, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v2, v3, :cond_6

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "lang"

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "en_us"

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v2

    if-nez v2, :cond_4

    .line 43
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-static {v2, v3, v14}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    .line 44
    :cond_4
    iget-object v2, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v3, "update_mcu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v3, "update_mcu_ble"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v3, "update_diff_language"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    :cond_5
    iget v2, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    if-le v2, v4, :cond_6

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server mcu version code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result v3

    .line 51
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v3}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget v3, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget v3, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-static {v3}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v3, "Dolphin_Firmware_Upgrade_Success"

    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    iget v1, v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->b(I)V

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->fwf:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :cond_1

    :cond_3
    const v0, 0x7f110368

    if-nez p2, :cond_0

    .line 10
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    sget-boolean p2, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:Z

    if-nez p2, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method













.method public b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    const v1, 0x7f110248

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z:I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 4
    :sswitch_1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110248

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a(Lcom/ifengyu/intercom/ui/widget/dialog/t$a;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v0, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z()V

    goto :goto_0

    .line 13
    :sswitch_2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y:Z

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_mcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    :cond_2
    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/l;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:Lcom/ifengyu/intercom/update/dolphin/l;

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z()V

    goto :goto_0

    .line 18
    :sswitch_3
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 20
    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x()V

    goto :goto_0

    .line 21
    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->y()V

    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a6 -> :sswitch_1
        0x7f09034f -> :sswitch_5
        0x7f090419 -> :sswitch_4
        0x7f0904ae -> :sswitch_3
        0x7f0904b3 -> :sswitch_2
        0x7f0904b6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0056

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->initUI()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    const p1, 0x7f09034f

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->s:Landroid/view/View;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904b0

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    const p1, 0x7f0904b6

    .line 7
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    const p1, 0x7f0900a6

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    const p1, 0x7f0904b2

    .line 9
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    const p1, 0x7f0904b5

    .line 10
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    const p1, 0x7f0904b7

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:Landroid/widget/TextView;

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w()V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->k()I

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "update_info_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "MCU_SERVER_VERSION_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->D:I

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v1, "update_mcu_ble"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f090419

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v2, "update_mcu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v2, "update_diff_language"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->A:Ljava/lang/String;

    const-string v0, "update_all_is_newest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f0904ad

    .line 18
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->t:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result p1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_1

    const/16 v3, 0x56

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v3, 0x1000000

    .line 28
    div-int v3, p1, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10000

    .line 30
    div-int v5, p1, v4

    rem-int/lit16 v5, v5, 0x100

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    rem-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->G:Ljava/lang/String;

    const-string p1, "\n\n"

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const p1, 0x7f110364

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UpdateMcuActivity"

    invoke-static {v3, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->q:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0904af

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p1

    const-string v2, "versionName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const v2, 0x7f110366

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " V"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f0904ae

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904b3

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->v:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->u:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-eq p1, v1, :cond_4

    .line 50
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:Lcom/ifengyu/intercom/update/dolphin/l;

    if-nez p1, :cond_6

    .line 52
    :cond_5
    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/l;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:Lcom/ifengyu/intercom/update/dolphin/l;

    .line 53
    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.ifengyu.intercom.FORM_MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 55
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z()V

    goto :goto_2

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseUpdateActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->x:Lcom/ifengyu/intercom/update/dolphin/l;

    .line 6
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method public receiveParamUpdateEvent(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->F:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->F:Z

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
