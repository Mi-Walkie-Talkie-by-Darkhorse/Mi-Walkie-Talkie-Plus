.class Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditBlogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v2, v3, :cond_3

    .line 5
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v3, v1}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v4, v2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a(I)I

    move-result v4

    if-le v3, v4, :cond_0

    move v5, v4

    move v4, v3

    move v3, v5

    :cond_0
    if-ne v3, v1, :cond_1

    if-eq v4, v2, :cond_2

    .line 7
    :cond_1
    invoke-static {v0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    if-eq v3, v4, :cond_3

    .line 8
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v2, v3, :cond_3

    .line 5
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v3, v1}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v4, v2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a(I)I

    move-result v4

    if-le v3, v4, :cond_0

    move v5, v4

    move v4, v3

    move v3, v5

    :cond_0
    if-ne v3, v1, :cond_1

    if-eq v4, v2, :cond_2

    .line 7
    :cond_1
    invoke-static {v0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    if-eq v3, v4, :cond_3

    .line 8
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;->a:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method
