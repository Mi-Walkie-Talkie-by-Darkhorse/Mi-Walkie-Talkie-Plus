.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;
.source "GroupJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter",
        "<",
        "Lcom/ifengyu/im/DB/entity/GroupEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const v0, 0x7f1001b3

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    const v0, 0x7f1001b4

    const-string v1, "ID:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;

    return-void
.end method

.method public bridge synthetic bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    check-cast p3, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->bindData(Lcom/ifengyu/intercom/ui/imui/base/a;ILcom/ifengyu/im/DB/entity/GroupEntity;)V

    return-void
.end method

.method public getItemLayoutId(I)I
    .locals 1

    const v0, 0x7f04005a

    return v0
.end method
