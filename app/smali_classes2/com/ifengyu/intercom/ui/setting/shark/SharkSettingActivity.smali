.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Landroid/graphics/Typeface;

.field private C:I

.field private D:Landroid/widget/CheckBox;

.field private E:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/CheckBox;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/LinearLayout;

.field v:Landroid/widget/TextView;

.field private w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

.field private x:Lcom/ifengyu/intercom/ui/widget/dialog/z;

.field private y:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1100c9

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1102ed

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100c9

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private C()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f110285

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08013e

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->b(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f1100c9

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const v2, 0x7f110302

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013e

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->f()V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100c9

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private E()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$g;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a(Lcom/ifengyu/intercom/ui/widget/dialog/z$a;)Lcom/ifengyu/intercom/ui/widget/dialog/z;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private F()V
    .locals 8

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1100e4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090429

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f09022d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0900fd

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090075

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f09030e

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090144

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->D:Landroid/widget/CheckBox;

    const v0, 0x7f090316

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    const v0, 0x7f090351

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011c

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09030d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090143

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090315

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090074

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090411

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011f

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090343

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e3

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901bb

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->E:Landroid/view/View;

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->H()V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->G()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const v2, 0x7f110213

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private G()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->d(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->H()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f1102fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f1102fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/e;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    .line 9
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    .line 12
    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    if-nez v2, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 14
    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->D:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-ne v0, v4, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto/16 :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto/16 :goto_2

    :cond_3
    if-ne v0, v3, :cond_a

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    .line 27
    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto/16 :goto_2

    .line 30
    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const p1, 0x7f0c013d

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09040d

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09008a

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 35
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f090363

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 37
    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_6
    const v2, 0x7f1100de

    .line 38
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1100df

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$o;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$o;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    const v2, 0x7f1100dc

    .line 41
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1100dd

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$n;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$n;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 44
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    .line 47
    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_2

    .line 50
    :cond_9
    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    :cond_a
    :goto_2
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 8

    .line 51
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0132

    .line 52
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0902d6

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902d7

    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902da

    .line 55
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0902db

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0902dc

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0131

    .line 61
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09033b

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09033c

    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09033d

    .line 64
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090100

    .line 65
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f090340

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f090342

    .line 68
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v6

    invoke-static {v6}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v5

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f11029a

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v6

    invoke-static {v6}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110356

    new-array v2, v3, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903b0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$h;

    invoke-direct {v2, p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$h;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 78
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    return p1
.end method

.method private b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1100c9

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->H()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p0
.end method

.method private w()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100d9

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08013e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f080191

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$r;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$r;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$s;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$s;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100c9

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110248

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1100c9

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    const v2, 0x7f08013e

    const/4 v3, 0x1

    if-lez v0, :cond_2

    sget-object v4, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v4

    if-eq v0, v4, :cond_2

    const v0, 0x7f1100cd

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f080189

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 8
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$d;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const v0, 0x7f110089

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->G()V

    return-void
.end method

.method private y()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C:I

    const v2, 0x7f08013e

    const/4 v3, 0x1

    if-lez v0, :cond_0

    sget-object v4, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v4

    if-eq v0, v4, :cond_0

    const v0, 0x7f1100cd

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f080189

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$u;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const v0, 0x7f110285

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    .line 10
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->a(Z)V

    goto :goto_0

    :cond_2
    const v0, 0x7f1100c9

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f1102fe

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const v4, 0x7f1102fd

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    const v1, 0x7f110093

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;-><init>(Landroid/app/Activity;I)V

    .line 6
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/w;

    const v0, 0x7f1102fc

    .line 7
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/w;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$t;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$t;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v1, v6, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/w$c;)Lcom/ifengyu/intercom/ui/widget/dialog/w;

    .line 8
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->show()V

    goto :goto_1

    :cond_2
    const v0, 0x7f1100c9

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 13

    .line 79
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result v0

    const v1, 0x7f0902d7

    const v2, 0x7f0902d6

    const v3, 0x7f0c0130

    const v4, 0x7f090341

    const v5, 0x7f09033f

    const v6, 0x7f09033e

    const v7, 0x7f0c012f

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 83
    iget-object v11, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v11

    invoke-static {v11}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 89
    iget-object v12, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v12, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v12

    invoke-static {v12}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v10

    invoke-static {v10}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f090145

    .line 94
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 95
    new-instance v9, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$i;

    invoke-direct {v9, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$i;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    invoke-static {p0, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090142

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 112
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$j;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$j;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 8

    const v0, 0x7f0c0130

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902d6

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902d7

    .line 8
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9
    iget-object v7, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v7

    invoke-static {v7}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090145

    .line 12
    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    .line 13
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$l;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$l;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 18
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c012f

    .line 20
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09033e

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09033f

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090341

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 24
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090142

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 30
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$m;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$m;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 32
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    const-string p1, "setting_walkie_name"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1102ef

    .line 4
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p2, 0x7f110375

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    const/4 p1, 0x3

    const-string p2, "setting_auto_send_location_space_time"

    .line 5
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const p3, 0x7f110213

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object p2

    const p3, 0xea60

    mul-int p1, p1, p3

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;J)V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->D()V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->E()V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->C()V

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z()V

    goto :goto_0

    :sswitch_6
    const/4 p1, 0x4

    .line 8
    invoke-static {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 9
    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y()V

    goto :goto_0

    .line 10
    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x()V

    goto :goto_0

    .line 11
    :sswitch_9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A()V

    goto :goto_0

    .line 12
    :sswitch_a
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->B()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090074 -> :sswitch_a
        0x7f09011c -> :sswitch_9
        0x7f09011f -> :sswitch_8
        0x7f090143 -> :sswitch_7
        0x7f0901e3 -> :sswitch_6
        0x7f09030d -> :sswitch_5
        0x7f090315 -> :sswitch_4
        0x7f090343 -> :sswitch_3
        0x7f090351 -> :sswitch_2
        0x7f090411 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0053

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->F()V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$k;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SharkSettingActivity"

    const-string v1, "onNewIntent"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->E:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "SharkSettingActivity"

    const-string v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SharkSettingActivity"

    const-string v1, "receiveChannelStateOperateResp"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$k;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SharkSettingActivity"

    const-string v1, "receiveParamResponse"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$q;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$q;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
