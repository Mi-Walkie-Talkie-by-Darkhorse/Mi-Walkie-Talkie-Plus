.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "SealSharkMcuUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:Z

.field private s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field x:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->x:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    return p1
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->U()V

    return-void
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    return-object p0
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->W(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    return-object p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->w:I

    return p0
.end method

.method static synthetic N(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->w:I

    return p1
.end method

.method static synthetic O(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method private S()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

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

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f1101be

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f1103c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private T()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09048f

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09052f

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090373

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    const v0, 0x7f090448

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    const v0, 0x7f090279

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f090500

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0904ef

    .line 8
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 9
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x1000000

    .line 14
    div-int v3, v0, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10000

    .line 16
    div-int v5, v0, v4

    rem-int/lit16 v5, v5, 0x100

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    rem-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->r:Z

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f11040b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->u:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v5, "mcu_update_action_from_main"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->V()V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->t:Ljava/lang/String;

    const-string v5, "seal"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->n:Landroid/widget/TextView;

    const v4, 0x7f110316

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->t:Ljava/lang/String;

    const-string v5, "shark"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v1, :cond_7

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v4, 0x7f110106

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    const v4, 0x7f080127

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_7

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v4, 0x7f110107

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private U()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    const/4 v1, 0x1

    const v2, 0x7f080123

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const v5, 0x7f110417

    const v6, 0x7f080124

    const v7, 0x7f080125

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

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f110414

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11040b

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f110412

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f1100c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101ec

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f110419

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11041a

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f11041b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    goto :goto_0

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f110289

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->j:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->k:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f11028a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private V()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

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

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->U()V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->W(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->R(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->R(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private W(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->v:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->x:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;)V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->U()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->b()Lcom/ifengyu/intercom/o/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/o/b/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/o/b/b;

    check-cast v0, Lcom/ifengyu/intercom/o/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/o/b/a;->c()Lcom/ifengyu/intercom/o/d/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/o/d/c;->b(Lcom/ifengyu/intercom/o/c/a;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->S()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11043e

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v1, p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->S()V

    goto :goto_0

    .line 7
    :sswitch_2
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->q:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f110105

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->V()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900ba -> :sswitch_2
        0x7f09048e -> :sswitch_1
        0x7f09048f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->v:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_update_device_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->t:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_have_update"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->r:Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mcu_update_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->s:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->u:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->T()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->x:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    return-void
.end method
