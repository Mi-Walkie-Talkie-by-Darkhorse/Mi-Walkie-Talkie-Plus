.class public Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;
.super Landroid/widget/EditText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;,
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->c:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->c:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->c:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt p1, v1, :cond_1

    return p1

    :cond_1
    const-class v1, Landroid/text/style/ImageSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-eq p1, v3, :cond_2

    aget-object p1, v1, v2

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    :cond_2
    return p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$a;-><init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->b:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;->a()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$c;

    invoke-interface {v1, p1, p2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$c;->a(II)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setOnEnterListener(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->b:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$b;

    return-void
.end method

.method public setOnSelectionListener(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
