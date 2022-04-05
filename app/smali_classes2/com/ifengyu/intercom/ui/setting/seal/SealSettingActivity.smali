.class public Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

.field private C:Lcom/ifengyu/intercom/ui/widget/dialog/z;

.field private D:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;

.field private E:I

.field private F:Ljava/lang/Runnable;

.field private G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private H:Landroid/graphics/Typeface;

.field private I:I

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/CheckBox;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/LinearLayout;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:I

    return-void
.end method

.method private A()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1102ed

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private C()V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f110285

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08013e

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$j;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->d(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private D()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a(Lcom/ifengyu/intercom/ui/widget/dialog/z$a;)Lcom/ifengyu/intercom/ui/widget/dialog/z;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E()V
    .locals 8

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0901ba

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:Landroid/widget/TextView;

    const v1, 0x7f090429

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f09022d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/LinearLayout;

    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f090196

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f090316

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090351

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901bd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902af

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090343

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->N:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->x()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

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

.method private F()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->c(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private G()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->E()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const-string v1, "High"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f11013b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const-string v1, "Medium"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f11013d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const-string v1, "Low"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f11013c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f11009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/e;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/z;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxFreq()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    const/4 v0, 0x4

    const v2, 0x7f110356

    const v3, 0x7f11029a

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result p1

    rem-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result p1

    rem-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->L:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v3, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->M:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "C%02d"

    invoke-static {p1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result p1

    rem-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result p1

    rem-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->L:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v3, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->M:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const p1, 0x7f0c013d

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:I

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0c0132

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0902d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0902da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->J:Landroid/widget/LinearLayout;

    const v0, 0x7f0902db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->L:Landroid/widget/TextView;

    const v0, 0x7f0902dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0131

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f09033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f09033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f090100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f090340

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->L:Landroid/widget/TextView;

    const v0, 0x7f090342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    const v0, 0x7f0903b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:I

    if-lez p2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f110326

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :pswitch_1
    const p1, 0x7f1102b0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :pswitch_2
    const p1, 0x7f110308

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const p1, 0x7f1100c9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->f(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(I)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    return p0
.end method

.method private e(I)V
    .locals 5

    const v0, 0x7f110285

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f08013e

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->c(I)V

    return-void
.end method

.method private f(I)V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110314

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f110313

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V

    const p1, 0x7f110021

    invoke-virtual {v0, v2, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method private x()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100d9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08013e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$g;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$h;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 4

    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110248

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const v2, 0x7f110089

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013e

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$k;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$k;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F()V

    return-void
.end method

.method private z()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f11009b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f11013c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const v3, 0x7f11013d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x7f11013b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const v3, 0x7f110093

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v2, 0x7f110065

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    const-string p1, "setting_walkie_name"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1102ef

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

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const p3, 0x7f110213

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object p2

    const p3, 0xea60

    mul-int p1, p1, p3

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C()V

    goto :goto_0

    :sswitch_5
    const-class p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_6
    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_7
    const-class p1, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "bt_ear_had_conn_to"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1100c9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y()V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A()V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z()V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090074 -> :sswitch_c
        0x7f0900ae -> :sswitch_b
        0x7f09011c -> :sswitch_a
        0x7f09011f -> :sswitch_9
        0x7f0901b9 -> :sswitch_8
        0x7f0901bd -> :sswitch_7
        0x7f0901e3 -> :sswitch_6
        0x7f0902af -> :sswitch_5
        0x7f090315 -> :sswitch_4
        0x7f090343 -> :sswitch_3
        0x7f090351 -> :sswitch_2
        0x7f0903b0 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004b

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E()V

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$c;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SealSettingActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c()V

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$l;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->N:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->e0()Z

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

    const-string v0, "SealSettingActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveBtEarConnectStateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$f;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic w()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    return-void
.end method
