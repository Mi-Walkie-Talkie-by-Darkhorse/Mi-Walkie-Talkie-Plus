.class Lcom/ifengyu/intercom/ui/setting/shark/a$b;
.super Ljava/lang/Object;
.source "SharkInsertChannelDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/shark/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v0, 0x9

    if-ne p3, v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v2, v0, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0xb

    if-ne p3, v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/setting/shark/a;->h(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/widget/EditText;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a([Landroid/widget/EditText;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/String;)I

    move-result v1

    const-string v2, "InsertChannelDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x8954400

    if-lt v1, v2, :cond_8

    const v2, 0x8d24d00

    if-le v1, v2, :cond_9

    :cond_8
    const v2, 0x19a14780

    if-lt v1, v2, :cond_0

    const v2, 0x1a39de00

    if-gt v1, v2, :cond_0

    :cond_9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->i(Lcom/ifengyu/intercom/ui/setting/shark/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->j(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->j(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a$c;->a(Ljava/lang/String;)V

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->dismiss()V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->j(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/a;->j(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a$c;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    if-eq p3, v0, :cond_d

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x8

    if-eq p3, v0, :cond_d

    const/4 v0, 0x3

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a([Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p3, :cond_d

    const/4 v0, 0x1

    if-eq p3, v0, :cond_d

    const/4 v0, 0x3

    if-eq p3, v0, :cond_d

    const/4 v0, 0x4

    if-eq p3, v0, :cond_d

    const/4 v0, 0x5

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a([Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_15
    const/16 v0, 0xa

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a([Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_18
    const/16 v0, 0xa

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a([Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const/16 v0, 0xa

    if-eq p3, v0, :cond_d

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0xa

    if-eq p3, v0, :cond_d

    const/4 v0, 0x7

    if-eq p3, v0, :cond_d

    const/4 v0, 0x4

    if-eq p3, v0, :cond_d

    if-eqz p3, :cond_d

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/shark/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
