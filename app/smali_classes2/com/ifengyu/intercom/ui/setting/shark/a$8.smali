.class Lcom/ifengyu/intercom/ui/setting/shark/a$8;
.super Ljava/lang/Object;
.source "SharkInsertChannelDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/shark/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "InsertChannelDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->h(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d()[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->h(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string v0, "InsertChannelDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged:s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string v0, "InsertChannelDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged:s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
