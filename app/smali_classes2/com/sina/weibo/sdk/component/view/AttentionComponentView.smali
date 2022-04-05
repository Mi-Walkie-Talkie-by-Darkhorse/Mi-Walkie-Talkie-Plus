.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

.field private volatile b:Z

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "common_button_white.9.png"

    const-string v1, "common_button_white_highlighted.9.png"

    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x42

    invoke-static {v1, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v5, 0x1010079

    invoke-direct {p1, v1, v2, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v4}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Z)V

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b/a/a/d/g;->b(Landroid/content/Context;Ljava/lang/String;)Lb/b/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/d/g;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c()V

    new-instance v0, Lcom/sina/weibo/sdk/net/f;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->c(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->d(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_id"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->e(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "target_screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    const-string v2, "https://api.weibo.com/2/friendships/show.json"

    const-string v3, "GET"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    return-void
.end method

.method private a(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Following"

    const-string v3, "\u5df2\u5173\u6ce8"

    const-string v4, "\u5df2\u95dc\u6ce8"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "timeline_relationship_icon_attention.png"

    invoke-static {p1, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Follow"

    const-string v3, "\u5173\u6ce8"

    const-string v4, "\u95dc\u6ce8"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/16 v1, -0x7e00

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "timeline_relationship_icon_addattention.png"

    invoke-static {p1, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/k;-><init>(Landroid/content/Context;)V

    const-string v1, "http://widget.weibo.com/relationship/followsdk.php"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Follow"

    const-string v3, "\u5173\u6ce8"

    const-string v4, "\u95dc\u6ce8"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->d(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->f(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Lb/b/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->a(Lb/b/a/a/c/b;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->c(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->h(Ljava/lang/String;)V

    new-instance v1, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$c;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$c;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/k;->a(Lcom/sina/weibo/sdk/component/k$a;)V

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

.method static synthetic b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setAttentionParam(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)V
    .locals 1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)V

    :cond_0
    return-void
.end method
