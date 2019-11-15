.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "SwitchTalkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter",
        "<",
        "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private colorBlack:I

.field private colorBlack50:I

.field private colorOrange:I

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const v0, 0x7f0f0012

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorBlack:I

    const v0, 0x7f0f0019

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorBlack50:I

    const v0, 0x7f0f00a2

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorOrange:I

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 8

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v0, 0x7f1001b3

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v2

    const v0, 0x7f1001b4

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v3

    const v0, 0x7f10029e

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/a;->b(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u7fa4\u7ec4ID\uff1a%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    const-string v0, "\u5f53\u524d\u901a\u8bdd\u7fa4\u7ec4"

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorOrange:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorOrange:I

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorOrange:I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string v0, "\u70b9\u51fb\u5207\u6362"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorBlack:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorBlack50:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->colorBlack50:I

    goto :goto_3
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/imservice/entity/RecentInfo;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f0400ae

    return v0
.end method
