.class public Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "UserAuthPermissionActivity.java"


# instance fields
.field private q:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private r:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private s:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private t:Lcom/ifengyu/intercom/g/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->t:Lcom/ifengyu/intercom/g/e/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/e/f;->a()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->c(Z)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->B()V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Lcom/ifengyu/intercom/g/e/f;)Lcom/ifengyu/intercom/g/e/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->t:Lcom/ifengyu/intercom/g/e/f;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->h(Z)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->w()V

    return-void
.end method

.method private init()V
    .locals 4

    const v0, 0x7f0c0057

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    const v0, 0x7f090459

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->q:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v0, 0x7f090458

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->r:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v0, 0x7f0900bb

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->s:Landroidx/appcompat/widget/AppCompatCheckBox;

    const v0, 0x7f09008e

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f09008f

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->q:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->q:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->y()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->r:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->r:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->x()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->s:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v3, Lcom/ifengyu/intercom/ui/h;->a:Lcom/ifengyu/intercom/ui/h;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    new-instance v2, Lcom/ifengyu/intercom/ui/i;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/i;-><init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/ui/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/j;-><init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->z()V

    return-void
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private x()Landroid/text/SpannableString;
    .locals 11

    const v0, 0x7f11037c

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101c1

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11037d

    .line 3
    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

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
    new-instance v2, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$c;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->r:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$c;-><init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Landroid/view/View;IIII)V

    const v4, 0x7f0600c3

    .line 7
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->a(I)V

    const v4, 0x7f0600c5

    .line 8
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->b(I)V

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

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

.method private y()Landroid/text/SpannableString;
    .locals 11

    const v0, 0x7f110382

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101c2

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v10, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$b;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->q:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$b;-><init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Landroid/view/View;IIII)V

    const v3, 0x7f0600c3

    .line 6
    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->a(I)V

    const v3, 0x7f0600c5

    .line 7
    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->b(I)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private z()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;-><init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;)V

    const-string v1, "app"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->t:Lcom/ifengyu/intercom/g/e/f;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->A()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->h(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->V()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->B()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->init()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->s:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    return-void
.end method
