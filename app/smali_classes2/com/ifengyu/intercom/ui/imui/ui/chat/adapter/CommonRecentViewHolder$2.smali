.class Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$2;
.super Lcom/ifengyu/library/widget/groupicon/a;
.source "CommonRecentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/groupicon/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    invoke-direct {p0}, Lcom/ifengyu/library/widget/groupicon/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/library/widget/groupicon/a;->generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$2;->onDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method protected onDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7f020172

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/d;->a(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/d;->b(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    goto :goto_0
.end method
