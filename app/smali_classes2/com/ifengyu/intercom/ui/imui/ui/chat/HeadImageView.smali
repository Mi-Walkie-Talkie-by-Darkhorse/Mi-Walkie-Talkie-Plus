.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/HeadImageView;
.super Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;
.source "HeadImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public loadBuddyAvatar(Ljava/lang/Object;)V
    .locals 3

    const v2, 0x7f020172

    instance-of v0, p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/bumptech/glide/request/d;

    invoke-direct {v1}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/d;->a(I)Lcom/bumptech/glide/request/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/d;->b(I)Lcom/bumptech/glide/request/d;

    move-result-object v1

    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    :cond_1
    return-void
.end method
