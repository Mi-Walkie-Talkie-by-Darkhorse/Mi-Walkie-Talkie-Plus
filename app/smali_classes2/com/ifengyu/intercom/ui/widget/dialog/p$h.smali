.class Lcom/ifengyu/intercom/ui/widget/dialog/p$h;
.super Ljava/lang/Object;
.source "InsertChannelDialog400To470.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/p;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterTextChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsertChannelDialog"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->i(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->i(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->i(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->i(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 34
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 35
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->i(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    .line 41
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->h(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    .line 42
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->g(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    .line 43
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->e(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    .line 44
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->f(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    .line 45
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 46
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->j(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->d()[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 48
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$h;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->j(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeTextChanged:s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InsertChannelDialog"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextChanged:s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InsertChannelDialog"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
