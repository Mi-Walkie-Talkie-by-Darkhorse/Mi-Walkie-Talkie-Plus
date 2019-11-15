.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/main/tab/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/ifengyu/im/imservice/entity/RecentInfo;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/i;->a:Lcom/ifengyu/im/imservice/entity/RecentInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/i;->a:Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-static {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/RecentInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
