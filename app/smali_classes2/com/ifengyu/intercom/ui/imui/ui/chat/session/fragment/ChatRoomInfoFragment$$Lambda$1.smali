.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Z

.field private final arg$2:Lcom/ifengyu/im/DB/entity/UserEntity;


# direct methods
.method constructor <init>(ZLcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;->arg$1:Z

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;->arg$2:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;->arg$1:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$$Lambda$1;->arg$2:Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-static {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->lambda$showUserInfoDialog$1$ChatRoomInfoFragment(ZLcom/ifengyu/im/DB/entity/UserEntity;Landroid/content/DialogInterface;I)V

    return-void
.end method
