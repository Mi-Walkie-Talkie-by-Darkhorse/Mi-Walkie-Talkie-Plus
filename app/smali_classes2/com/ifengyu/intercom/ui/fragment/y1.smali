.class public Lcom/ifengyu/intercom/ui/fragment/y1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "UserAuthPermissionFragment.java"


# instance fields
.field private A:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private B:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private C:Landroid/view/View;

.field private z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->r0(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/login/LoginActivity;->N(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private h3()Landroid/text/SpannableString;
    .locals 11

    const v0, 0x7f110427

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110429

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110428

    .line 3
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/y1$c;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->A:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/ifengyu/intercom/ui/fragment/y1$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/y1;Landroid/view/View;IIII)V

    const v4, 0x7f0600d5

    .line 7
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    const v4, 0x7f0600d7

    .line 8
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->j(Z)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x11

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method private i3()Landroid/text/SpannableString;
    .locals 16

    move-object/from16 v7, p0

    const v0, 0x7f11042b

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f110436

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f11031d

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11031c

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v13, Lcom/ifengyu/intercom/ui/fragment/y1$a;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/fragment/y1;->z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/fragment/y1$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/y1;Landroid/view/View;IIII)V

    const v14, 0x7f0600d5

    .line 8
    invoke-static {v14}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    const v15, 0x7f0600d7

    .line 9
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 10
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v8, 0x11

    invoke-virtual {v12, v13, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v9, Lcom/ifengyu/intercom/ui/fragment/y1$b;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/fragment/y1;->z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/fragment/y1$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/y1;Landroid/view/View;IIII)V

    .line 12
    invoke-static {v14}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 13
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 14
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12, v9, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v12
.end method

.method private j3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    const v1, 0x7f0904b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    const v1, 0x7f0904b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->A:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    const v1, 0x7f0900cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->B:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    const v2, 0x7f090095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->z:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/y1;->i3()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->A:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->A:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/y1;->h3()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->B:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v3, Lcom/ifengyu/intercom/ui/fragment/m1;->a:Lcom/ifengyu/intercom/ui/fragment/m1;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/l1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/l1;-><init>(Lcom/ifengyu/intercom/ui/fragment/y1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/k1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/k1;-><init>(Lcom/ifengyu/intercom/ui/fragment/y1;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()V

    return-void
.end method

.method static synthetic k3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/y1;->g3()V

    return-void
.end method

.method private synthetic n3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/y1;->j3()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->C:Landroid/view/View;

    return-object v0
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/y1;->l3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/y1;->n3(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/y1;->B:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
