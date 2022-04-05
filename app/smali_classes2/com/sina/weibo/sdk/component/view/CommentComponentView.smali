.class public Lcom/sina/weibo/sdk/component/view/CommentComponentView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;,
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->a(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b/a/a/d/g;->b(Landroid/content/Context;Ljava/lang/String;)Lb/b/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/d/g;->a()V

    new-instance v0, Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/k;-><init>(Landroid/content/Context;)V

    const-string v1, "http://widget.weibo.com/distribution/socail_comments_sdk.php"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Comment"

    const-string v3, "\u5fae\u535a\u70ed\u8bc4"

    const-string v4, "\u5fae\u535a\u71b1\u8a55"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->a(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->b(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->c(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->d(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->e(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Lb/b/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->a(Lb/b/a/a/c/b;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;->f(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/d;->a()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->b:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "sdk_weibo_logo.png"

    invoke-static {p1, v2}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Comment"

    const-string v6, "\u5fae\u535a\u70ed\u8bc4"

    const-string v7, "\u5fae\u535a\u71b1\u8a55"

    invoke-static {p1, v5, v6, v7}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, -0x7e00

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, p1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/sina/weibo/sdk/component/view/CommentComponentView$a;

    invoke-direct {p1, p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$a;-><init>(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a()V

    return-void
.end method


# virtual methods
.method public setCommentParam(Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$b;

    return-void
.end method
