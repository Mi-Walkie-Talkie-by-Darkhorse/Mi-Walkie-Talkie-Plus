.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$5;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
