.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/sina/weibo/sdk/a/b;


# direct methods
.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;)Lcom/sina/weibo/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$a;->e:Lcom/sina/weibo/sdk/a/b;

    return-object v0
.end method
