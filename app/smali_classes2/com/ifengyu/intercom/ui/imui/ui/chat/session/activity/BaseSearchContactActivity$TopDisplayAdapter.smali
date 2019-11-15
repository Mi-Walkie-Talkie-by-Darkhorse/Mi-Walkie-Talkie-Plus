.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "BaseSearchContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopDisplayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter",
        "<",
        "Lcom/ifengyu/im/DB/entity/UserEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPlaceholder:Lcom/bumptech/glide/request/d;

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->mPlaceholder:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 3

    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object v2, p3, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->mPlaceholder:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    return-void
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f04005b

    return v0
.end method
