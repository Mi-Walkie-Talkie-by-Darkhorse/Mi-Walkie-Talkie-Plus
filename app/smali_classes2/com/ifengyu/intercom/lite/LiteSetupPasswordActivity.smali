.class public Lcom/ifengyu/intercom/lite/LiteSetupPasswordActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/lite/LiteSetupPasswordActivity;

    const-class v1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, 0x7f090229

    return v0
.end method
