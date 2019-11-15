.class Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;
.super Ljava/lang/Object;
.source "CommonRecentViewHolder.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->inflate(Lcom/ifengyu/library/widget/recyclerview/d/a;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

.field final synthetic val$data:Lcom/ifengyu/im/imservice/entity/RecentInfo;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;->val$data:Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;->val$data:Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/CommonRecentViewHolder;->tvUnread:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onMove(FF)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(FF)V

    return-void
.end method

.method public onUp()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f()V

    return-void
.end method
