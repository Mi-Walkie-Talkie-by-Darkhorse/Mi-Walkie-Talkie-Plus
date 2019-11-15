.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "GroupJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->lambda$showApplyJoinGroupDialog$1$GroupJoinActivity(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    const-string v0, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "\u5df2\u53d1\u51fa\u7533\u8bf7\uff0c\u7b49\u5f85\u7fa4\u4e3b\u5ba1\u6838"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    const-string v0, "\u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
