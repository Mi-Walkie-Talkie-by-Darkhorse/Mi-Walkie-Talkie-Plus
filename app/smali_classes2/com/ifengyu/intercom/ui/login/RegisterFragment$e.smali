.class Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/login/RegisterFragment;->v3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->h3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Lcom/ifengyu/library/utils/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->h3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Lcom/ifengyu/library/utils/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/library/utils/e;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
