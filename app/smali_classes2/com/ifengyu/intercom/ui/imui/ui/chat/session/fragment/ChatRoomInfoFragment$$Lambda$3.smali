.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

.field private final arg$2:Lcom/ifengyu/library/widget/dialog/a$a;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$2:Lcom/ifengyu/library/widget/dialog/a$a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$2:Lcom/ifengyu/library/widget/dialog/a$a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->lambda$showMyNicknameInGroupDialog$3$ChatRoomInfoFragment(Lcom/ifengyu/library/widget/dialog/a$a;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
