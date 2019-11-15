.class public Lcom/ifengyu/intercom/ui/activity/AboutActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field private r:J

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v2, "com.ifengyu.intercom.log.LogCollectService"

    invoke-static {p0, v2}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f090211

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ifengyu/intercom/log/LogCollectService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->stopService(Landroid/content/Intent;)Z

    :goto_1
    iput-wide v8, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    iput v6, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    :cond_0
    :goto_2
    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    goto :goto_0

    :cond_1
    const v2, 0x7f090212

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ifengyu/intercom/log/LogCollectService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    iput-wide v8, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->r:J

    iput v6, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->s:I

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100091 -> :sswitch_0
        0x7f100092 -> :sswitch_1
        0x7f100095 -> :sswitch_2
        0x7f100098 -> :sswitch_3
        0x7f1000c3 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->setContentView(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f100098

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f100099

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090015

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100092

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09001e

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
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

    sget-object v0, Lcom/ifengyu/intercom/ui/activity/AboutActivity;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
