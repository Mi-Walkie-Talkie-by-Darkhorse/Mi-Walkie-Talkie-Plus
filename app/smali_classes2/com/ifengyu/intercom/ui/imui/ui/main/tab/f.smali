.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

.field private final b:Lcom/ifengyu/im/imservice/entity/InviteNotify;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/InviteNotify;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;->b:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;->b:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/InviteNotify;Landroid/content/DialogInterface;I)V

    return-void
.end method
